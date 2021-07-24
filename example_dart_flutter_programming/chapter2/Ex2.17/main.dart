// 다트 공식 문서에서는 익명 함수를 람다 또는 클로저(closure)라고도 부른다.
main() {
  int a = 10;
  int b = 5;

  print('$a + $b = ${add(a, b)}'); // 10 + 5 = 15
  print('$a * $b = ${multi(a, b)}'); // 10 * 5 = 50
  print('$a - $b = ${sub(a, b)}'); // 10 - 5 = 5
}

int add(int a, int b) {
  return a + b;
}

// 익명 함수(anonymous function)
var multi = (_a, _b) {
  return _a * _b;
};

// 람다(lambda)
// int sub(int _a, int _b) => _a - _b;
sub(_a, _b) => _a - _b;