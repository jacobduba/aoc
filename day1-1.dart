import 'dart:io';

void main() {
  int largest = 0;
  int elf = 0;
  while (true) {
    String? input = stdin.readLineSync();

    if (input != null) {
      if (input.isEmpty) {
        if (elf == 0) {
          print(largest);
          break;
        } else {
          if (elf > largest) largest = elf;
          elf = 0;
        }
      } else {
        elf += int.parse(input);
      }
    }
  }
}
