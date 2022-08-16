import os.path

import praw

SUBREDDIT = 'nosleep'
ID = os.getenv('REDDIT_ID')
SECRET = os.getenv('REDDIT_SECRET')
OUTPUT_DIR = 'out/'

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

# Go through all hot posts
for post in top_posts + hot_posts:
    if post.stickied or not post.is_self:
        continue

    print(post.title)

    sanitized_title = post.title.replace(' ', '_')
    sanitized_title = ''.join(ch for ch in sanitized_title if (ch.isalnum() or ch == '_'))
    sanitized_content = post.selftext.encode('utf8')

    with open(OUTPUT_DIR + sanitized_title + '.md', 'wb') as f:
        f.write(sanitized_content)
