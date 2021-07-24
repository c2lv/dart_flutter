// this 는 현재 인스턴스를 가리킨다.
main() {
  // Person(this.name, this.age)의 인자로 Person.initName('Kim')에서 받은 Kim 과 20 할당
  var person = Person.initName('Kim'); // var person = Person('Kim', 20);과 동일
}

class Person {
  String name;
  int age;

  Person(this.name, this.age) {
    print('This is Person($name, $age) Constructor!');
  }

  Person.initName(String name) : this(name, 20); // this(name, 20)은 Person(this.name, this.age)
}