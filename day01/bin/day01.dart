import 'package:day01/day01.dart' as day01;
import 'dart:io';

void main(List<String> arguments) {
  final file = File('input.txt');
  final list = file.readAsLinesSync();

  print('the password is ${day01.password(list)}!');
}
