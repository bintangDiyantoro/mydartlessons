class Hewan {
  String jenis;
  int usia, energi, makanan;

  Hewan({this.jenis, this.usia, this.energi});

  void makan(makanan) {
    energi += makanan;
  }
}
