main() {
  var number = 10;
  // 최상위 클래스인 Object 를 사용하면 dynamic 처럼 초기화 이후에도 다른 타입을 값으로 가질 수 있다.
  Object balanceA = 1000;

  dynamic balanceB = 2000;
  print('The number is $number.');
  print('The balanceA is $balanceA.');
  print('The balanceB is $balanceB.');

  balanceA = '천'; // 타입을 정수에서 문자열로 변경
  balanceB = false; // 타입을 정수에서 Boolean 으로 변경
  print('The balanceA is $balanceA.');
  print('The balanceB is $balanceB.');
}
