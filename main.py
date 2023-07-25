import os.path
import json
import time

import praw

SUBREDDIT = 'nosleep'
ID = os.getenv('REDDIT_ID')
SECRET = os.getenv('REDDIT_SECRET')
OUTPUT_DIR = 'out/'
POSTS_FILE = 'posts.json'

TIMESTAMP = time.time_ns() // 1_000_000

if not os.path.exists(OUTPUT_DIR):
    os.mkdir(OUTPUT_DIR)

# Create PRAW instance
reddit = praw.Reddit(
    client_id=ID,
    client_secret=SECRET,
    user_agent='scraper'
)

# Fetch hot and top posts
subreddit = reddit.subreddit(SUBREDDIT)
top_posts = subreddit.top(limit=None)
hot_posts = subreddit.hot(limit=None)

posts_map = {
    'timestamp': TIMESTAMP,
    'posts': []
}

post_generators = [top_posts, hot_posts]
for posts in post_generators:
    for post in posts:
        if post.stickied or not post.is_self:
            continue

        print(post.title)

        sanitized_title = post.title.replace(' ', '_')
        sanitized_title = ''.join(ch for ch in sanitized_title if (ch.isalnum() or ch == '_'))
        sanitized_content = post.selftext.encode('utf8')

        author_name = '[deleted]'
        if post.author is not None:
            author_name = post.author.name

        filename = OUTPUT_DIR + sanitized_title + '.md'
        with open(filename, 'wb') as f:
            f.write(sanitized_content)
            posts_map['posts'].append({
                'title': post.title,
                'author': author_name,
                'timestamp': int(post.created_utc),
                'permalink': post.permalink,
                'content': post.selftext
            })

with open(POSTS_FILE, 'w') as f:
    json.dump(posts_map, f)
