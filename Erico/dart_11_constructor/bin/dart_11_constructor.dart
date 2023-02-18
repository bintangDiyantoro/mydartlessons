import 'package:dart_11_constructor/person.dart';
import 'package:dart_11_constructor/student.dart';

void main(List<String> arguments) {
  Person joko = Student(studentName: "jack");
  print("Name: ${joko.name}\nAge: ${joko.age}");
}
