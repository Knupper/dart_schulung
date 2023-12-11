void main() {
  // Needs Dart >= 3.0
  final (lat, long) = calculatePosition();
  print(lat);
  print(long);

  print('$lat');
  print('$long');

  final bird = Bird();
  final lion = Lion();
  bird.fly();
}

String descripeOld(DateTime dt) {
  final weekday = dt.weekday;

  switch (weekday) {
    case 1:
      return 'Feeling relaxed after the weekend';
    case 6:
    case 7:
      return 'WEEKEND HURRAY!';
    default:
      return 'Oh no, a workday';
  }
}

String describeDate(DateTime dt) => switch (dt.weekday) {
      1 => 'Feeling relaxed after the weekend',
      6 || 7 => 'WEEKEND HURRAY!',
      _ => 'Oh no, a workday'
    };

(double, double) calculatePosition() {
  final latitude = 0.0;
  final longitude = 0.0;

  return (latitude, longitude);
}

GeoPosition calculateCurrentPosition() {
  return GeoPosition(latitude: 0, longitude: 0);
}

class GeoPosition {
  GeoPosition({required this.latitude, required this.longitude});

  final double latitude;
  final double longitude;
}

String whatSoundDoesItMake(Animal animal) => switch (animal) {
      Cow c => 'Moo from $c',
      Sheep _ => 'Baa',
      Pig _ => 'Oink',
      Lion _ => 'Roar',
      Bird _ => 'Piep',
      Duck _ => 'Quark',
    };

sealed class Animal {}

class Cow extends Animal {}

class Sheep extends Animal {}

class Pig extends Animal {}

class Lion extends Animal {}

class Bird extends Animal with CanFly {}

class Duck extends Animal with CanFly {}

mixin CanFly {
  void fly() {
    print('I am flying');
  }
}
