// 상수는 값을 바꿀 수 없는 변수이다.
// final, const 를 사용하여 만들 수 있다.
// 리터럴과 상수는 값이 변경되지 않는다는 공통점이 있지만
// 리터럴은 값 그 자체이고 상수는 그 값을 가진 후 값이 변경되지 않는 변수라는 차이가 있다.
main() {
  final int NUMBER = 1; // 1은 리터럴, NUMBER 는 상수
  const int PRICE = 1000;

  final NAME = 'Kim'; // 타입 생략 가능
  const COLOR = 'Red'; // 타입 생략 가능

  print('The NUMBER is $NUMBER.') // The NUMBER is 1.
  print('The PRICE is $PRICE.'); // The PRICE is 1000.

  print('The NAME is $NAME.'); // The NAME is Kim.
  print('The COLOR is $COLOR.'); // The COLOR is Red.
}