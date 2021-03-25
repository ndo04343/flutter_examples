import 'dart:ui';

// size 때문에
import 'main.dart';

import 'package:flame/components/component.dart';
import 'package:flame/game/base_game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/sprite.dart';

import 'components/bird.dart';
import 'components/floor.dart';

class MyGame extends BaseGame with TapDetector { // 이걸로 ㄱㄱ
  Bird _bird = Bird();
  Floor _floor = Floor();

  MyGame() { // 게임 안으로 해당 컴포넌트를 넣을거임.
    // 배경이미지(bg)를 Sprite로 생성해서 SpriteComponent로 만들고, 해당 컴포넌트를 게임에 add해준것 임.
    // .. 은 그냥 inplace하게 설정하고 그 객체 그냥 반환하는 느낌.
    this
      ..add(SpriteComponent.fromSprite(size.width, size.height, Sprite('bg.png')))
      ..add(_bird)
      ..add(_floor);
  }

  @override
  void onTap() {
    _bird.onTap();
  }

  @override
  void update(double t) {
    super.update(t);

    if (checkIf2CompCollision(_bird.toRect(), _floor.toRect())) {
      print('Game over!');
    }
  }

  // Rect는 직사각형을 의미
  bool checkIf2CompCollision(Rect item1, Rect item2) {
    var intersectedRect = item1.intersect(item2); // 겹치는 부분(Rect)의 Rect를 반환
    return intersectedRect.width > 2 && intersectedRect.height > 2; // 판정 ㅋㅋㅋㅋㅋ
  }

}