import 'dart:io';

void main(List<String> arguments) {
  // Task 1
  // Read two values from user input and print the sum of them

  print('Enter first number:');
  final firstNumber = stdin.readLineSync() ?? '';

  // int.parse();
  // int.tryParse();

  print('Enter second number:');
  final secondNumber = stdin.readLineSync() ?? '';

  final firstParsedNumber = int.tryParse(firstNumber);
  final secondParsedNumber = int.tryParse(secondNumber);

  if (firstParsedNumber == null || secondParsedNumber == null) {
    print('Invalid input');
    return;
  }

  final calculatedValue = calculate(
    leftHand: firstParsedNumber,
    rightHand: secondParsedNumber,
  );

  print('The sum of $firstParsedNumber and $secondParsedNumber is $calculatedValue');
}

int calculate({required int leftHand, required int rightHand}) {
  return leftHand + rightHand;
}
