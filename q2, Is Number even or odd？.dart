import 'dart:io';

/// Prompts the user to enter a number and determines whether it is even or odd.
///
/// The program enters a do-while loop that prompts the user to enter a number.
/// It then attempts to parse the input as an integer. If the number is valid and
/// non-negative, it checks whether the number is even or odd and prints the
/// result. If the number is negative or the input is invalid, it prints an
/// appropriate error message. The loop continues until the user enters a
/// non-negative number.
///
/// After the loop, the program schedules a 3-second delay and then prints
/// "Program End" before exiting.
void main() {
  String? inputNumber;
  int? num;
  do {
    stdout.write("Enter A Number :");
    inputNumber = stdin.readLineSync();
    // The do-while loop prompts the user to enter a number.
// stdout.write is used to print the prompt message without a newline.
// stdin.readLineSync() reads the user's input from the console and stores it
// in inputNumber.

    if (inputNumber != null) {
      try {
        num = int.tryParse(inputNumber);
        // If inputNumber is not null, it tries to parse it into an integer
        // using int.tryParse. This method returns null if the parsing fails.
        if (num!.isNegative) {
          print("Add A Vaild Non-Negative Number");
        } else if (num.isEven) {
          print("Even");
        } else if (num.isOdd) {
          print("Odd");
        }
      } catch (e) {
        print("Invalid integer format");
      }
    }
  } while (num?.isNegative ?? true);
  // while (num?.isNegative ?? num==null); ...
  // Continues the loop as long as num is either null or negative.
  // If num is null, it will be treated as true by the ?? operator.
  // if the num is null treat it as null.

// If num is null, it will throw an error due to num! (the null assertion operator).
// If num is negative, it prints a message asking for a non-negative number.
// If num is even, it prints "Even".
// If num is odd, it prints "Odd".
// If an exception occurs during parsing, it catches the exception and prints
//"Invalid integer format".
// The loop continues as long as num is null or negative (num?.isNegative ?? true).

  Future.delayed(
    Duration(seconds: 3),
    () {
      print("Program End");
      exit(0);
    },
  );
  // After exiting the loop, the program schedules a delayed task using Future.delayed.
// The delay duration is 3 seconds.
// After the delay, it prints "Program End" and exits the program using exit(0).
}
