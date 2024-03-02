import 'package:bird_game_app/game/assets.dart';
import 'package:bird_game_app/game/bird_movement.dart';
import 'package:bird_game_app/game/flappy_bird_game.dart';
import 'package:flame/components.dart';

class Bird extends SpriteGroupComponent<BirdMovement>
    with HasGameRef<FlappyBirdGame> {
  Bird();

  @override
  Future<void> onLoad() async {
    final birdMidFlap = await gameRef.loadSprite(Assets.birdMidFlap);
    final birdUpFlap = await gameRef.loadSprite(Assets.birdUpFlap);
    final birdDownFlap = await gameRef.loadSprite(Assets.birdDownFlap);

    size = Vector2(50, 40);
    // поточний стан для руху птаха
    current = BirdMovement.middle;
    position = Vector2(50, 50);
    sprites = {
      BirdMovement.middle: birdMidFlap,
      BirdMovement.up: birdUpFlap,
      BirdMovement.down: birdDownFlap,
    };
  }
}
