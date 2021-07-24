main() {
  List<dynamic> list1 = [1, 2.5, 'test']; // List 에 들어가는 데이터 타입이 dynamic
  dynamic list2 = [1, 2.5, 'test'];
  list2 = 1;
  var list3 = [1, 2.5, 'test'];
  // list3 = 1;

  for (int i = 0; i < list1.length; i++) {
    print(list1[i]);
  }
  print(list1.length); // list1.length: list 의 크기(list1 에 포함된 요소의 수), 3
}