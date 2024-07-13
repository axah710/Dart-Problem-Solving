import 'dart:io';

void main() {
  String? name;
  String? ageInput;
  int? age;
  do {
    print("What Is Your Name");
    name = stdin.readLineSync();
  } while (name == null || name.isEmpty);
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
}
