main() {
  int a = 10;
  int b = 5;

  print('${a + b} * ${a - b} = ${multi(add(a, b), sub(a, b))}'); // 15 * 5 = 75
}

int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

int multi(int a, int b) {
  return a * b;
}