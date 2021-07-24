// 이름 있는 생성자를 선언하면 기본 생성자는 생략할 수 없다.
main() {
  var person = Person(); // Error: Method not found: 'Person'.
  var kim = Person.init('Kim');
}

class Person {
  String? name;
  int? age;

  Person.init(String name) {
    print('This is Person($name) Constructor!');
  }
}