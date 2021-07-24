// 상수 생성자는 생성자를 상수처럼 만들어 준다.
// 즉, 해당 클래스가 상수처럼 변하지 않는 객체를 생성한다.
// 상수 생성자를 만들기 위해서는 두 가지 조건이 필요하다.(하단 주석 참고)

main() {
  Person person1 = const Person('Kim', 20);
  Person person2 = const Person('Kim', 20);
  Person person3 = new Person('Kim', 20);
  Person person4 = new Person('Kim', 20);
  // identical()은 같은 인스턴스인지 비교해주는 함수이다.
  print(identical(person1, person2)); // 상수 생성자를 참조, 즉 동일한 인스턴스를 참조하고 있으므로 true
  print(identical(person2, person3)); // 상수 생성자를 참조하는 인스턴스와 일반적인 인스턴스 비교, false
  print(identical(person3, person4)); // 각각 새롭게 생성한 일반적인 인스턴스 비교, false
}

class Person {
  final String name; // 1. 인스턴스 변수가 모두 final 이어야 한다.
  final num age;

  const Person(this.name, this.age); // 2. 생성자에는 const 키워드가 붙어야 한다.
}