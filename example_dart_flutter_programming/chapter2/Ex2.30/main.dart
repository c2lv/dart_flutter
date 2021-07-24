// 기본 생성자는 상속되지 않는다.
main() {
  var student = Student(); // 부모 클래스(Person)의 기본 생성자가 호출된 후 자식 클래스(Student)의 기본 생성자 호출됨
}

class Person {
  String? name;

  Person() { // 부모 클래스(Person)의 기본 생성자
    print('This is Person Constructor!');
  }
}

class Student extends Person {
  Student() { // 자식 클래스(Student)의 기본 생성자
    print('This is Student Constructor!');
  }
}