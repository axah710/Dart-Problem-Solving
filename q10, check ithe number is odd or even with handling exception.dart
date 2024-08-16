/// This program prompts the user to enter a number and checks whether it is odd or even.
///
/// The program uses a `do-while` loop to continuously prompt the user for input until a valid number is entered.
///
/// If the user enters a valid integer, the program checks whether the number is even or odd and prints the result.
/// If the user enters an invalid input, the program prints an error message and prompts the user to try again.
import 'dart:io';

void main() {
  do {
    // This begins a do-while loop. A do-while loop ensures that the code
    // inside the loop is executed at least once before checking the condition.
    int userInputNumber;
    // This declares a variable named userInputNumber of type int.
    // This variable will hold the user's input after it's
    // converted to an integer.
    print("Enter a number: ");
    try {
      // starts a block of code that will handle potential errors (exceptions)
      // that might occur during execution.
      userInputNumber = int.parse(stdin.readLineSync()!);
      // reads a line of input from the console as a String. The ! is a null
      // safety operator that tells Dart you are sure the value won't be null.
      // attempts to convert the string input into an integer. If
      // the conversion is successful, the integer value is
      // assigned to userInputNumber.
      if (userInputNumber.isEven) {
        // checks if the number is even using the .isEven property.
        print("Number is Even");
        break;
      } else {
        print("Number is Odd");
        break;
      }
    } on FormatException {
      // atches the specific error type (FormatException) that occurs
      // if int.parse fails (e.g., if the user enters a non-integer value).
      print("Please enter a valid number");
    }
  } while (true);
  // condition makes this a continuous loop. The loop will only exit
  //  when a break statement is encountered.
}
