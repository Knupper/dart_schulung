void main(List<String> arguments) {
  const tmp0 = 42;
  final tmp = '42';

  // type is defined at allocation
  var a = 42;
  // a = '42'; does not work

  // type can be changed to runtime
  dynamic b = 42;
  b = '42';

  print('Hello world: ${calculate(shouldAdd: true, leftHand: 6, rightHand: 7)}!');
}

int calculate({bool? shouldAdd, required int leftHand, required int rightHand}) {
  if (shouldAdd == null) {
    throw ArgumentError('shouldAdd must not be null');
  }

  if (shouldAdd) {
    return leftHand + rightHand;
  }

  return leftHand - rightHand;
}
