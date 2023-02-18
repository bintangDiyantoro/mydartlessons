import 'package:dart_9_abstract_class_and_interface/monstershark.dart';
import 'package:dart_9_abstract_class_and_interface/monstermamals.dart';
import 'package:dart_9_abstract_class_and_interface/monsterdragon.dart';

class Shagon extends Shark implements Dragon, Mamals {
  @override
  String fly() => "hiu terbang";
  @override
  String bite() => "tak cokot";
}
