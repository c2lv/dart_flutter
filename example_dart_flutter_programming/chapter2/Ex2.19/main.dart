main() {
  int a = 10;
  int b = 10;
  double c = 10;
  int d = 10;
  a = a + 5;
  b += 5;
  c /= 3;
  d ~/= 3;

  print('a = $a'); // a = 15
  print('b = $b'); // b = 15
  print('c = $c'); // c = 3.3333333333333335
  print('d = $d'); // d = 3
}