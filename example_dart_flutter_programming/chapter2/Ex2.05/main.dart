import 'package:android_flutter/dartEx01.dart' as dartEx01;
import 'package:android_flutter/dartEx01.dart' show TestA; // 키워드로 사용된 show
// show 키워드의 역할은 라이브러리 import 시 라이브러리의 일부만 사용하고 싶을 때 사용할 부분을 선택하는 것
// 즉 특정 부분만 import 를 한다는 것

set(int a, int b) {
  return a + b;
}

main() {
  var numberA = 10;
  var numberB = 25;
  var result = set(numberA, numberB);
  dartEx01.printResult(result);

  var test = TestA(); // 아래처럼 TestB로 수정하여 show 로 선택하지 않은 TestB 클래스를 사용하려고 하면 하단 에러 발생
  // bin/main.dart:16:14: Error: Method not found: 'TestB'.
  test.show(); // 함수명으로 사용된 show
}

// 키워드란 특정 문맥에서 특별한 의미를 가지는 단어이다.
// 특정 문맥이 아닌 곳에서는 식별자로 사용할 수 있다.
// 다트에는 문맥 키워드라고 부르는 5가지 키워드(sync, async, hide, on, show)가 있다.
