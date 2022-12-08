import 'dart:math';

class Day1 {
  static int part1(List<String> input) {
    int maxSum = 0;
    int currentSum = 0;

    for (var element in input) {
      if (element.isEmpty) {
        maxSum = max(maxSum, currentSum);
        currentSum = 0;
      } else {
        currentSum += int.parse(element);
      }
    }
    return maxSum;
  }

  static int part2(List<String> input) {
    List<int> sums = [];
    int currentSum = 0;

    for (var element in input) {
      if (element.isEmpty) {
        sums.add(currentSum);
        currentSum = 0;
      } else {
        currentSum += int.parse(element);
      }
    }
    var sorted = sums..sort((a,b) => a > b ? -1 : 1);
    return sorted.take(3).reduce((value, element) => value + element);
  }
}