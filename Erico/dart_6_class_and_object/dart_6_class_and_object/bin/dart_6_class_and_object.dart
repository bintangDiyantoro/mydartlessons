import 'hewan.dart';

void main(List<String> arguments) {
  Hewan kambing, ayam;
  kambing = Hewan(jenis: 'Kambing', usia: 2, energi: 2);
  kambing.makan(7);
  print("Energi Kambing = ${kambing.energi}");

  ayam = Hewan(jenis: 'Ayam', usia: 3, energi: 4);
  ayam.makan(8);
  print("energi Ayam = ${ayam.energi}");
}
