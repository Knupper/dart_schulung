import 'dart:io';

void main(List<String> arguments) {
  // Task 1
  // Read two values from user input and print the sum of them

  print('Enter first number:');
  stdin.readLineSync();

  // int.parse();
  // int.tryParse();

  print('Enter second number:');
  stdin.readLineSync();
}

int calculate({required int leftHand, required int rightHand}) {
  return leftHand + rightHand;
}
