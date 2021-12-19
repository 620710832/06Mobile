// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';
import 'game.dart';

void main() {
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');
  var iscor = false;
  playgame();
  do {
    stdout.write('Play again?(Y/N)');
    var input = stdin.readLineSync().toString();
    if (input == 'Y' || input == 'y') {
      print('╔════════════════════════════════════════');
      print('║            GUESS THE NUMBER            ');
      print('╟────────────────────────────────────────');
      playgame();

    }
    else if (input == 'N' || input == 'n') {
      print('║                 THE END                ');
      print('╚════════════════════════════════════════');
      iscor = true;
      break;
    }
    else {
      continue;
    }
  }while (!iscor);{
    print('Thank u');
  }
  }








