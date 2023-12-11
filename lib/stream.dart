import 'dart:async';
import 'dart:math';

void main() {
  final randomNumberGenerator = RandomNumberGenerator();

  StreamSubscription<int> subscription1 = randomNumberGenerator.stream.listen((event) {
    print('Subscription 1: $event');
  });

  StreamSubscription<int> subscription2 = randomNumberGenerator.stream.listen((event) {
    print('Subscription 2: ${event * event}');
  });

  Future.delayed(Duration(seconds: 5), () {
    subscription1.cancel();
  });

  Future.delayed(Duration(seconds: 9), () {
    subscription2.cancel();
  });
}

class RandomNumberGenerator {
  RandomNumberGenerator() {
    final timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        _randomNumber = _random.nextInt(100);
        _controller.add(_randomNumber);
      },
    );

    Future.delayed(Duration(seconds: 10), () {
      timer.cancel();
      _controller.close();
    });
  }

  final _random = Random();
  int _randomNumber = 0;
  final StreamController<int> _controller = StreamController<int>.broadcast();

  Stream<int> get stream => _controller.stream;
}
