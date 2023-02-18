import 'dart:io';

int luasSegiempat(int panjang, int lebar) {
  return panjang * lebar;
}

void sapa(String nama) {
  print("Halo ${nama.toString()}");
}

String say(String from, String message, {String to, String appName}) {
  return "${from.toString()} says ${message.toString()} ${(to != null) ? 'to ${to.toString()}' : ''} ${(appName != null) ? 'via ${appName.toString()}' : ''}";
}

String say2(String from, String message, [String to, String appName = 'mIRC']) {
  return "${from.toString()} says ${message.toString()} ${(to != null) ? 'to ${to.toString()}' : ''} ${(appName != null) ? 'via ${appName.toString()}' : ''}";
}

int penjumlahan(int a, int b) => a + b;

int penjumlahan2(int a, int b, Function(int, int) fnPenjumlahan) {
  return fnPenjumlahan(a, b);
}

void main(List<String> arguments) {
  // int p, l;
  // String nama;
  // print("Siapa anda?");
  // nama = stdin.readLineSync();

  // sapa(nama);
  // print('Masukkan panjang: ');
  // p = int.parse(stdin.readLineSync());
  // print('Masukkan lebar: ');
  // l = int.parse(stdin.readLineSync());
  // int hasil;
  // hasil = luasSegiempat(p, l);
  // print("Luas segi empat adalah: ${hasil.toString()}");

  // print(say('Ucok', 'Halo', to: 'Ujang', appName: 'Telegram'));
  // print(say2('Ucok', 'Halo', 'Ujang'));

  int a, b;
  // int c;
  print('Masukkan nilai a:');
  a = int.tryParse(stdin.readLineSync());
  print('Masukkan nilai b:');
  b = int.tryParse(stdin.readLineSync());
  // c = penjumlahan(a, b);

  // print('Hasil ${a.toString()} + ${b.toString()} = ${c.toString()}');

  Function f;
  f = penjumlahan;
  print("Hasil penjumlahan=${f(a, b)}");

  print(
      "Hasil Penjumlahan adalah ${penjumlahan2(a, b, (c, d) => c + d).toString()}");
}
