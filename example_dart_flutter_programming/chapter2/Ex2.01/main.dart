/* import 뒤에는 프로젝트 폴더(android_flutter)부터 라이브러리 파일(dartEx01.dart)까지 경로에서 lib 만 생략하고 맨 앞에 package:를 붙여준다
as 뒤에는 prefix 로 지정할 이름을 적는다. 파이썬, 자바와 비슷한 느낌 */
import 'package:android_flutter/dartEx01.dart' as dartEx01;

// 두 매개변수를 더하여 리턴하는 함수
add(int a, int b) { // 함수명 앞 리턴 타입은 생략 가능
  return a + b;
}

main() {
  var numberA = 10; // 다트 변수 선언은 var 키워드 사용. 자바스크립트와 비슷한 느낌
  var numberB = 25;
  var result = add(numberA, numberB);
  dartEx01.printResult(result); // 앞서 가져온 라이브러리 파일 내 함수 호출. 파이썬, 자바스러운 느낌

  // var 타입이 String 타입으로 지정된 후에는 int 타입을 참조할 수 없다. 반대의 경우에도 마찬가지.
  // 초기화하여 타입이 지정되는 순간 고정된다고 생각하면 될 듯.
  /*
  var name = "Kim";
  name = 100; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  */

  // 만약 타입이 예상되지 않는다는 것을 명시적으로 표현하고 싶을 때는 dynamic 키워드를 사용하면 된다.
  // 이것은 var 와 달리 하나의 변수가 여러 타입으로 변경 가능하다는 의미이다.
  dynamic name = "Kim";
  name = 100;
}
