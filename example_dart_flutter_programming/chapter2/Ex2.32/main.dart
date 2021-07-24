// 이름 없는 생성자는 단 하나만 가질 수 있다.
// 해당 소스를 실행하면 중복 선언 에러가 발생한다.
main() {
  var person = Person();
}

class Person {
  String? name;
  int? age;

  Person() {
    print('This is Person Constructor!');
  }

  Person(String name) {
    print('This is Person($name) Constructor!');
  }
}
