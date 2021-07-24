main() {
  int a = 10;
  int b = 20;

  if (a < b) {
    print('$a < $b');
  } else {
    print('$a >= $b');
  }

  // assert 는 조건식이 거짓이면 에러가 발생한다.
  // debug 모드에서만 동작하므로 release mode(production mode)에서는 에러가 발생하지 않는다.
  assert(a > b);

  var port = [22, 25, 53];
  switch (port[0]) {
    case 22:
      print('SSH : 22');
      break;
    case 25:
      print('SMTP : 25');
      break;
    case 53:
      print('DNS : 53');
      break;
  }
}