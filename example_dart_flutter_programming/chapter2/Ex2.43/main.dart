class Person {
  String? _name;

  String? get hello => _name; // getter: hello
  set setName(String name) => _name = name; // setter: setName
}

main() {
  Person person = Person();
  person.setName = 'Kim';
  print(person.hello);
}