main() {
  print('start');

  var myFuture = getData();
  myFuture.then((data) => print(data))
      // catchError 는 onError 와 에러를 처리한다는 관점에서 역할은 동일하지만
      // onError 는 future 에서 발생된 에러만 처리하고
      // catchError 는 then()의 첫 번째 인자인 익명 함수 내부에서 발생된 에러까지 처리할 수 있다.
      .catchError((e) => print(e));

  print('do something');
}

Future<String> getData() {
  return Future(() {
    for (int i = 0; i < 10000000000; i++) {
      // Ten billion times. My PC takes about four seconds.
    }
    return 'I got a lot of data! There are 10000000000.';
//    return throw Exception('Failed : data is too much');
  });
}
