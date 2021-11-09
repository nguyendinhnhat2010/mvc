import 'package:momentum/momentum.dart';
import 'package:mvc/models/gamemodel.dart';

class GameController extends MomentumController<GameModel> {
  List listOfWord = ['swift', 'android', 'flutter'];
  int wordIndex = 0;

  @override
  GameModel init() {
    return GameModel(
      this,
      word: listOfWord[wordIndex],
    );
  }

  void nextWord() {
    wordIndex += 1;
    model.update(word: listOfWord[wordIndex]);
  }
}
