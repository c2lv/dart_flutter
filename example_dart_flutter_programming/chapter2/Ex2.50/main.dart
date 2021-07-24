main() {
  Set<dynamic> testSet = {1, 2.5, 'test'};
  testSet.add(1);
  testSet.add(1);
  testSet.add(1);
  testSet.add(3);
  testSet.add(2);
  testSet.add('korea');
  testSet.add('korea');
  testSet.add('korea');


  print('-----Start of testSet-----');
  for(dynamic each in testSet) {
    print(each);
  }
  print('------End of testSet------');
}
// Set 은 List 와 비슷하나 차이점이 있다.
// Set 은 초깃값을 넣을 때 [] 대신 {}를 사용한다.
// 중복된 요소를 허용하지 않기 때문에 같은 값을 여러 번 추가해도 단 하나만 존재한다.
// 데이터(요소)의 순서가 없기 때문에 인덱스로는 접근할 수 없다. 따라서 관련 메서드와 프로퍼티를 사용할 수 없다.
// (indexOf(), removeAt(), sort(), reversed 등)