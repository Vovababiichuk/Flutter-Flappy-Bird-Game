import 'package:bird_game_app/game/configuration.dart';
import 'package:bird_game_app/game/flappy_bird_game.dart';
import 'package:bird_game_app/game/pipe_position.dart';
import 'package:flame/components.dart';

import 'pipe.dart';

class PipeGroup extends PositionComponent with HasGameRef<FlappyBirdGame> {
  PipeGroup();

  @override
  Future<void> onLoad() async {
    position.x = gameRef.size.x;

    addAll([
      Pipe(pipePosition: PipePosition.top, height: 100),
      Pipe(pipePosition: PipePosition.bottom, height: 200),
    ]);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= Config.gameSpeed * dt;
  }
}
