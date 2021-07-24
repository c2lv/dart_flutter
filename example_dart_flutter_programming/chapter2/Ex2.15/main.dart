main() {
  print('${getAddress('서울', district: '강남')}'); // 서울시 강남구 111222
  print('${getAddress('서울', district: '강남', zipCode: '012345')}'); // 서울시 강남구 012345
  // print('${getAddress(district: '강남', zipCode: '012345')}'); // error
}

String getAddress(String city, {required String district, String zipCode = '111222'}) {
  return '$city시 $district구 $zipCode';
}