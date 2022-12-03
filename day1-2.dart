import 'dart:io';

void main() {
  List elfs = List.empty(growable: true);
  int elf = 0;
  while (true) {
    String? input = stdin.readLineSync();

    if (input != null) {
      if (input.isEmpty) {
        if (elf == 0) {
          elfs.sort((a, b) => b - a);
          num sum = 0;
          for (int i = 0; i < 3; i++) {
            sum += elfs[i];
          }
          print(sum);
          break;
        } else {
          elfs.add(elf);
          elf = 0;
        }
      } else {
        elf += int.parse(input);
      }
    }
  }
}
