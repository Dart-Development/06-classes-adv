class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  void printName() => print('Name: $name , Age: $age');
}

// When creating an instance of Client you are creating a Person instance as well
class Client extends Person {
  String? address;
  List orders = [];

  // : are used to execute the process before the instance is created
  Client(int currentAge, String currentName) : super(currentName, currentAge);
}

main() {
  // final person = new Person('Brayan', 27);
  final peter = new Client(25, 'Pedro');

  peter.printName();

  // peter.orders;
}
