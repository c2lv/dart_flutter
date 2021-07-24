main() {
  print('${getAddress('서울')}'); // 서울시 강남구 111222
  print('${getAddress('서울', '서초')}'); // 서울시 서초구 111222
  // 매개변수 위치를 꼭 고려해야 한다.
  print('${getAddress('서울', '012345')}'); // 서울시 012345구 111222
  // 필수 매개변수(city)는 꼭 인자 값을 줘야 한다. 9줄 코드 주석 해제 시 하단 에러가 발생한다.
  // bin/main.dart:9:22: Error: Too few positional arguments: 1 required, 0 given.
  // bin/main.dart:13:8: Context: Found this candidate, but the arguments don't match.
  // print('${getAddress()}');
}

// [] 괄호 안에 있는 district, zipCode 가 위치적 선택 매개변수
String getAddress(String city, [String district = '강남', String zipCode = '111222']) {
  return '$city시 $district구 $zipCode';
}