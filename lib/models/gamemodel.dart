import 'package:momentum/momentum.dart';
import 'package:mvc/controllers/gamecontroller.dart';

class GameModel extends MomentumModel<GameController> {
  final String word;

  GameModel(
    GameController controller, {
    required this.word,
  }) : super(controller);

  @override
  void update({String? word}) {
    GameModel(
      controller,
      word: word ?? this.word,
    ).updateMomentum();
  }

  String formatWord() {
    String format = '';
    for (int i = 0; i < word.length; i++) {
      format = format + "*";
    }
    return format;
  }
}
