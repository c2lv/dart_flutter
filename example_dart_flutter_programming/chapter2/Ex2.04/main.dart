import 'package:android_flutter/dartEx01.dart' as dartEx01;

/* 클래스명, 타입명, import 시 prefix 가 아니라면 사용할 수 있다
함수명으로 내장 식별자 set 을 사용해도 정상적으로 동작한다 */
set(int a, int b) {
  return a + b;
}

main() {
  var numberA = 10;
  var numberB = 25;
  var result = set(numberA, numberB);
  dartEx01.printResult(result);
}
