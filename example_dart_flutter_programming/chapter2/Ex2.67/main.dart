import 'dart:async';

main() {
  print('start');

  // StreamController 생성, StreamController 는 멤버로 stream 을 포함하고 있음
  StreamController streamCtrl = StreamController();
  // StreamController 로 만든 stream 에 대한 구독을 위한 listen 을 등록
  streamCtrl.stream.listen((x) => print(x));

  streamCtrl.add(100); // add 를 통해 이벤트 추가. 각 이벤트 발생 시 listen 에서 출력으로 처리
  streamCtrl.add('test');
  streamCtrl.add(200);
  streamCtrl.add(300);
  streamCtrl.close(); // stream 닫기

  print('do something');
}