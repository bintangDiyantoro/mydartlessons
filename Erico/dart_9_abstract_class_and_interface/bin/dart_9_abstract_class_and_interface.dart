import 'package:dart_9_abstract_class_and_interface/monster.dart';
import 'package:dart_9_abstract_class_and_interface/monsterdragon.dart';
import 'package:dart_9_abstract_class_and_interface/monstershagon.dart';
import 'package:dart_9_abstract_class_and_interface/monstershark.dart';

void main(List<String> arguments) {
  Monster chicken = Dragon();
  Monster bird = Dragon();
  Monster shark = Shark();
  Monster shagon = Shagon();

  List<Monster> monsters = [];

  monsters.addAll([chicken, bird, shark, shagon]);

  chicken.healthPoint = 10;
  shark.healthPoint = 1;
  bird.healthPoint = 3;

  for (Monster m in monsters) {
    print(m.eatHuman());
    if (m is Shagon) {
      print(m.fly());
      print(m.swim());
      print(m.bite());
    }
  }
}
