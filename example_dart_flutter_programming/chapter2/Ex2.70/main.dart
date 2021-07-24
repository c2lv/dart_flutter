import 'dart:async';

main() {
  print('start');

  var stream = requestData(); // 서버에 데이터를 요청하는 Stream 함수를 통해서 stream 을 만듦
  stream.listen((String x) => print(x));

  print('do something');
}

Stream<String> requestData() async* { // 서버에 데이터를 요청했을 때의 상황을 표현한 예시 코드
  for (int i = 1; i < 5; i++) { // 약 1초 간격으로 4개의 이미지 하나씩 전달
    await Future.delayed(Duration(seconds: 1));
    yield 'image0$i';
  }
}
// 실제 서버가 존재하는 상황이 아니기 때문에 서버에 어떤 요청은 불가능
// 실제 환경이라면 서버에 데이터를 요청하면 4개의 이미지가 약 1초 간격으로 하나씩 전달되는
// Restful API 가 있어야 하고 거기서 전달받은 결과를 yield 로 stream 에 넣어주어야 함