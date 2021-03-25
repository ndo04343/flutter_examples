/*
1. Dynamically assigning
2. Statically assigning
3. Data types
4. const and final
*/

void main() {
  //
  // Dynamically
  var name = "Voyager I"; // string
  var year = 1997; // integer
  var antennaDiameter = 3.7; // float
  var flybyObjects = [
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
  ]; // list
  var iamge = {
    'tags': ['saturn'],
    'url': '/path/to/saturn.jpg',
  };

  // Statically
  bool visible =
      true; // Error: A value of type 'int' can't be assigned to a variable of type 'bool'.(When we assign 20(int))

  // Type
  int myint;
  bool mybool;
  double mydouble;
  String str;
  List list;
  Map map = {'key': 'value'};

  // const는 컴파일할 때 대입된다.
  // final은 실행될 떄 대입된다.
  // 둘다 값 못 바뀜
}
