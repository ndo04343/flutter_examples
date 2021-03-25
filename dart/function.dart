//
// 1. Functions
// 2. Lambda syntax
// 3. String function

// Function
int add(int a, int b) {
  return a + b;
}

void main() {
  List ages = [10, 11, 12];

  // Lambda
  var list = ages.where((age) => age > 10); // Filter function
  // age를 가져오는데, 그 age는 10보다 크다.
  list.forEach(print); // 함수를 인자로 넘길 수 있음.
  // list의 인자를 각각 print에 넣어서 함수 사용.
  ages.where((element) => element > 10).forEach(print); // 이렇게 많이씀.

  // String Function
  String name = 'abcdefg';
  print(name.contains('abc')); // true
}
