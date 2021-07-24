main() {
  Employee employee = Employee()
  // 캐스케이드 표기법(..) 사용
    ..name = 'Kim'
    ..setAge(25)
    ..showInfo();

  employee.name = 'Park';
  employee.setAge(30);
  employee.showInfo();
}

class Employee {
  var name = 'employee';
  var age;

  setAge(int age) {
    this.age = age;
  }

  showInfo() {
    print('$name is $age');
  }
}