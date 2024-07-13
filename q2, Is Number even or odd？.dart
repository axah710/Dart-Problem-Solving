import 'dart:io';

void main() {
  String? inputNumber;
  int? num;
  do {
    stdout.write("Enter A Number :");
    inputNumber = stdin.readLineSync();

    if (inputNumber != null) {
      try {
        num = int.tryParse(inputNumber);
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

  Future.delayed(
    Duration(seconds: 3),
    () {
      print("Program End");
      exit(0);
    },
  );
}
