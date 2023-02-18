class Charracter {
  int _healthPoint;

  set healthPoint(int value) {
    if (value < 0) {
      value *= -1;
    }
    _healthPoint = value;
  }

  int get healthPoint => _healthPoint;
}
