import 'package:android_flutter/dartEx01.dart' as dartEx01;

yield(int a, int b) { // 함수명으로 사용된 yield
  return a + b;
}

main() {
  var await = 10; // 변수명으로 사용된 await
  var numberB = 25;
  var result = yield(await, numberB);
  dartEx01.printResult(result);
}

// 예약어(var, break, if, true, this 등)는 식별자로 사용할 수 없는 특별한 단어이지만
// 비동기 관련 제한된 예약어(await, yield)는 async, async*, aync*로 표시된
// 비동기/동기 함수의 바디(중괄호{}로 묶인 부분)에서가 아니라면 식별자로 사용할 수 있다.
