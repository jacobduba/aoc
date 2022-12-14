import 'dart:io';

void main() {
  int count = 0;

  while (true) {
    String input = stdin.readLineSync()!;

    if (input == "") {
      print(count);
      break;
    }

    final List<String> split = input.split(",");
    final List<int> alpha = split[0].split("-").map((e) => int.parse(e)).toList();
    final List<int> beta = split[1].split("-").map((e) => int.parse(e)).toList();

    if (alpha[0] <= beta[0] && alpha[1] >= beta[1]) {
      count++;
    } else if (alpha[0] >= beta[0] && alpha[1] <= beta[1]) {
      count++;
    }
  }
}