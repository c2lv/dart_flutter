main() {
  print('start');

  var myFuture = getData();

  // getData()의 작업이 끝나기 전에 리턴 값을 가져오므로
  // 결괏값이 없기 때문에 아래와 같이 리턴 변수의 타입을 출력
  // result : Instance of 'Future<String>'
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
