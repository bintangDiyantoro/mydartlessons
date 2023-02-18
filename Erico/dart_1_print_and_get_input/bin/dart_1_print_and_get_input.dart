import 'dart:io';
void main(List<String> arguments) {
  String input = stdin.readLineSync();
  double angka = double.tryParse(input);
  print(angka);
}
