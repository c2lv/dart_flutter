main() {
  Map<int, String> testMap = {1: 'Red', 2: 'Orange', 3: 'Yellow'};
  testMap[4] = 'Green';

  // 키 1의 값을 'NewRed' 로 바꾼다. ifAbsent 는 변경하고자 하는 키가 없을 때 해당 키와 값을 추가하도록 설정하는 것이다.
  testMap.update(1, (value) => 'NewRed', ifAbsent: () => 'NewColor');
  // 키 5는 존재하지 않는다. 따라서 키 5가 추가되면서 값은 ifAbsent 에서 지정한 'NewColor' 가 된다.
  testMap.update(5, (value) => 'NewBlue', ifAbsent: () => 'NewColor');

  print(testMap[1]);
  print(testMap[5]);

  print(testMap);
}