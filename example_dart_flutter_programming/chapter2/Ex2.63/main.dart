main() async { // 비동기(async) 함수 main
  print('start');

  // 비동기 함수 내에서 await 가 붙은 작업은 해당 작업이 끝날 때까지 다음 작업으로 넘어가지 않고 기다림
  var myFuture = await getData();

  print('result : $myFuture');

  print('do something');
}

Future<String> getData() {
  var test = Future(() {
    for (int i = 0; i < 10000000000; i++) {
      // Ten billion times. My PC takes about four seconds.
    }
    return 'I got a lot of data! There are 10000000000.';
  });
  return test;
}