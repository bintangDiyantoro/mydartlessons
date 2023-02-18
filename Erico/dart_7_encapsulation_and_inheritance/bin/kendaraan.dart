class Kendaraan {
  String jenis, merk, _tahunPembuatan;

  Kendaraan({this.jenis, this.merk}) {
    _tahunPembuatan = '1990';
  }

  void set tahunPembuatan(String value) {
    _tahunPembuatan = value;
  }

  String get tahunPembuatan => _tahunPembuatan;
}
