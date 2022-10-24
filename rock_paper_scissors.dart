import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('Rock, paper or scissors? (r/p/s)');

//Player's input
    String? answer = stdin.readLineSync();
    switch (answer) {
      case "r":
        {
          print("You Played: Rock");
        }
        break;
      case "p":
        {
          print("You Played: Paper");
        }
        break;
      case "s":
        {
          print("You Played: Scissors");
        }
        break;
      case "q":
        {
          print("You have Quit the game");
        }
        break;
      default: //if anything but r, p, or s
        print("Invalid Input");
    }

//list of AI moves
    var list = [
      'Rock',
      'Paper',
      'Scissors',
    ];

// generates a new Random object
    final _random = new Random();
    String aiMove = list[_random.nextInt(list.length)];
    print('AI Played: $aiMove');

//determine a winner
    if (answer == "r" && aiMove == 'Rock') {
      print('ITS A TIE');
    } else if (answer == 'r' && aiMove == 'Paper') {
      print("YOU LOSE");
    } else if (answer == 'r' && aiMove == 'Scissors') {
      print("YOU WIN");
    } else if (answer == "p" && aiMove == 'Rock') {
      print('YOU WIN');
    } else if (answer == 'p' && aiMove == 'Paper') {
      print("ITS A TIE");
    } else if (answer == 'p' && aiMove == 'Scissors') {
      print("YOU LOSE");
    } else if (answer == "s" && aiMove == 'Rock') {
      print('YOU LOSE');
    } else if (answer == 's' && aiMove == 'Paper') {
      print("YOU WIN");
    } else if (answer == 's' && aiMove == 'Scissors') {
      print("ITS A TIE");
    } else {
      print('Try again');
    }
    print('Game Over. Play Again ? y/n');
    String? finalAnswer = stdin.readLineSync();

    if (finalAnswer == 'n') break;
  }
}

