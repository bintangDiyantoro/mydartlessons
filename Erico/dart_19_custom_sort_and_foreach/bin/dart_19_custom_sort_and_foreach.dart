void main(List<String> arguments) {
  List<Person> persons = [
    Person("Administrator", 22),
    Person("Merchant", 25),
    Person("User", 27),
    Person("Administrator", 53),
    Person("Merchant", 52),
    Person("User", 57),
    Person("Administrator", 33),
    Person("Merchant", 37),
    Person("User", 35),
  ];

  persons.sort((x, y) {
    if (x.roleWeight - y.roleWeight != 0) {
      return x.roleWeight - y.roleWeight;
    } else {
      return x.age.compareTo(y.age);
    }
  });

  persons.forEach((person) {
    print("${person.role} - ${person.age.toString()}");
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case "Merchant":
        return 1;
        break;
      case "Administrator":
        return 2;
        break;
      default:
        return 3;
        break;
    }
  }
}
