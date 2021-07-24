main() {
  var student = new Person();
  var teacher = Person(); // 객체 생성시 new 키워드 사용하지 않아도 됨.
  student.name = 'Kim';
  teacher.name = 'Park';
  print('student name = ${student.getName()}');
  print('teacher name = ${teacher.getName()}');
}

class Person {
  String? name;
  int? age;

  getName() {
    return name;
  }
}