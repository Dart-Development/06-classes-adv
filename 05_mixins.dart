// Mixin: you can use mixins to give properties and methods  to other classes.

// Any class can be a mixin.

// Mixins can't be instantiated
// Mixins can't declare constructors.

mixin Logger {
  void print1(String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

class Logger2 {
  void print2(String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

abstract class Astro with Logger {
  String? nombre;

  Astro() {
    print1('---- Init of Astro ----');
  }

  void exist() {
    print1("-- I'm a celestial being and exists -- ");
  }
}

class Asteroid extends Astro with Logger, Logger2 {
  String? name;

  Asteroid(this.name) {
    print1("I'm $name");
    print2("I'm $name");
  }
}

main() {
  final ceres = new Asteroid('ceres');
}
