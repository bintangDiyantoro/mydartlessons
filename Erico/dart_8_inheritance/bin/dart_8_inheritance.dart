import 'package:dart_8_inheritance/hero.dart';
import 'package:dart_8_inheritance/monster.dart';
import 'package:dart_8_inheritance/monsterdragon.dart';
import 'package:dart_8_inheritance/monstershark.dart';

void main(List<String> arguments) {
  Hero chicken = Hero();
  Monster goat = Monster();
  Monster shark = Shark();
  Monster dragon = Dragon();
  chicken.healthPoint = 8;
  goat.healthPoint = -9;

  List<Monster> monsters = [];
  monsters.addAll([goat, shark, dragon]);

  // print(chicken.healthPoint);
  // print(goat.healthPoint);
  // print(goat.eatHuman());
  print((dragon as Dragon).fly());

  for (Monster m in monsters) {
    if (m is Shark) {
      print(m.swim());
    } else {
      print(m.eatHuman());
    }
  }
}
