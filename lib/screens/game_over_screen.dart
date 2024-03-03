import 'package:bird_game_app/game/assets.dart';
import 'package:bird_game_app/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GameOverScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'GameOver';

  const GameOverScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black38,
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(Assets.gameOver),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onRestart,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
              ),
              child: const Text(
                'Restart',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            )
          ]),
        ));
  }

  void onRestart() {
    game.bird.reset();
    game.overlays.remove('gameOver');
    game.resumeEngine();
  }
}
