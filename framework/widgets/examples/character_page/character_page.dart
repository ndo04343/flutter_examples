import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Debugging 표시 지우기
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text('BBANTO'),
          backgroundColor: Colors.amber[700],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/dynamic.gif'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0, // Divider 자체가 아니라, 이거 위 아래 합쳐서 60이란뜻
                color: Colors.grey[850],
                thickness: 0.5, // 두께 설정
                endIndent: 30, // 맨 끝에서 얼마나 떨어질 지 선택(상위 패딩에서 30했으니 30)
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, // 텍스트 간격 조절 (2.0)
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'BBANTO',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold // 글자의 굵기 조절(볼드체)
                    ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'BBANTO POWER LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0, // 텍스트 간격 조절 (2.0)
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold // 글자의 굵기 조절(볼드체)
                    ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'using lightsaber',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'face hero tatto',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'fire flames',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/static.png'),
                  radius: 40.0,
                  backgroundColor: Colors.amber[800], // 같은 값을 줌으로서 투명을 표시
                ),
              )
            ],
          ),
        ));
  }
}
