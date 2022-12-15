import 'dart:collection';
import 'dart:io';

void main() async {
  List<String> content = await File('day5.txt').readAsLinesSync();

  int i = 0;
  while (content[i] != "") {
    i++;
  }

  List<String> stacksIn = content.sublist(0, i);
  Iterable<List<String>> instructions = content.sublist(i + 1).map((e) => e.split(" ").toList());

  List<Queue<String>> stacks = generateStacks(stacksIn);
  moveStacks(stacks, instructions);

  for (Queue<String> stack in stacks) {
    stdout.write(stack.first);
  }
}

List<Queue<String>> generateStacks(List<String> input) {
  List<Queue<String>> stacks = List.empty(growable: true);
  int i = 1;
  while (i < input[0].length) {
    ListQueue<String> stack = new ListQueue<String>();
    
    int j = input.length - 2;

    while (j != -1 && input[j][i] != " ") {
      stack.addFirst(input[j][i]);
      j--;
    }

    stacks.add(stack);
    i += 4;
  }
  return stacks;
}

void moveStacks(List<Queue<String>> stacks, Iterable<List<String>> instructions) {
  for (List<String> instruction in instructions) {
    int amount = int.parse(instruction[1]); 
    int from = int.parse(instruction[3]) - 1; 
    int to = int.parse(instruction[5]) - 1;

    Queue<String> temp = new ListQueue<String>();
    for (int i = 0; i < amount; i++) {
      temp.addFirst(stacks[from].removeFirst());
    }
    for (int i = 0; i < amount; i++) {
      stacks[to].addFirst(temp.removeFirst());
    }
  }
}

