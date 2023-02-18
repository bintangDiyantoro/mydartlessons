void main(List<String> arguments) {
  Hero a = Hero(10);
  Hero b = Hero(10);
  print((a + b).power);
  print(a == b);
}

class Hero {
  final int power;
  Hero(this.power);

  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (power == other.power) {
        return true;
      }
    }
    return false;
  }
}
