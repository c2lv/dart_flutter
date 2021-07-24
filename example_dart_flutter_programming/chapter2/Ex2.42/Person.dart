class Person {
  String? name; // public
  int? _age; // private

  eat() { // public
    print('eat');
  }

  _sleep() { // private
    print('sleep');
  }
}
// 다트는 기본적으로 아무런 키워드가 없을 경우 접근 지정자가 public
// public 은 접근 범위에 제한 없이 모든 곳에서 접근 가능
// private 로 선언하기 위해서는 변수나 메서드 앞에 _(밑줄)을 붙여야 함
// private 은 동일 클래스 내에서만 접근 가능
