/// This is a two-player Rock-Paper-Scissors game against a computer opponent.
/// The game keeps track of the user's and computer's scores, and displays the
/// winner of each round. The game continues until the user chooses to exit.
// Refactored Game:
import 'dart:io';
import 'dart:math';

void main() {
  int userPoints = 0;
  //  Initializes the user's score to zero.
  int computerPoints = 0;
  // Initializes the computer's score to zero.
  String userInput;
  // A variable to store the user's input as a string.
  int? userChoice;
  // A nullable integer variable to store the user's choice. The "?" indicates that it can be null.
  int computerChoice;
  // A variable to store the computer's choice.

  print("Welcome to Rock-Paper-Scissors Game");
  // Displays a welcome message to the user.
  do {
    // loop, which will run at least once and continue as long as the condition is true.
    print("Enter 1 for Rock, 2 for Paper, 3 for Scissors and 0 for Exit");
    // Prompts the user to enter their choice.
    userInput = stdin.readLineSync() ?? "";
    // Reads the user's input from the console. If stdin.readLineSync() returns null, it assigns an empty string to userInput.

    try {
      // Starts a try block to catch any exceptions that might occur when parsing the user's input.
      if (userInput.isNotEmpty) {
        // Checks if the user input is not empty.
        userChoice = int.parse(userInput);
        // Converts the user input string to an integer and assigns it to userChoice.
        if (userChoice == 0) {
          //  If the user enters 0, the game breaks out of the loop and exits.
          break;
        }
        if (userChoice >= 1 && userChoice <= 3) {
          // Checks if the user has entered a valid choice (1, 2, or 3).
          computerChoice = Random().nextInt(3) + 1;
          //  Generates a random number between 1 and 3 (inclusive) to represent the computer's choice. Random().nextInt(3) generates a number from 0 to 2, and adding 1 shifts it to the range 1 to 3.

          switch (computerChoice) {
            // A switch statement to display the computer's choice based on the random number generated.
            case 1:
              print("Computer played Rock");
              // If computerChoice is 1, it prints "Computer played Rock".
              break;
            case 2:
              print("Computer played Paper");
              // If computerChoice is 2, it prints "Computer played Paper".
              break;
            case 3:
              print("Computer played Scissors");
              //  If computerChoice is 3, it prints "Computer played Scissors".
              break;
          }

          if (userChoice == computerChoice) {
            // Checks if the user's choice and the computer's choice are the same. If so, it's a tie.
            print("It's a tie!");
          } else if ((userChoice == 1 && computerChoice == 3) ||
              (userChoice == 2 && computerChoice == 1) ||
              (userChoice == 3 && computerChoice == 2)) {
            print("You won!");
            userPoints++;
            // Checks if the user has won based on the rules of Rock-Paper-Scissors:
            // Rock (1) beats Scissors (3)
            // Paper (2) beats Rock (1)
            // Scissors (3) beats Paper (2)
            // If the user wins, it prints "You won!" and increments userPoints.
          } else {
            print("Computer won!");
            computerPoints++;
            // If none of the above conditions are met, the computer wins. It prints "Computer won!" and increments computerPoints.
          }

          print(
            "Your points: $userPoints, Computer points: $computerPoints",
          );
          // Displays the current score.
        } else {
          print("Enter a valid number from 1 to 3.");
          // If the user enters a number outside the range of 1 to 3, it prints an error message.
        }
      }
    } on FormatException {
      // Catches any exceptions that occur if the user input cannot be parsed into an integer, printing an error message.
      print("Enter a valid number from 1 to 3.");
    }
  } while (true);

  print(
    "Final Score - Your points: $userPoints, Computer points: $computerPoints",
  );
  // Displays the final score when the user chooses to exit.

  Future.delayed(
    const Duration(seconds: 3),
    () {
      print("Game will terminate now...");
      // Notifies the user that the game is ending.
      exit(0);
      // Waits for 3 seconds before exiting the program using exit(0).
    },
  );
  // Waits for 3 seconds before exiting the program using exit(0).
}
/// Unrefactored Game :

// import 'dart:io';
// import 'dart:math';

// void main() {
//   int userPoints = 0;
//   int computerPoints = 0;
//   String userInput;
//   int? userChoice;
//   int computerChoice;

//   print("Welcome to Rock-Paper-Scissors Game");
//   do {
//     print("Enter 1 for Rock, 2 for Paper, 3 for Scissors and 0 for Exit");
//     userInput = stdin.readLineSync()!;

//     try {
//       if (userInput.isNotEmpty && userInput != "") {
//         userChoice = int.parse(userInput);
//         computerChoice = Random().nextInt(3) + 1;

//         if (userChoice == 1 ||
//             userChoice == 2 ||
//             userChoice == 3 ||
//             userChoice == 0) {
//           if (userChoice == 1 && computerChoice == 2) {
//             print("Computer played Paper so\nComputer won");
//             computerPoints++;
//             print(
//               "Your points is ${userPoints} and computer points is ${computerPoints}",
//             );
//           } else if (userChoice == 1 && computerChoice == 3) {
//             print("Computer played Scissors so\nYou won");
//             userPoints++;
//             print(
//               "Your points is ${userPoints} and computer points is ${computerPoints}",
//             );
//           } else if (userChoice == 2 && computerChoice == 3) {
//             print("Computer played Scissors so\nYou won");
//             userPoints++;
//             print(
//               "Your points is ${userPoints} and computer points is ${computerPoints}",
//             );
//           } else if (userChoice == 2 && computerChoice == 1) {
//             print("Computer played Rock so\nYou won");
//             userPoints++;
//             print(
//               "Your points is ${userPoints} and computer points is ${computerPoints}",
//             );
//           } else if (userChoice == 3 && computerChoice == 1) {
//             print("Computer played Rock so\nComputer won");
//             computerPoints++;
//             print(
//               "Your points is ${userPoints} and computer points is ${computerPoints}",
//             );
//           } else if (userChoice == 3 && computerChoice == 2) {
//             print("Computer played Paper so\nYou won");
//             userPoints++;
//             print(
//               "Your points is ${userPoints} and computer points is ${computerPoints}",
//             );
//           } else if (userChoice == computerChoice) {
//             print("There is a tie");
//             computerPoints++;
//             userPoints++;
//             print(
//               "Your points is ${userPoints} and computer points is ${computerPoints}",
//             );
//           } else if (userChoice == 0) {
//             break;
//           }
//         }
//       } else {
//         print("Enter A Vaild Number From 1 To 3");
//       }
//     } on Exception {
//       print("Enter A Vaild Number From 1 To 3");
//     }
//   } while (true);
//   print(
//     "Your points is ${userPoints} and computer points is ${computerPoints}",
//   );
//   Future.delayed(
//       const Duration(
//         seconds: 3,
//       ), () {
//     print(
//       "Game Will Be terminated Now ...",
//     );
//     exit(0);
//   });
// }