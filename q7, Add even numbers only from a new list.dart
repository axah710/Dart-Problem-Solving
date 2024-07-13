/// This code demonstrates how to extract even numbers from a list of integers
/// and store them in a new list.
///
/// The `main()` function is the entry point of the program. It performs the
/// following steps:
///
/// 1. Declares and initializes a list of integers named `numbersGroup`
/// containing numbers from 1 to 10.
/// 2. Declares an empty list named `evenNumbers` to store the even numbers
/// extracted from `numbersGroup`.
/// 3. Iterates over each element in the `numbersGroup` list using a `for` loop.
/// 4. Inside the loop, checks if the current element is even using the `
/// isEven` property.
/// 5. If the current element is even, it is added to the `evenNumbers` list.
/// 6. After the loop, checks if the `evenNumbers` list is not empty.
/// 7. If `evenNumbers` is not empty, it prints the even numbers added from the
/// `numbersGroup` list.
/// 8. If `evenNumbers` is empty, it prints a message indicating that no even
/// numbers were added from the `numbersGroup` list.
void main() {
  List<int> numbersGroup = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Here, we declare and initialize a list of integers named numbersGroup. This
  // list contains numbers from 1 to 10.
  List<int> evenNumbers = [];
  // This line declares an empty list named evenNumbers that will store the even
  //numbers extracted from numbersGroup.
  int index = 0;
  // We declare an integer variable named index and initialize it to 0. This
  // variable will be used as a counter in the upcoming for loop.
  for (index = 0; numbersGroup.length > index; index++) {
// This line starts a for loop. It will iterate over each element in the
// numbersGroup list.
// index = 0: Initialize the loop counter index to 0.
// numbersGroup.length > index: Continue the loop as long as index is less than
// the length of numbersGroup.
// index++: Increment the index by 1 after each iteration.
    if (numbersGroup[index].isEven) {
      // Inside the loop, this if statement checks if the current element
      // (at position index in numbersGroup) is even.
      // numbersGroup[index].isEven: isEven is a property that checks if
      // a number is even.
      evenNumbers.add(
        numbersGroup[index],
      );
      // If the current element is even, it is added to the evenNumbers list
      // using the add method.
    }
  }
  if (!evenNumbers.isEmpty) {
    // After the loop, this if statement checks if the evenNumbers list is not empty.
// !evenNumbers.isEmpty: isEmpty is a property that returns true if the list is
// empty, and false otherwise. The ! operator negates this, so it checks if the
// list is not empty.
    print(
      "even numbers added from the list are $evenNumbers",
    );
  } else {
    print("No even numbers added from the numbersGroup list  ");
  }
}
