import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  print("\n============Welcome to the game============\n");
  final rng = Random();

  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;

      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random];

      print('\nYour Move: $playerMove');
      print('AI Move: $aiMove\n');

      if (playerMove == aiMove) {
        print("It's draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print('You win');
      } else {
        print('You lose');
      }
    } else if (input == 'q') {
      print("\nBye :)");
      break;
    } else {
      print('\nInvalid input :(');
    }
  }
}
