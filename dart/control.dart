// 1. Conditional Statement
// 2. For loop : C style, Python style
// 3. While loop

void main() {

  //
  // Conditioanl statement
  if (true || true) { // We can use logical operation too!
    print('It is true.');
  } else if (false && false) {
    print('It is not true.');
  } else {
    print('It is false.');
  }


  //
  // For loop
  // Case 1:
  for (int i = 0 ; i < 10; i ++) {
    print('$i' + ' loop'); // Use like javascript.
  }
  // Case 2:
  List flybyObjects = [1, 2, 3, 4, '5'];
  for (var object in flybyObjects) {
    print(object);
  }

  //
  // While loop
  while (true) {
    print('In while...');
    break;
  }



}