import 'dart:io';

void main(List<String> arguments) {
  int angka = int.tryParse(stdin.readLineSync());

  String bilangan;

  // bilangan = (angka >= 0) ? "bilangan positif" : "bilangan negatif";

  switch (angka) {
    case 1:
      bilangan = "satu";
      break;
    case 2:
      bilangan = "dua";
      break;
    case 3:
      bilangan = "tiga";
      break;
    default:
      bilangan = "Positif";
  }

  print(bilangan);
}
