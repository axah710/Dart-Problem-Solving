void main() {
  List<int> list = [1, 1, 3, 5, 8, 13, 21, 34, 55, 89];
  // This line initializes a list of integers with values from the Fibonacci sequence.

  bool found = false;
  // A boolean variable found is used to track whether any item in the list is less than 5.

  print("");

  list = list.toSet().toList();
  // This line removes duplicate elements by converting the list to a set (which only allows unique values) and then back to a list.

  // first soulation ...

  if (list.isNotEmpty) {
    // This condition checks if the list has any elements.

    list.sort();
    // This sorts the list in ascending order to track faster.

    print(list);
    print("");

    for (int item in list) {
      if (item < 5) {
        print(
          "item is : $item",
        );
        found = true;
      } else if (!found) {
        // Negation of negation is true ...
        // so when the list has no elements less than 5, then -found- by defult is
        // fasle then -!found- means false too , so then
        // in this situation -found- become true and that let us access the print statment ..
        print("No Items Less Than 5 Found!");
        break;
      }
    }
    // If the element is less than 5, it prints the element and sets the found flag to true.
    // If no items less than 5 are found (checked by !found), it prints "No Items Found!" and breaks out of the loop.

    print("");

    // second soulation ...
    for (int i = 0; i < list.length; i++) {
      if (list[i] < 5) {
        print(
          "item less than 5 is: ${list[i]} , and item postion is $i",
        );
        found = true;
      } else if (!found) {
        print("No Items Less Than 5 Found!");
        break;
      }
    }
    // If the element at the current index is less than 5, it prints the element and its index.
    // If no items less than 5 are found, it prints "No Items Found!" and breaks out of the loop.
  } else {
    print("List Is Empty !");
  }
  // If the list is empty, it prints "List Is Empty!".
}
