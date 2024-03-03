import 'package:bird_game_app/components/background.dart';
import 'package:bird_game_app/components/bird.dart';
import 'package:bird_game_app/components/ground.dart';
import 'package:bird_game_app/components/pipe_group.dart';
import 'package:bird_game_app/game/configuration.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/components.dart';

class FlappyBirdGame extends FlameGame with TapDetector {
  FlappyBirdGame();

  // створимо экземпляр класу bird
  late Bird bird;
  Timer interval = Timer(Config.pipeInterval, repeat: true);

  @override
  Future<void> onLoad() async {
    addAll([
      Background(),
      Ground(),
      bird = Bird(),
      PipeGroup(),
    ]);

    interval.onTick = () => add(PipeGroup());
  }

  @override
  void onTap() {
    super.onTap();
    bird.fly();
  }

  @override
  void update(double dt) {
    super.update(dt);
    interval.update(dt);
  }
}
