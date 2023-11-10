import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(){
  Armor_Titan ar = Armor_Titan();
  Attack_Titan at = Attack_Titan();
  Beast_Titan be = Beast_Titan();
  Human h = Human();

  ar.powerPoint = 7;
  at.powerPoint = 5;
  be.powerPoint = 6;
  h.powerPoint = 3;

  print('power point armor titan: ${ar.powerPoint}');
  print('power point attack titan: ${at.powerPoint}');
  print('power point beast titan: ${be.powerPoint}');
  print('power point human: ${h.powerPoint}');

  print('sifat armor titan: ' + ar.terjang());
  print('sifat attack titan: ' + at.punch());
  print('sifat beast titan: ' + be.lempar());
  print('sifat human: ' + h.killAllTitan());

  }