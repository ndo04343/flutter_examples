const oneSecond = Duration(seconds: 1);

// Future쓸려면 async써야하고, await가 상식적으로 있어야함.
Future<int> printWithDelay(String message) async {
  print('기다리는중...');
  print('기다리는중...');
  print('기다리는중...');
  await Future.delayed(oneSecond);
  print(message);

  return 1;
}

void main() async {
  // async 키워드와 Future가 만나면 그에 맞는 리턴을 반환함.
  print(await printWithDelay('출력'));
  print('9');

  printWithDelay('출력');
  print('9');
  /*
  기다리는중...
  기다리는중...
  기다리는중...
  출력
  1
  9
  기다리는중...
  기다리는중...
  기다리는중...
  9
  출력
   */
}
