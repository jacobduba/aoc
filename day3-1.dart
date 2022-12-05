import 'dart:io';

String priority = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

void main() {
  int points = 0;

  while (true) {
    String? input = stdin.readLineSync();

    if (input != null) {
      if (input.isEmpty) {
        print(points);
        break;
      } else {
        points += returnSame(input);
      }
    }
  }
}

int returnSame(String input) {
  Map<int, bool> map = new Map<int, bool>();
  for (int i = 0; i < input.length / 2; i++) {
    map[priority.indexOf(input[i])] = true;
  }
  for (int i = input.length ~/ 2; i < input.length; i++) {
    int cur = priority.indexOf(input[i]);
    if (map.containsKey(cur)) {
      return cur;
    }
  }
  return -1;
}
