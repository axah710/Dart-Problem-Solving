
import 'dart:io';
/// This is the main entry point of the program. It prompts the user to enter a number,
/// and then calculates and prints the divisors of that number.
///
/// The program starts by printing "Program Start", then waits for 1 second before
/// prompting the user to enter a number. The user is prompted to enter a valid
/// integer greater than 1. Once a valid input is received, the program finds all
/// the divisors of the number and prints them to the console. After 3 seconds,
/// the program prints "Program End" and exits.
main() async {
  print("Program Start");
  await Future.delayed(
    Duration(seconds: 1),
    () async {
      String? userInput;
      int? userNum;
      List<int> numbers;
      do {
        do {
          numbers = [];
          stdout.write("Add A Number: ");
          userInput = stdin.readLineSync();
        } while (userInput!.isEmpty);
        // Explanation: This nested do-while loop ensures that the user
        //provides a non-empty input. stdout.write prompts the user to enter
        // a number, and stdin.readLineSync reads the input from the console.
        // The input is stored in userInput.

        try {
          userNum = int.parse(userInput);
          if (!(userNum <= 1)) {
            // Explanation: This checks if userNum is greater than 1. If not,
            // the user is prompted again for a valid input.
            for (int i = 1; i < userNum; i++) {
              if (userNum % i == 0) {
                numbers.add(i);
              }
            }
            // Explanation: This for loop finds all divisors of userNum
            //(numbers that evenly divide userNum) and adds them to the
            // numbers list.
          } else {
            print("Add A Vaild Input More Than 1");
          }
        } on Exception {
          print("Add A Vaild Integer Number Input");
        }
        // Explanation: If parsing userInput as an integer fails (due to an
        //invalid input), it catches the exception and prompts the user to
        //provide a valid integer input.
      } while (!(userNum is int) || userNum <= 1);
      // xplanation: The outer do-while loop ensures that the user input is a
      //valid integer greater than 1. If not, it continues prompting the user.
      print("Divisors of $userNum are: $numbers");
      numbers.clear();
    },
  );

  Future.delayed(
    Duration(seconds: 3),
    () {
      print("Program End");
      exit(0);
    },
  );
  // Explanation: This introduces another delay of 3 seconds before printing
  //"Program End" to the console and exiting the program with exit(0).
}
