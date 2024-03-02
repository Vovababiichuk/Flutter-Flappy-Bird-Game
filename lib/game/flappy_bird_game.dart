import 'package:bird_game_app/components/background.dart';
import 'package:bird_game_app/components/bird.dart';
import 'package:bird_game_app/components/ground.dart';
import 'package:bird_game_app/components/pipe_group.dart';
import 'package:flame/game.dart';

class FlappyBirdGame extends FlameGame {
  // створимо экземпляр класу bird
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);
  }
}
