main() {
  // var 는 가독성이 떨어지고 실수를 유발할 가능성이 높기 때문에 초보자는 가급적 명시적으로 타입을 선언하는 것이 좋다.
  var number;
  print('The number is $number.'); // The number is null.

  number = 10; // 초기화가 선언 이후 늦게 이루어지면 변수 선언부에서 타입이 뭔지 알 수가 없다. 또한 처음에 어떤 목적으로 선언했는지 혼란스러울 수도 있다.
  print('The number is $number.'); // The number is 10.

  // num 은 int 와 double 의 상위 타입이므로 int 와 double 모두 참조할 수 있다.
  num a = 10;
  int b = 20;
  double c = 1.2;
  a = b;
  print('The number is $a.'); // The number is 20.
  a = c;
  print('The number is $a.'); // The number is 1.2.

  // 그러나 int 와 double 은 서로 참조할 수 없다.
  // 보통 더 큰 범위를 가지는 double 에 int 가 할당되는데 다트에선 안 된다.
  // b = c; // bin/main.dart:20:7: Error: A value of type 'double' can't be assigned to a variable of type 'int'.
  // c = b; // bin/main.dart:21:7: Error: A value of type 'int' can't be assigned to a variable of type 'double'.
}