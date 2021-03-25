//
// Builder 위젯 사용하여 스낵바 사용

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext ctx) {
          // 이제 이친구는 context를 가짐
          return Center(
            child: FlatButton(
              // 일단 버튼인데 입체감없이 flat한 버튼
              child: Text(
                'Show me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
              onPressed: () {
                //SnackBar는 공식문서에서
                // Scaffold.of(context).showSnackBar() 를 사용하라고 함.
                // 여기서 of는 현재 주어진 context에서 위로 올라가면서 가장 가까운
                // Scaffold를 찾아서 반환하라 라는 의미
                //
                // ex) Something.of(context)는 현재 context에서 위로 올라가면서 가장 가까운
                //     Something을 반환하라는 의미
                //

                // 이렇게 하면 Scaffold를 못찾음
                // 왜냐하면 context가 지금은 MyPage거임
                // MyPage의 부모클래스 방향으로 올라가면 Scaffold가 없음
                // (Widget tree 생각 ㄱㄱ)

                // 그래서 Builder라는 위젯을
                // Scaffold 바로 밑에 놓아서 해결
                Scaffold.of(ctx).showSnackBar(
                  SnackBar(
                    content: Text("Snack bar is in here!"),
                  ),
                ); // 이렇게 해결
              },
            ),
          );
        },
      ),
    );
  }
}

// -----------------------------------------------------------------------------
//
// Builder 위젯 없이 스낵바 사용 & 커스텀 스낵바
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(
              "Snackbar is in here!",
              textAlign: TextAlign.center, // 텍스트를 중앙에 배치
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.teal, // Snackbar의 배경색
            duration: Duration(milliseconds: 1000), // Snackbar의 팝업 기간
          ));
        },
      ),
    );
  }
}
