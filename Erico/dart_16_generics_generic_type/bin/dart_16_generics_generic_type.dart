import 'package:dart_16_generics_generic_type/secure_box.dart';

void main(List<String> arguments) {
  var box = SecureBox<DateTime>(DateTime.now(), '123');

  print(box.getData('123').toString());
}
