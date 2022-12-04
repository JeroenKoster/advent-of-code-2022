import 'dart:io';
import 'dart:math';

import 'package:test/test.dart';
import '../day1.dart';

void main() {

  final example = """
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
""";
  test('Day 1 example returns 24000', () {
    final result = Day1.part1(example.split('\n'));
    expect(result, 24000);
  });

  test('Day 1 input returns 66719', () async {
    final file = File("test/data/day1_input.txt");
    final input = await file.readAsLines();
    final result = Day1.part1(input);

    expect(result, 66719);
  });

    test('Day 1 part 2 example returns 66719', () async {
    final file = File("test/data/day1_input.txt");
    final input = await file.readAsLines();
    final result = Day1.part2(example.split('\n'));

    expect(result, 45000);
  });
}
