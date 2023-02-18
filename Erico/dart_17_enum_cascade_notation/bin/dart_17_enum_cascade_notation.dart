void main(List<String> arguments) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.poisoned);
  m..move()..eat();
}

enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  UcoaStatus status;

  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print("Ucoa is moving");
        break;
      case UcoaStatus.poisoned:
        print("Ucoa is dying, Ucoa needs help");
        break;
      case UcoaStatus.confused:
        print("Ucoa is spinning, dart language is confusing");
        break;
      default:
    }
  }

  void eat() {
    print("Ucoa is eating Indomie");
  }
}
