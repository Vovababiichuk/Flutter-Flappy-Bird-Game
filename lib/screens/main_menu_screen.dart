import 'package:bird_game_app/game/assets.dart';
import 'package:bird_game_app/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainMenuScreen extends StatelessWidget {
  // створимо єеземпляр...
  final FlappyBirdGame game;

  static const String id = 'mainMenu';

  const MainMenuScreen({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();

    return Scaffold(
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.menu),
            fit: BoxFit.cover,
          ),
        ),
        child: Image.asset(Assets.message),
      ),
    );
  }
}
