import 'dart:async';

main() {
  print('start');

  var stream = Stream.periodic(Duration(seconds: 1), (x) => x + 1).take(3);
  stream.listen(print);
 // stream.listen(print); // error // broadcast 가 아닌 stream 에 listen 을 2개 등록하면 에러 발생

  StreamController streamCtrl = StreamController.broadcast(); // StreamController 를 만들 때 broadcast 로 생성
  streamCtrl.stream.listen((x) => print('listen 1 = $x'));
  streamCtrl.stream.listen((x) => print('listen 2 = $x')); // 하나의 stream 에 listen()을 2개 등록(broadcast 라 가능)

  streamCtrl.add(100);
  streamCtrl.add(200);
  streamCtrl.add(300);
  streamCtrl.close();

  print('do something');
}