/// Finds the common elements between two lists of integers.
///
/// This function first converts the two input lists into sets, which removes any
/// duplicate values. It then calculates the intersection of the two sets,
/// which gives the common elements between the two lists. Finally, it converts
/// the resulting set back into a list and returns it.
///
/// Example usage:
///
/// List<int> firstList = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10];
/// List<int> secondList = [1, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 19];
/// List<int> commonElements = findCommonElements(firstList, secondList);
/// print(commonElements); // Output: [1, 3, 5, 7, 9]
///
///
/// @param firstListOfNumbers The first list of integers.
/// @param secondListOfNumbers The second list of integers.
/// @return A list of the common elements between the two input lists.
List<int> findCommonElements(
    List<int> firstListOfNumbers, List<int> secondListOfNumbers) {
  return firstListOfNumbers
      .toSet()
      .intersection(
        secondListOfNumbers.toSet(),
      )
      .toList();
}

main() {
  List<int> firstListOfNumbers = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10];
  // Explanation: This line creates a list named firstListOfNumbers and
  //initializes it with a series of integer values. Lists in Dart are similar to
  // arrays in other programming languages.
  List<int> secondListOfNumbers = [1, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 19];
  // Explanation: This line creates another list named secondListOfNumbers and
  //initializes it with a different series of integer values.
  List<int> commonElements = firstListOfNumbers
      .toSet()
      .intersection(
        secondListOfNumbers.toSet(),
      )
      .toList();
  // Stored the result of the intersection in a variable commonElements to
  //enhance readability.
  print(commonElements);
  // Explanation: toSet() converts the list into a set, which removes duplicate
  // values.
  // Explanation: toSet() is called on secondListOfNumbers, converting it into a
  // set. Then, the intersection method is used to find common elements between
  //the two sets.
  // Explanation: toList() converts the resulting set back into a list.
}
// How It Works

// Initialization: Two lists, firstListOfNumbers and secondListOfNumbers, are
//initialized with integer values, including some duplicates.

// Conversion to Sets: Both lists are converted into sets, which automatically
//remove any duplicate values.

// Finding Intersection: The intersection of the two sets is calculated,
//resulting in a set of common elements.

// Conversion to List: The resulting set from the intersection is converted back
// into a list.

// Output: The final list of common elements is printed to the console
