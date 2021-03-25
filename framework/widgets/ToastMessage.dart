// 외부 라이브러리임
/*
의존성 추가 ㄱㄱ

  fluttertoast: ^3.1.3

*/

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Toast message'),
          centerTitle: true,
        ),
        body: Center(
          child: FlatButton(
            child: Text('Toast!'),
            onPressed: () {
              flutterToast();
            },
            color: Colors.blue,
          ),
        ));
  }
}

// Toast 함수 선언하기
void flutterToast() {
  Fluttertoast.showToast(
    msg: 'This is a toast message!',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}
