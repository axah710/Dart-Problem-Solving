import 'dart:io';

/// This code prompts the user for their name and age, and then calculates the
/// number of years until they are 100 years old.
///
/// The code uses a do-while loop to prompt the user for their name until a
/// non-null, non-empty string is provided.
///
/// It then uses another do-while loop to prompt the user for their age,
///  handling various error conditions such as age being greater than 100,
/// exactly 100, or less than 0.
///
/// Once a valid age is entered, the code calculates the number of years until
/// the user is 100 and prints this information.
///
/// Finally, the code schedules a delayed operation that prints a message and
/// exits the application after 3 seconds.
void main() {
  String? name;
  String? ageInput;
  int? age;
  do {
    print("What Is Your Name");
    name = stdin.readLineSync();
  } while (name == null || name.isEmpty);
  // This do-while loop prompts the user for their name and keeps asking until
  //a non-null, non-empty string is provided. stdin.readLineSync() reads a line
  //of text from the standard input.
  do {
    print("What is your age?");
    ageInput = stdin.readLineSync();
    if (ageInput != null) {
      try {
        age = int.parse(ageInput);
        if (age > 100) {
          print(
            "Age input is greater than 100. Please enter a valid number.",
          );
        } else if (age == 100) {
          print(
            "Age input is 100. You're already 100 years old!",
          );
        } else if (age < 0) {
          print(
            "Age input is a negative number. Please enter a valid positive age.",
          );
        }
      } on Exception {
        print(
          "Invalid age input. Please enter a valid number.",
        );
      }
    }
  } while (age == null || age < 0 || age >= 100);
// This do-while loop handles age input:
// Prompts the user for their age.
// Reads the input and tries to parse it as an integer.
// Checks for various conditions:
// If age is greater than 100, prompts for a valid number.
// If age is exactly 100, acknowledges the user's age.
// If age is less than 0, prompts for a valid positive age.
// If parsing fails (due to a non-numeric input), it catches the exception and
//asks for a valid number again.
// The loop continues until a valid age (0-99) is entered.
  print(
    "Your name is $name and you have ${100 - age} years to be 100 years old.",
  );
  Future.delayed(
      const Duration(
        seconds: 3,
      ), () {
    print(
      "App Will Be terminated Now ...",
    );
    exit(0);
  });
//  This block of code schedules a delayed operation:
// Future.delayed creates a future that completes after a specified duration
// (3 seconds in this case).
// After the delay, it prints a message indicating the app will terminate and
// then exits the application using exit(0).
}
