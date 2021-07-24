// 삼항 연산자 A ? B : C -> A가 참이면 B, 거짓이면 C 리턴
// 조건적 멤버 접근 연산자 A?.B -> A가 null 이면 null, null 이 아니면 A.B 리턴
// ?? 연산자 A.B ?? C -> A.B가 null 이 아니면 A.B, null 이면 C 리턴
main() {
  var employee;
  print('employee.name = ${(employee == null) ? null : employee.name}'); // employee.name = null
  print('employee.name = ${employee?.name}'); // employee.name = null

  employee = Employee();
  print('employee.name = ${(employee == null) ? null : employee.name}'); // employee.name = employee
  print('employee.name = ${employee?.name}'); // employee.name = employee

  print('employee.name = ${employee.name ?? 'assign employee name'}'); // employee.name = employee

  employee.name = null;
  print('employee.name = ${employee.name ?? 'assign employee name'}'); // employee.name = assign employee name
}

class Employee {
  String? name = 'employee'; // 변수 타입 뒤에 ?를 붙여 15줄에서 null 이 될 수 있게 함
}