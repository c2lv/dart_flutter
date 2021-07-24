import 'package:android_flutter/dartEx01.dart' as dartEx01;

yield(int a, int b) {
  return a + b;
}

test() async { // 비동기 함수 test()
  var await = 10; // Declare and initialize a variable.
  // 비동기 함수 바디 안에서는 비동기 관련 제한된 예약어 await 를 변수명으로 사용 불가, 하단 에러 발생
  // bin/main.dart:8:7: Error: 'await' can't be used as an identifier in 'async', 'async*', or 'sync*' methods.
}

main() {
  var await = 10;
  var numberB = 25;
  var result = yield(await, numberB);
  dartEx01.printResult(result);
}