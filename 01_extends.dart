class Vehicle {
  bool on = false;

  void turnOn() {
    on = true;
    print('Vehicle turned on');
  }

  void turnOff() {
    on = false;
    print('Vehicle turned off');
  }
}

class Car extends Vehicle {
  int miles = 0;
}

main() {
  final ford = new Car();

  ford.turnOn();
  ford.turnOff();
  ford.turnOff();
  ford.turnOff();
}
