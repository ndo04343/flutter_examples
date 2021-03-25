import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        // Drawer 객체(AppBar 좌측에 자동으로 버튼 생김)
        child: ListView(
          padding: EdgeInsets.zero, // 여백이 필요없으니 이렇게 ㄱㄱ
          children: <Widget>[
            // 일단 헤더부분
            UserAccountsDrawerHeader(
              // Drawer Header용 유저 정보 위젯
              // Required arguments
              accountName: Text("HEESUNG"),
              accountEmail: Text("leibniz21c@gmail.com"),
              // Additive arguments
              currentAccountPicture: CircleAvatar(
                // 현재 사용자의 이미지
                backgroundImage: AssetImage('assets/dynamic.gif'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                // 다른 사용자의 이미지
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dynamic.gif'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dynamic.gif'),
                  backgroundColor: Colors.white,
                ),
              ],
              onDetailsPressed: () {
                // 버튼 아님 그냥 함수로 넣으면 자동으로 우측에 열리는거 뜸
                print('[DEBUG] : arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200], // 핑크색으로 조정하기
                borderRadius: BorderRadius.only(
                  // 좌우 하단에 동그랗게 만들기
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),

            // 여기서 부터 바디부분
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ), // 왼쪽에 아이콘 만들기.
              title: Text('Home'),
              onTap: () {
                print('[DEBUG] : Home is clicked');
              },
              trailing: Icon(Icons.add), // 오른쪽에 아이콘 만들기
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ), // 왼쪽에 아이콘 만들기.
              title: Text('Setting'),
              onTap: () {
                print('[DEBUG] : setting is clicked');
              },
              trailing: Icon(Icons.add), // 오른쪽에 아이콘 만들기
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ), // 왼쪽에 아이콘 만들기.
              title: Text('Q&A'),
              onTap: () {
                print('[DEBUG] : Q&A is clicked');
              },
              trailing: Icon(Icons.add), // 오른쪽에 아이콘 만들기
            ),
          ],
        ),
      ),
    );
  }
}
