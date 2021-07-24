main() {
 // Person person = Developer(); // Person 타입으로 Junior 메서드 work()는 참조 불가능.
  Developer person = Developer();
  person.eat();
  person.sleep();
  person.work();
}

abstract class Person {
  eat();

  sleep() {
    print('Person must sleep');
  }
}

abstract class Junior {
  work() {
    print('work hard');
  }
}
// extends 키워드를 사용해서 상속받는 일반 클래스의 경우에는 단 하나의 클래스만 상속이 가능하다.
// 하지만 추상 클래스는 일반 클래스와 다르게 여러 개를 임플리먼트 할 수 있다.
class Developer implements Person, Junior {
  @override
  eat() {
    print('Developer eat a meal');
  }

  sleep() {
    print('Developer must sleep');
  }

  work() {
    print('Junior developer works hard');
  }
}