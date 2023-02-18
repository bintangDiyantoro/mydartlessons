import 'package:meta/meta.dart';

void main(List<String> arguments) {
  Person p;
  try {
    p = Person(name: null);
  } catch (err) {
    print(err);
  }

  print("haaiii ${p.name}");
}

class Person {
  final String name;
  final int age;

  Person({@required this.name, this.age = 0}) {
    assert(name != null, "Name can't be null!");
  }
}
