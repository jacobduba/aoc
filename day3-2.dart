import 'dart:io';

String priority = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

void main() {
  int points = 0;

  while (true) {
    List<String> input = List.filled(3, "");
    input[0] = stdin.readLineSync()!;
    input[1] = stdin.readLineSync()!;
    input[2] = stdin.readLineSync()!;

    if (input[0].isEmpty) {
      print(points);
      break;
    } else {
      points += returnSame(input);
    }
  }
}

int returnSame(List<String> input) {
  Map<int, int> map = new Map<int, int>();
  for (int i = 0; i < input[0].length; i++) {
    map[priority.indexOf(input[0][i])] = 1;
  }
  for (int i = 0; i < input[1].length; i++) {
    int cur = priority.indexOf(input[1][i]);
    if (map.containsKey(cur)) {
      map[cur] = 2;
    }
  }
  for (int i = 0; i < input[2].length; i++) {
    int cur = priority.indexOf(input[2][i]);
    if (cur > 0 && map[cur] == 2) {
      return cur;
    }
  }
  return -1;
}
