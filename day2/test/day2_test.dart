import 'dart:io';

import 'package:test/test.dart';
import '../solutions/day2_solutions.dart';

void main() {
  final example1 = """
A Y
B X
C Z"""; // Paste example input for part here.

  final answerExample1 = 15; // Paste the expectation for part 1 here.

  /// Finish next line and uncomment it + the last test after finding the answer.
  final answerActual1 = 12645;

  final example2 = """
  
  """; // Paste example input for part 2 here.

  final answerExample2 = 12; // Paste the expectation for part 2 here.

  /// Finish next line and uncomment it + the last test after finding the answer.
  final answerActual2 = 42;
  test('Part 1 example returns $answerExample1', () {
    final result = Day2.part1(example1.split('\n'));
    expect(result, 15);
  });

  /// ** Uncomment this test after finding the solution for part 1. **
  test('Part 1 input returns $answerActual1', () async {
    final file = File("day2/input/day2_input.txt");
    final input = await file.readAsLines();
    final result = Day2.part1(input);

    expect(result, answerActual1);
  });

  test('Part 2 example returns $answerExample2', () async {
    final result = Day2.part2(example1.split('\n'));
    expect(result, answerExample2);
  });

  /// ** Uncomment this test after finding the solution for part 2. **
  test('Part 2 input returns $answerActual2', () async {
    final file = File("day2/input/day2_input.txt");
    final input = await file.readAsLines();
    final result = Day2.part2(input);

    expect(result, answerActual2);
  });
}
