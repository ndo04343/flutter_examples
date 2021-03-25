class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor
  // Case 1:
  Spacecraft(this.name, this.launchDate); // 이렇게 해도 바로작동함
  // Case 2:
  // Spacecraft(this.name, this.launchDate) {
  //   this.name = this.name + '님';
  // } // 자바틱

  // 메소드 다트틱
  // Spacecraft.unLaunched(String name) : this(name, null);

  int get launchYear => launchDate.year; // 이렇게 하면 get 전용 변수가됨.
}

class Person {
  String name;
  int age;
  String sex;

  // 생략 가능한 Argument 방식
  Person({String name, int age, String sex}) {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
}

void main() {
  // 그래서 이런식으로 쓰기가 가능.
  Person p1 = Person(
    name: 'Heesung',
    age: 10,
  );
}
