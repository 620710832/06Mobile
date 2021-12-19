import 'dart:math';
import 'dart:io';
class Game {
  int? answer;
  int count = 0;
  static const maxRandom = 100;

  Game() {
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
  }
  int doGuess(int num) {
    if (num > answer!) {
      count++;
      print('║ ➜ $num is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
      print(answer);
      return 1;
    }
    else if (num < answer!) {
      count++;
      print('║ ➜ $num is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
      print(answer);
      return -1;
    } else {
      count++;
      print('║ ➜ $num is CORRECT ❤, total guesses: $count');
      print('╟────────────────────────────────────────');
      return 0;
    }
  }

  int doCount() {
    return count;
  }

}playgame() {
  const maxRandom = 100;
  var game = Game();
  var isCorrect = false;
  do {
    stdout.write('║ Guess the number between 1 and $maxRandom: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }
    var play = game.doGuess(guess);
    play;
    game.doCount();
    if (play == 0) {
      isCorrect = true;
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}