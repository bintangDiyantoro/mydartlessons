import 'kendaraan.dart';

void main(List<String> arguments) {
  Kendaraan mobil;
  mobil = Kendaraan(jenis: 'Mobil', merk: 'Toyota');
  mobil.tahunPembuatan = '2020';
  print("Jenis kendaraan= ${mobil.jenis} \nTahun Pembuatan= ${mobil.tahunPembuatan}");
}
