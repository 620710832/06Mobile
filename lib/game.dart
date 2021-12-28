import 'dart:math';

class Game {
  int? _answer;
  int _guessCount = 0;
  static List<int> myList = [];
  Game({int maxRandom: 100}) {
    var r = Random(maxRandom);
    _answer = r.nextInt(maxRandom)+1;
  }
  int get guessCount {
    return _guessCount;
  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      myList.add(guessCount);
      return 0;
    }
  }
  static void show(){
    print('U have played ${myList.length} game(s)');
    for (var i = 0; i < myList.length; i++) {
      print('➜ Game #${i+1}  ${myList[i]} guess(es)');
    }
  }
}