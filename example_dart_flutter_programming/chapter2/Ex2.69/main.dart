import 'dart:async';

main() {
  print('start');

  var stream = getData(); // 함수를 통해 stream 을 생성
  stream.listen((x) => print(x));

  print('do something');
}

Stream<int> getData() async* { // 제너레이터 함수인 getData()를 구현
  for (int i = 0; i < 5; i++) {
    yield i;
  }
}
// 제너레이터(Generator) 함수는 반복 가능한 함수
// 보통 함수는 return 을 맞이하면 종료되나, 제너레이터 함수는 return 대신 yield 를 사용
// 비동기 함수와 비슷하게 함수 뒤에 async*라는 키워드를 붙여서 만듦
// 리턴 타입은 Stream, 다시 말하면 Stream 함수를 만들기 위해서 async*를 사용하는 것