import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      appBar: AppBar(title: Text('App bar'),),
      body: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
        margin: EdgeInsets.symmetric( // 마진 추가
            vertical: 50,
            horizontal: 100
        ),
        padding: EdgeInsets.all(10),
        child: Text('Hello',
          style: TextStyle(backgroundColor: Colors.red),
        ),
      ),
    );
  }
}
