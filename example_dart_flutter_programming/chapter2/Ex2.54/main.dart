void main() {
  var manager1 = Manager<Person>();
  manager1.eat();
  var manager2 = Manager<Student>();
  manager2.eat();
  var manager3 = Manager();
  manager3.eat();
  // var manager4 = Manager<Dog>(); // error
}

class Person {
  eat() {
    print('Person eats a food');
  }
}

class Student extends Person {
  eat() {
    print('Student eats a hamburger');
  }
}

// Manager 클래스가 타입 매개변수로 <T extends Person> 선언:
// Person 클래스와 그 자식 클래스가 실제 타입 매개변수가 될 수 있음(manager1, manager2).
// 실제 타입 매개변수 없이 그냥 Manager 클래스 생성도 가능(manager3)
class Manager<T extends Person> {
  eat() {
    print('Manager eats a sandwich');
  }
}

class Dog {
  eat() {
    print('Dog eats a dog food');
  }
}