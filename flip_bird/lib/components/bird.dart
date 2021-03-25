import 'package:flame/anchor.dart';
import 'package:flame/components/animation_component.dart';
import 'package:flame/flame.dart';

import '../main.dart';

// 화면에서 보여줄 사이즈
final double BIRD_WIDTH = 52;
final double BIRD_HEIGHT = 36.7;

// 중력가속도
final double GRAVITY = 1200;

// 움직이는 Component니까 Animation
class Bird extends AnimationComponent {
  // path에서 assets/images/ 이렇게 설정해두었으면 이거 알아서 찾음(Flame에서는) 그래서 그냥 bird.png
  // 3은 프레임이 3개라고 말해주는거임 걍.
  Bird() : super.sequenced(BIRD_WIDTH, BIRD_HEIGHT, 'bird.png', 3,
    textureWidth: 17, // 한 프레임의 가로길이 17이다.
    textureHeight: 12, // 한 프레임의 세로길이 12이다.
  );

  double velocity = 0.0;

  // 참고로 t는 시간임
  @override
  void update(double t) {
    super.update(t); // 이거 없으면 애니메이션 없어짐
    // 속도
    velocity += GRAVITY * t;

    // 일단 새의 기준점은 좌상단임.
    // 기준점을 중간으로 옮겨야함.
    this.anchor = Anchor.center; // 이게 기준점 중간으로 옮기는 거 끝.

    // x는 fix
    this.x = size.width / 2;

    // print(t); // 60fps임
    // 떨어지게 설정(가속도 공식 : 물리)
    this.y += (velocity * t) / 2;
  }

  void onTap() {
    this.velocity = -500;

    // 클릭시 소리가 나게
    Flame.audio.play('bubble_pop.mp3', volume: 0.5);
  }

}