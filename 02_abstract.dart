// Abstract classes are used for blueprints to be used on other classes

abstract class Vehicle {
  bool on = false;

  void turnOn() {
    on = true;
    print('Vehicle turned on');
  }

  void turnOff() {
    on = false;
    print('Vehicle turned off');
  }

  bool checkEngine();
}

class Car extends Vehicle {
  int miles = 0;

  // @override means that we are overriding a parent method
  @override
  bool checkEngine() {
    print('Engine OK!');
    return true;
  }
}

main() {
  final ford = new Car();

  ford.turnOn();
  ford.turnOff();

  ford.checkEngine();
}
