import 'dart:io';

/// Entry point that calls the function to check user input.
void main() => checkUserInputOddOrEven();

/// Defines a function to handle user input.
void checkUserInputOddOrEven() {
  // Declares a nullable integer for user input.

  int? userInputNumber;
  // Loop until a valid number is entered.

  while (userInputNumber == null) {
    try {
      // Prompts the user to enter a number.

      print("Enter the number: ");
      // Reads and parses the user input .

      userInputNumber = int.parse(stdin.readLineSync()!);
      //Prints whether the number is even or odd.
      userInputNumber.isEven ? print("Number is Even") : print("Number is Odd");
    }

    // Catches and handles invalid input errors.

    on FormatException {
      // Notifies the user of invalid input.
      print("Invalid input! Please enter a valid number.");
    }
  }
}
