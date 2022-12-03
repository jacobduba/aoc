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
        String elfHand = input[0];
        String yourHand = input[2];
        if (yourHand == "X") points += 1;
        if (yourHand == "Y") points += 2;
        if (yourHand == "Z") points += 3;

        if (elfHand == "A" && yourHand == "X") points += 3;
        if (elfHand == "B" && yourHand == "Y") points += 3;
        if (elfHand == "C" && yourHand == "Z") points += 3;

        if (elfHand == "A" && yourHand == "Y")
          points += 6;
        else if (elfHand == "B" && yourHand == "Z")
          points += 6;
        else if (elfHand == "C" && yourHand == "X") points += 6;
      }
    }
  }
}
