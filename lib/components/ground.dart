import 'package:bird_game_app/game/assets.dart';
import 'package:bird_game_app/game/configuration.dart';
import 'package:bird_game_app/game/flappy_bird_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';

class Ground extends ParallaxComponent<FlappyBirdGame> {
  Ground();

  @override
  Future<void> onLoad() async {
    final ground = await Flame.images.load(Assets.ground);
    parallax = Parallax([
      ParallaxLayer(
        ParallaxImage(ground, fill: LayerFill.none),
      )
    ]);
  }

  // оновлення щодо часу гри
  // dt - дельта... один цикл гри...
  @override
  void update(double dt) {
    super.update(dt);
    // baseVelocity - вектор швидкості (х)
    // - "?." перевіряє, чи не є parallax нульовим (null), перш ніж спробувати доступ до його властивостей чи методів.
    parallax?.baseVelocity.x = Config.gameSpeed;
  }
}
