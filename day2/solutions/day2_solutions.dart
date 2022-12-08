import 'dart:math';

enum Shape {
  rock(value: 1),
  paper(value: 2),
  scissors(value: 3);

  const Shape({
    required this.value,
  });

  final int value;

  int fight(Shape other) {
    final score = (((this.value - other.value) + 1) % 3) * 3 +
        this.value; // == 0 ? 3 : 1 ? ;
    print(
        '${this.name} vs ${other.name}: ${score == 0 ? "Loss" : score == 3 ? "Draw" : "Win"} ($score points)');
    return score;
  }

  factory Shape.fromValue(int value) {
    if (value == 1) {
      return Shape.rock;
    } else if (value == 2) {
      return Shape.paper;
    } else {
      return Shape.scissors;
    }
  }
}

class Day2 {
  static int part1(List<String> input) {
    int inputToScore(String line) {
      int score = 0;
      var opponentChar = line.substring(0, 1);
      var myChar = line.substring(2, 3);
      final opponentShape = opponentChar == 'A'
          ? Shape.rock
          : opponentChar == 'B'
              ? Shape.paper
              : Shape.scissors;
      final myShape = myChar == 'X'
          ? Shape.rock
          : myChar == 'Y'
              ? Shape.paper
              : Shape.scissors;

      // score += myShape.value + 1;
      final fightScore = myShape.fight(opponentShape);
      score += fightScore;
      return score;
    }

    final score = input.map(inputToScore);

    return score.reduce((value, element) => value + element);
  }

  static int part2(List<String> input) {
    int inputToScore(String line) {
      int score = 0;
      var opponentChar = line.substring(0, 1);
      var myChar = line.substring(2, 3);
      final opponentShape = opponentChar == 'A'
          ? Shape.rock
          : opponentChar == 'B'
              ? Shape.paper
              : Shape.scissors;
      final myShape = myChar == 'X'
          ? Shape.fromValue((opponentShape.value - 2) % 3 + 1)
          : myChar == 'Y'
              ? Shape.fromValue((opponentShape.value - 1) % 3 + 1)
              : Shape.fromValue((opponentShape.value) % 3 + 1);

      // score += myShape.value + 1;
      final fightScore = myShape.fight(opponentShape);
      score += fightScore;
      return score;
    }

    final score = input.map(inputToScore);

    return score.reduce((value, element) => value + element);
  }
}
