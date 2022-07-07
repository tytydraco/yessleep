// Basic dart program to generate a file index.

import 'dart:io';

class ListItem {
  final String name;
  final String url;

  ListItem(this.name, this.url);

  @override
  String toString() {
    return '<li><a href="$url">$name</a></li>';
  }
}

class Index {
  final String title;

  Index(this.title);

  List<ListItem> _listItems = [];

  void addListItem(ListItem listItem) => _listItems.add(listItem);

  String _listItemsString() {
    final sortedListItems = List<ListItem>.from(_listItems)
      ..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    final listItemStrings = sortedListItems.map((e) => e.toString()).toList();
    return listItemStrings.join('\n');
  }

  @override
  String toString() {
    return '''
<html>
<body>
<h1>$title</h1>
<p>file count: ${_listItems.length}</p>
<p>
${_listItemsString()}
</p>
<p>
built by <a href="https://www.github.com/tytydraco">tytydraco</a> @ github.com
<br />
project: <a href="https://www.github.com/tytydraco/yessleep">yessleep</a>
</p>
</body>
</html>''';
  }
}

void main() {
  final indexFile = File('index.html');
  final index = Index('r/nosleep archive');

  for (FileSystemEntity file in Directory('out').listSync()) {
    final path = file.path;
    final name = path
        .replaceAll('out/', '')
        .replaceAll('.md', '')
        .replaceAll('_', ' ')
        .trim();
    index.addListItem(ListItem(name, path));
    stdout.writeln('[ADDED]: $name');
  }

  indexFile.writeAsStringSync(index.toString());
}
