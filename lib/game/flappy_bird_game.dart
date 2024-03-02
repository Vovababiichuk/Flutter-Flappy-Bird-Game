import 'package:bird_game_app/components/background.dart';
import 'package:bird_game_app/components/ground.dart';
import 'package:flame/game.dart';

class FlappyBirdGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
    ]);

  }
}
