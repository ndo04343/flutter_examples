import 'package:flame/flame.dart';
import 'package:flutter/material.dart';

import 'my_game.dart';

Size size;

void main() async {
  // 바인딩 초기화부터 해야하니까
  WidgetsFlutterBinding.ensureInitialized();
  // 기기의 사이즈 가져오기
  size = await Flame.util.initialDimensions();

  runApp(MyGame().widget);
}