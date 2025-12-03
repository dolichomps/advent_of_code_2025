int password(List<String> inputList) {
  int location = 50;
  int count = 0;
  for (String input in inputList) {
    if (input.startsWith('R')) {
      final steps = int.parse(input.substring(1));
      for (var i = 0; i < steps; i++) {
        if (location == 0) {
          count++;
        }
        if (location == 99) {
          location = 0;
          continue;
        }
        location++;
      }
    } else if (input.startsWith('L')) {
      final steps = int.parse(input.substring(1));
      for (var i = 0; i < steps; i++) {
        if (location == 0) {
          location = 99;
          count++;
          continue;
        }
        location--;
      }
    }

    // if (location == 0) {
    //   count++;
    // }
  }

  return count;
}
