main() {
  int a = 11;
  int b = 5;

  print('$a / $b = ${divide(a, b)}'); // 11 / 5 = 2.2
  print('$a ~/ $b = ${divideQuotient(a, b)}'); // 11 ~/ 5 = 2
  print('$a % $b = ${divideModulo(a, b)}'); // 11 % 5 = 1
}

double divide(_a, _b) {
  return _a / _b;
}

int divideQuotient(_a, _b) {
  return _a ~/ _b; // A ~/ B: A를 B로 나눴을 때 몫을 정수로 구한 값. /로 구한 몫은 실수일 수도 있다.
}

int divideModulo(_a, _b) {
  return _a % _b;
}