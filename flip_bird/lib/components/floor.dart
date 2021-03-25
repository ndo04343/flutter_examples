import 'dart:ui';

import 'package:flame/components/component.dart';
import 'package:flame/position.dart';
import 'package:flame/sprite.dart';
import 'package:flip_bird/main.dart';

class Floor extends Component {
  double xSize = 0;
  double ySize = 0;
  double xPos = 0;

  Sprite _floorSprite = Sprite('floor.png');

  // 그려주기, canvas는 그냥 화면을 이야기함. 그대로 주면됨.
  @override
  void render(Canvas c) {
    xSize = size.width * 2;
    ySize = xSize / 168 * 56; // 비율질

    // p는 어디에 위치시킬지
    // size: 는 정말 크기를 어떻게 할건지.
    _floorSprite.renderPosition(c, Position(xPos, size.height - ySize * 0.22),
        size: Position(xSize, ySize));
  }


  // 이동 ㄱㄱ 시간만큼
  @override
  void update(double t) {
    xPos -= t * 50;
    if (xPos.abs() >= size.width) {
      xPos = 0;
    }
  }

  Rect toRect() {
    // 새가 옆으로 나갈일이 없으니까 left는 걍 0
    // top position은 설정 ㄱㄱ 제대로
    return Rect.fromLTWH(0,  size.height - ySize * 0.22, xSize, ySize);
  }

}