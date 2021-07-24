main() {
  print('start');

  // stream 생성
  // Stream.periodic()은 특정 주기로 반복적으로 이벤트를 발생하는 stream 을 만듦
  // 첫 번째 인자는 Duration 객체, 두 번째 인자는 이벤트에서 발생한 값을 계산하는 함수
  // Duration 은 1초 간격으로 설정, 계산 함수는 디폴트인 카운트 함수를 사용
  // 카운트 함수는 0부터 시작하여 1초에 1씩 증가
  // take(n): n회 반복
  var stream = Stream.periodic(Duration(seconds: 1), (x) => x).take(5);

  // stream 의 변화를 관찰하여 변화가 있을 대, 즉 새로운 데이터 입력 시 해당 데이터를 출력
  stream.listen(print);

  // 10, 13줄을 이어서 16줄처럼 사용할 수도 있음
  // var stream = Stream.periodic(Duration(seconds: 1), (x) => x).take(5).listen(print);

  print('do something');
}