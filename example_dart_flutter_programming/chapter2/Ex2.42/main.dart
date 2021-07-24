import 'package:android_flutter/src/Person.dart';

main() {
  Person p = Person();
  p.eat();
//  p._sleep(); error
  print('${p.name}');
//  print('${p._age}'); error
}