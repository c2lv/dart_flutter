main() {
  Person person = Developer();
//  Person person = Person(); error
  person.eat();
}

abstract class Person {
  eat();

  sleep() { // 추상 클래스에 일반 메서드 정의 가능
    print('Person must sleep');
  }
}

class Developer implements Person {
  // @override 어노테이션 생략 가능
  eat() {
    print('Developer eat a meal');
  }

  sleep() { // 일반 메서드인 sleep()도 반드시 재정의해야 함
    print('Developer must sleep');
  }
}