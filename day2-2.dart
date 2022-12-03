import 'dart:io';

void main() {
  int points = 0;

  while (true) {
    String? input = stdin.readLineSync();

    if (input != null) {
      if (input.isEmpty) {
        print(points);
        break;
      } else {
        int elfHand = input.codeUnitAt(0) - 65; // Unicode for A is 65
        String action = input[2];

        if (action == "X") {
          points += ((elfHand - 1) % 3 + 1) + 0;
        } else if (action == "Y") {
          points += (elfHand + 1) + 3;
        } else if (action == "Z") {
          points += ((elfHand + 1) % 3 + 1) + 6;
        }
      }
    }
  }
}
