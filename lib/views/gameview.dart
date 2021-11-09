import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:mvc/controllers/gamecontroller.dart';
import 'package:mvc/models/gamemodel.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Click button to get new word"),
          MomentumBuilder(
            controllers: const [GameController],
            builder: (context, snapshot) {
              var model = snapshot<GameModel>();
              return Text(
                model.word,
                style: const TextStyle(fontSize: 30),
              );
            },
          ),
          MomentumBuilder(
            controllers: const [GameController],
            builder: (context, snapshot) {
              var model = snapshot<GameModel>();
              return Text(
                model.formatWord(),
                style: const TextStyle(fontSize: 30),
              );
            },
          ),
          ElevatedButton(
            onPressed: Momentum.controller<GameController>(context).nextWord,
            child: const Text("Next Word"),
          )
        ],
      ),
    );
  }
}
