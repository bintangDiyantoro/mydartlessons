import 'package:dart_12_ignore_parameter/person.dart';

void main(List<String> arguments) {
  Person joko = Person(
    "Joko",
    doingHobby: (_) {
      print("Swimming in the pool");
    },
  );

  joko.takeARest();
}
