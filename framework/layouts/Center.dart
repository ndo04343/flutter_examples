// Column 위젯의 Child 위젯을 가로방향으로 중앙에 두려면 Center를 써야함.
// Row    위젯의 Child 위젯을 세로방향으로 중앙에 두려면 Center를 써야함.

Center(
        child: Column(
          children: <Widget> [
            Text("1"),
            Text("2"),
            Text("3"),
          ],
        ),

Center(
        child: Row(
          children: <Widget> [
            Text("1"),
            Text("2"),
            Text("3"),
          ],
        ),
      )