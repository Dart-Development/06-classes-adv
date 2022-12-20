class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  void printName() => print('Name: $name, Age: $age');
}

class Client extends Person {
  String? address;
  List orders = [];

  Client(int currentAge, String currentName) : super(currentName, currentAge);

  @override
  void printName() {
    super.printName();
    print('Client: $name ($age)');
  }
}

main() {
  final peter = new Client(25, 'Pedro');

  peter.printName();
}
