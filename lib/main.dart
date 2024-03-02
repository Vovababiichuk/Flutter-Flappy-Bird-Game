import 'package:bird_game_app/game/flappy_bird_game.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final game = FlappyBirdGame();
  runApp(
    GameWidget(game: game,),
  );
}
