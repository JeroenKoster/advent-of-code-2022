import 'dart:io';

import 'package:test/test.dart';
import '../solutions/day{{day}}_solutions.dart';

void main() {

  final example1 = """
  
  """;  // Paste example input for part here.

  final answerExample1 = {{answerExample1}}; // Paste the expectation for part 1 here.

  /// Finish next line and uncomment it + the last test after finding the answer.
  // final answerActual1 = 
 
  final example2 = """
  
  """; // Paste example input for part 2 here.

  final answerExample2 = {{answerExample2}}; // Paste the expectation for part 2 here.

  /// Finish next line and uncomment it + the last test after finding the answer.
  // final answerActual2 = 
  test('Part 1 example returns $answerExample1', () {
    final result = Day{{day}}.part1(example1.split('\n'));
    expect(result, {{answerExample1}});
  });

  test('Part 1 input returns $answerActual1', () async {
    final file = File("day{{day}}/input/day{{day}}_input.txt");
    final input = await file.readAsLines();
    final result = Day{{day}}.part1(input);

    expect(result, {{answerActual1}});
  });

  /// ** Uncomment this test after finding the solution for part 1. **
  // test('Part 2 example returns $answerExample2', () async {
  //   final file = File("test/data/day1_input.txt");
  //   final input = await file.readAsLines();
  //   final result = Day{{day}}.part2(example2.split('\n'));

  //   expect(result, {{answerExample2}});
  // });

  /// ** Uncomment this test after finding the solution for part 2. **
  // test('Part 2 input returns $answerActual2', () async {
  //   final file = File("day{{day}}/input/day{{day}}_input.txt");
  //   final input = await file.readAsLines();
  //   final result = Day{{day}}.part1(input);

  //   expect(result, answerActual2);
  // });
}
