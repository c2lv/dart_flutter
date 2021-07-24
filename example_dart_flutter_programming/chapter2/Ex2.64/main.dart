main() {
  print('start');
  // 하나의 데이터에 대한 이벤트를 발생하는 stream 생성
  // 100이란 정수형 데이터를 넘겨주면 곧바로 listen()에서 출력
  var stream = Stream.value(100).listen((dynamic x) => print('getData : $x'));

  print('do something');
}