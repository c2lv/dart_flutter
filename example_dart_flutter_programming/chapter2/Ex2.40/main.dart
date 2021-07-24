main() {
  Person student = Person('Student');
  Person employee = Person('Employee');

  print('type = ${student.getType()}');
  print('type = ${employee.getType()}');
}

class Person {
  Person.init();

  factory Person(String type) {
    switch (type) {
      case 'Student':
        return Student();
      case 'Employee':
        return Employee();
    }
    throw '';
  }

  String getType() {
    return 'Person';
  }
}

class Student extends Person {
  Student() : super.init();

  @override
  String getType() {
    return 'Student';
  }
}

class Employee extends Person {
  Employee() : super.init();

  @override
  String getType() {
    return 'Employee';
  }
}
// 팩토리 생성자는 팩토리 패턴을 사용하기 편리하다.
// 팩토리 패턴을 사용하면 해당 클래스의 인스턴스를 매번 생성하지 않아도 된다.
// 보통 자식 클래스의 인스턴스를 리턴 받는다.