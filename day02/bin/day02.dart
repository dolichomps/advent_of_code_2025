import 'dart:io';

import 'package:day02/day02.dart' as day02;

void main(List<String> arguments) {
  final file = File('input.txt');
  final content = file.readAsStringSync();
  final idList = content.split(',').map((e) => e.trim()).toList();

  int total = 0;

  for (var id in idList) {
    total += day02.findMatches(id);
  }

  print('the total of the invalid ids is $total');
}
