import 'dart:io';

const githubBaseUrl = 'https://github.com/tytydraco/yessleep/blob/main/';

class Index {
  List<String> listItems = [];

  void addPath(String name, String path) => listItems.add('* [$name]($path)');

  void sort() =>
      listItems.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
}

void main() {
  final index = Index();

  for (FileSystemEntity file in Directory('out').listSync()) {
    final path = file.path;
    final publicPath = '$githubBaseUrl$path';
    final name = path
        .replaceAll('out/', '')
        .replaceAll('.md', '')
        .replaceAll('_', ' ')
        .trim();
    index.addPath(name, publicPath);
  }

  index.sort();
  stdout.writeAll(index.listItems, '\n');
}
