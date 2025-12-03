int findMatches(String range) {
  final exp = RegExp(r'^(\d+)\1$');
  final rangeList = range.split('-');
  int total = 0;
  for (
    var i = int.parse(rangeList.first);
    i <= int.parse(rangeList.last);
    i++
  ) {
    final match = exp.firstMatch(i.toString());
    if (match != null) {
      print(match[0]);
      total += int.parse(match[0]!);
    }
  }
  return total;
}
