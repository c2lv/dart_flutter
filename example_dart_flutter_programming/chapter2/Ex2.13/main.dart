main() {
  int a = 10;
  int b = 5;
  var name = getName(); // var 타입 name 변수는 getName() 함수를 참조한다

  print('Name is $name.');
  print('$a + $b = ${add(a, b)}');
  print('$a - $b = ${sub(a, b)}');
}

getName() {
  return 'Kim';
}

int add(int a, int b) { // 함수, 매개변수 타입 지정
  return a + b;
}

sub(a, b) { // 함수, 매개변수 타입 생략 가능(그러나 가급적 명시할 것)
  return a - b;
}