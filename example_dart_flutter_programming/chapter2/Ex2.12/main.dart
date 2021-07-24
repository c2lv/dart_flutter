// final 은 런타임에 상수가 되고 const 는 컴파일 시점에 상수가 된다.
main() {
  // final 은 런타임에 상수화되기 때문에 실행하면 get() 함수에서 가져온 값으로 할당이 가능
  final int NUMBER = get();
  // const 는 컴파일 시점에 상수화되었기 때문에 런타임 시 get() 함수에서 가져온 값을 할당하려고 하면 에러가 발생
  // 상수에 값을 할당하려는 것과 동일한 시도이기 때문
  const int PRICE = get(); // bin/main.dart:7:21: Error: Method invocation is not a constant expression.

  print('The NUMBER is $NUMBER.'); // The NUMBER is 100.
  print('The PRICE is $PRICE.');
}

get() {
  return 100;
}