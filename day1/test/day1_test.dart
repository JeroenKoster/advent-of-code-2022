import 'dart:io';

import 'package:test/test.dart';
import '../solutions/day1_solutions.dart';

void main() {
  final example1 = """
1000
2000
3000

4000

5000
6000

7000
8000
9000

10000
  """; // Paste example input for part here.

  final answerExample1 = 24000; // Paste the expectation for part 1 here.

  /// Finish next line and uncomment it + the last test after finding the answer.
  final answerActual1 = 66719;

  final example2 = """
  
  """; // Paste example input for part 2 here.

  final answerExample2 = 45000; // Paste the expectation for part 2 here.

  /// Finish next line and uncomment it + the last test after finding the answer.
  final answerActual2 = 1234;

  test('Part 1 example returns $answerExample1', () {
    final result = Day1.part1(example1.split('\n'));
    expect(result, 24000);
  });

  test('Part 1 input returns $answerActual1', () async {
    final file = File("day1/input/day1_input1.txt");
    final input = await file.readAsLines();
    final result = Day1.part1(input);

    expect(result, 66719);
  });

  test('Part 2 example returns $answerExample2', () async {
    final file = File("test/data/day1_input.txt");
    final input = await file.readAsLines();
    final result = Day1.part2(example2.split('\n'));

    expect(result, 45000);
  });

  /// Uncomment this test after finding the solution for part 2.
  // test('Part 2 input returns $answerActual2', () async {
  //   final file = File("day1/input/day1_input2.txt");
  //   final input = await file.readAsLines();
  //   final result = Day1.part1(input);

  //   expect(result, answerActual2);
  // });
}
