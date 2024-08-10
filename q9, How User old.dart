import 'dart:io';

/// This code prompts the user to enter their birth year and the current year,
/// and then calculates and displays the user's age.
///
/// The code first declares two integer variables, `birthYear` and `currentYear`, and initializes them to 0.
///
/// The first `while` loop continues to prompt the user to enter their birth year until a valid year between 1900 and 2025 is entered. If the user enters an invalid input, the code catches the exception and prints an error message.
///
/// The second `while` loop continues to prompt the user to enter the current year until a year greater than the birth year is entered. If the user enters an invalid input or a year that is not greater than the birth year, the code catches the exception and prints an error message.
///
/// Once a valid birth year and current year are entered, the code calculates the user's age by subtracting the birth year from the current year, and then prints the result.
void main() {
  int birthYear = 0;
  int currentYear = 0;
  // These two lines declare two integer variables, birthYear and currentYear,
  // and initialize them with a value of 0. These variables will store the user's
  // birth year and the current year, respectively.

  while (birthYear <= 1900 || birthYear >= 2025) {
    // The while loop continues to execute as long as the
    // birthYear is not within the range of 1900 to 2025.
    print("Enter your birth year:");
    // asks the user to input their birth year.
    birthYear = enterBirthYearTryAndCatchBlock(birthYear);
  }

  while (currentYear <= birthYear) {
    // This while loop continues until the currentYear is greater
    // than the birthYear.
    print("Enter current year:");
    // asks the user to input the current year.
    enterCurrentYearTryAndCatchBlock(currentYear, birthYear);
  }
}

void enterCurrentYearTryAndCatchBlock(int currentYear, int birthYear) {
  try {
    currentYear = int.parse(stdin.readLineSync()!);
    // reads the user's input and converts it to an integer.
    if (currentYear > birthYear) {
      int age = currentYear - birthYear;
      print("Your age is $age");
      //  If the currentYear is greater than the birthYear, it calculates
      // the age using int age = currentYear - birthYear; and prints the
      // result with print("Your age is $age");.
    } else {
      print("Current year must be greater than birth year.");
      // If the currentYear is not greater than birthYear, it prints "Current
      // year must be greater than birth year.".
    }
  } catch (e) {
    print("Please enter a valid current year.");
    // If the input is invalid, the catch block handles the error and prints
    //  "Please enter a valid current year.".
  }
}

int enterBirthYearTryAndCatchBlock(int birthYear) {
  try {
    birthYear = int.parse(stdin.readLineSync()!);
    //  reads the user's input from the console, converts it to an integer
    //  using int.parse, and assigns it to the birthYear variable.
  } catch (e) {
    print("Please enter a valid birth year.");
    // If the user enters an invalid year (e.g., non-numeric input), the
    // catch block will catch the exception and print "Please enter a
    // valid birth year." without crashing the program. The loop then
    // repeats until a valid year is entered.
  }
  return birthYear;
}
