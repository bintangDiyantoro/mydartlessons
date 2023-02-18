class Person {
  String name;
  int age;
  // static use is for preventing instance object having the attribute for less memory usage.
  static int maxAge = 150;

  Person(this.name, int age) {
    this.age = (age > maxAge) ? maxAge : age;
  }
}
