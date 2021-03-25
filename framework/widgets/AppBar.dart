
AppBar(
        title: Text('AppBar'),
        centerTitle: true, // 중앙으로 옮기기
        backgroundColor: Colors.redAccent, // 배경색깔 선택
        elevation: 0.0, // 떠있는 효과 선택(이렇게 하면 앱바가 바닥에 붙어있음)
      ),


AppBar(
        title: Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton( // AppBar title 왼쪽에 작은 위젯을 위치시키는 인자
          icon: Icon(Icons.menu),
          onPressed: () {
            print('[DEBUG] : menu button is clicked.');
          },
        ),
        actions: <Widget> [ // AppBar title 오른쪽에 작은 위젯을 위치시키는 인자
          IconButton( 
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('[DEBUG] : shopping cart button is clicked.');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('[DEBUG] : search button is clicked.');
            },
          ),
        ],
      ),