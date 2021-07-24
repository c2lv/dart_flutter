main() {
  Person person = Developer(); // Person 타입의 Developer 객체 생성(Person 은 추상 클래스로 객체 생성 불가)
  // Person person = Person(); // Error: The class 'Person' is abstract and can't be instantiated.
  person.eat();
}

abstract class Person { // abstract 키워드가 붙은 클래스는 추상 클래스로 객체를 생성할 수 없다.
  eat(); // 추상 메서드는 선언은 되어있지만 바디가 정의되지 않은 형태이다. 추상 클래스라고 반드시 추상 메서드가 존재해야 하는 것은 아니다.
}

class Developer implements Person { // Developer 클래스가 추상 클래스인 Person 을 임플리먼트
  @override // 추상 클래스 사용을 위해 위에서 임플리먼트 후 추상 메서드를 오버라이딩
  eat() {
    print('Developer eat a meal');
  }
}