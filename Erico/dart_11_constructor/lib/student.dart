import 'package:dart_11_constructor/person.dart';

class Student extends Person {
  // on case 1,  if the Student's constructor not declared the instance of Student only can use the Person attributes and will not able to change them
  Student({studentName = 'joko'}) : super(name: studentName);

  // on case 2, Student's constructor must be declared and points the super constructor with ordered args
  // Student() : super("joko", 32);
}
