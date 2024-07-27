/// Checks if the user's input is a palindrome.
///
/// This function prompts the user to enter a text, validates the input, and
/// then checks if the text is a palindrome. It handles cases where the input
/// is empty, too short, or contains unwanted characters.
///

import 'dart:io';
void main() {
  var userInputWord;
  // userInputWord: A variable to hold the user's input.
  String? joinedReversedSplittedLoweCaseUserInputWord;
  // joinedReversedSplittedLoweCaseUserInputWord: A nullable string to store the reversed and joined lowercase version of the user's input after processing.
  String? lowerCaseUserInputWord;
  // loweCaseUserInputWord: A nullable string to store the lowercase version of the user's input.
  final RegExp unwantedCharacthers = RegExp(r'[^a-zA-Z0-9 ]');
  // unwantedCharacthers: A regular expression pattern to match any character that is not a letter or a number.

  do {
    stdout.write("Write a text: ");
    // stdout.write("Writa a text: "): Displays a message asking the user to write a text.
    userInputWord = stdin.readLineSync();

    // userInputWord = stdin.readLineSync(): Reads the input from the user.
    lowerCaseUserInputWord = userInputWord!.toLowerCase();
    // loweCaseUserInputWord = userInputWord!.toLowerCase(): Converts the user input to lowercase.

    joinedReversedSplittedLoweCaseUserInputWord =
        userInputValidationAndProcessing(userInputWord, lowerCaseUserInputWord,
            unwantedCharacthers, joinedReversedSplittedLoweCaseUserInputWord);
  } while (userInputWord == "" ||
      userInputWord.length <= 1 ||
      lowerCaseUserInputWord!.contains(unwantedCharacthers));
  // The do-while loop continues to prompt the user until they enter a valid text (non-empty, longer than 1 character, and without unwanted characters).
  joinedReversedSplittedLoweCaseUserInputWord! == lowerCaseUserInputWord
      ? print("It's a palindrome")
      : print("It's not a palindrome");
  // After obtaining a valid input, the program checks if the processed (reversed and joined) version of the input matches the original lowercase input.
  // If they match, it prints "It's a palindrome"; otherwise, it prints "It's not a palindrome".
  terminateProgram();

}

String? userInputValidationAndProcessing(
    // This function takes the user's input, the lowercase version of it, the regular expression for unwanted characters, and the variable for the processed string as parameters.
    userInputWord,
    loweCaseUserInputWord,
    unwantedCharacthers,
    joinedReversedSplittedLowerCaseUserInputWord) {
  if (!(userInputWord == "" ||
      userInputWord.length <= 1 ||
      loweCaseUserInputWord!.contains(unwantedCharacthers))) {
    // This if statement checks if the user input is valid (non-empty, longer than 1 character, and without unwanted characters).
    List<String> splittedLoweCaseUserInputWord =
        loweCaseUserInputWord!.split("");
    // loweCaseUserInputWord.split(""): Splits the lowercase user input into a list of individual characters.
    final reversedSplittedLoweCaseUserInputWord =
        splittedLoweCaseUserInputWord.reversed;
    // splittedLoweCaseUserInputWord.reversed: Reverses the list of characters.
    joinedReversedSplittedLowerCaseUserInputWord =
        reversedSplittedLoweCaseUserInputWord.join();
    // reversedSplittedLoweCaseUserInputWord.join(): Joins the reversed list of characters back into a single string.
  } else if (userInputWord == "") {
    print("Please enter a valid text");
  } else if (userInputWord.length <= 1) {
    print("Please enter a text longer than 1");
  } else if (loweCaseUserInputWord!.contains(unwantedCharacthers)) {
    print("Please remove any spical characters");
  }
  // These else if statements provide feedback to the user if their input is invalid.
// It prints specific messages based on whether the input is empty, too short, or contains unwanted characters.
  return joinedReversedSplittedLowerCaseUserInputWord;
  // The function returns the processed string (reversed and joined version of the lowercase input) if the input is valid.
}

void terminateProgram() {
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

// How It Works:

// The program prompts the user to enter a text.
// It reads the input, converts it to lowercase, and checks for unwanted characters.
// If the input is invalid, it prompts the user again until a valid input is provided.
// Once a valid input is obtained, the program reverses the lowercase version of the input and checks if it matches the original lowercase input.
// It prints whether the input text is a palindrome or not based on the comparison.
// Then exits the application using exit(0).