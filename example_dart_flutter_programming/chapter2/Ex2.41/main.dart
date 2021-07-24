main() {
  Student student = Student();
  student.studentID = 2020;
  student.setName('Kim');
  student.showInfo();
}

class Person {
  String? name; // 멤버(인스턴스) 변수 1

  setName(String name) { // 멤버 함수(메서드) 1
    this.name = name; // this.name: Person 의 name(9줄), name: setName(String name)의 name(11줄)
  }

  getName() { // 멤버 함수 2
    return name;
  }

  showInfo() { // 멤버 함수 3
    print('name is $name');
  }
}

class Student extends Person { // Student(자식) 클래스가 Person(부모) 클래스 상속(Person 의 멤버 변수와 함수 모두 상속)
  int? studentID;

  @override
  showInfo() {
    print('name is ${super.getName()} and ID is $studentID.');
    // print('name is ${getName()} and ID is $studentID.'); // super 는 부모클래스를 가리키는데 생략 가능(해당 메서드를 상속받았기 때문)
    // print('name is $name and ID is $studentID.'); // name 역시 상속 받음
  }
}