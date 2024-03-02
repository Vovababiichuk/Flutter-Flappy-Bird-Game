import 'package:bird_game_app/components/background.dart';
import 'package:flame/game.dart';

class FlappyBirdGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    add(Background());
  }
}
