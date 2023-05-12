void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('Original List: $numbers');
  print('List Length: ${numbers.length}');
  print('First element: ${numbers.first}');
  print('Last element: ${numbers.last}');
  print('First element: ${numbers[0]}');

  final reverseNumbers = numbers.reversed;
  print('iterable): $reverseNumbers');
  print('List): ${reverseNumbers.toList()}');
  print('set): ${reverseNumbers.toSet()}');

  final numberGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('Greater than 5 (Set): $numberGreaterThan5');
  print('Greater than 5 (List): ${numberGreaterThan5.toList()}');
}
