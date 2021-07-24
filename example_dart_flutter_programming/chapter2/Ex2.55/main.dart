void main() {
  var person = Person();
  print(person.getName<String>('Kim'));
}

class Person {
  T getName<T>(T param) { // getName() 메서드의 리턴 타입과 매개변수가 제네릭 타입으로 지정되었다.
    return param;
  }
}