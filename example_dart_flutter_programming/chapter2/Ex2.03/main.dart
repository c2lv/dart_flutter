import 'package:android_flutter/dartEx01.dart' as set;

// Define a function.
add(int a, int b) {
  return a + b;
}

main() {
  var numberA = 10;
  var numberB = 25;
  var result = add(numberA, numberB);
  set.printResult(result);
}

// 변수명과 함수명을 식별자라고 한다.

/* 내장 식별자 set 을 prefix 로 사용하면 하단 에러가 발생하여 실행할 수 없다.
set 이 다트의 내장 식별자이기 떄문이다. */
// bin/main.dart:1:51: Error: Can't use 'set' as a name here.
