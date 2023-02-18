import 'package:dart_10_mixin/drink_ability_mixin.dart';
import 'package:dart_10_mixin/monstershark.dart';
import 'package:dart_10_mixin/monstermamals.dart';
import 'package:dart_10_mixin/monsterdragon.dart';

class Shagon extends Shark with DrinkAbilityMixin implements Dragon, Mamals {
  @override
  String fly() => "hiu terbang";
  @override
  String bite() => "tak cokot";
}
