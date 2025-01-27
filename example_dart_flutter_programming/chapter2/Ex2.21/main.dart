// 비트 & 시프트 연산자(&, |, ^, ~, <<, >>)
main() {
  int a = 0x03; // 0011
  int b = 0x01; // 0001

  print('a = $a'); // 0011
  print('a << 1 = ${a << 1}'); // a의 비트 값(0011)을 왼쪽으로 1번 이동: 0110
  print('a >> 1 = ${a >> 1}'); // a의 비트 값(0011)을 오른쪽으로 1번 이동: 0001

  print('a & b = ${a & b}'); // 0011 & 0001 = 0001
}