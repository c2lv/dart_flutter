import 'dart:isolate';

main() {
  int counter = 0;

  ReceivePort mainReceivePort = new ReceivePort(); // main isolate 에서 사용할 ReceivePort 인 mainReceivePort 를 생성

  mainReceivePort.listen((fooSendPort) { // mainReceivePort 에서 message 를 수신하는 listen 을 선언
    if (fooSendPort is SendPort) { // 만약 수신한 message 가 SendPort 타입이면
      fooSendPort.send(counter++); // 해당 SendPort 로 counter 변수를 message 로 하여 send
    } else { // 수신한 message 가 sendPort 타입이 아니면
      print(fooSendPort); // 26줄에서 전달된 String 을 받아서 출력
    }
  });

  for (var i = 0; i < 5; i++) {
    Isolate.spawn(foo, mainReceivePort.sendPort); // 5개의 isolate 생성
  }
}

foo(SendPort mainSendPort) {
  ReceivePort fooReceivePort = new ReceivePort(); // 새로 생성된 isolate 의 ReceivePort 인 fooReceivePort 를 생성
  mainSendPort.send(fooReceivePort.sendPort); // isolate 생성 시 전달받은 main isolate 의 SendPort 를 이용하여 main isolate 에 새로 생성된 isolate 의 sendPort 전달

  fooReceivePort.listen((msg) {
    mainSendPort.send('received: $msg'); // main isolate 에서 받은 message(counter 변숫값)를 'received: $msg' 형태의 String 으로 만들어 다시 main isolate 로 보냄
  });
}