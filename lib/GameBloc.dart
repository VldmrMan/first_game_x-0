import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_firstapp/GameRules.dart';

enum GameEvetns {
  press1,
  press2,
  press3,
  press4,
  press5,
  press6,
  press7,
  press8,
  press9,
  update,
  serchwin,
  saawpplayer
}
GameRules gameRules = new GameRules();

class GameBloc extends Bloc<GameEvetns, GameRules> {
  GameBloc() : super(gameRules);

  @override
  Stream<GameRules> mapEventToState(GameEvetns event) async* {
    switch (event) {
      case GameEvetns.press1:
        gameRules.x1 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press2:
        gameRules.x2 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press3:
        gameRules.x3 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press4:
        gameRules.x4 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press5:
        gameRules.x5 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press6:
        gameRules.x6 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press7:
        gameRules.x7 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press8:
        gameRules.x8 = gameRules.carrent;
        _serchwinner();
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);

        yield newgamerules;
        break;

      case GameEvetns.press9:
        gameRules.x9 = gameRules.carrent;
        _serchwinner();
        _swap();
        GameRules newgamerules = new GameRules.from(gameRules);
        yield newgamerules;
        break;

      case GameEvetns.update:
        gameRules = new GameRules();
        GameRules newgamerules = new GameRules();

        yield newgamerules;

        break;

      case GameEvetns.serchwin:
        _serchwinner();
        GameRules newgamerules = new GameRules.from(gameRules);
        yield newgamerules;
        break;

      case GameEvetns.saawpplayer:
        _swap();

        GameRules newgamerules = new GameRules.from(gameRules);
        yield newgamerules;
        break;
    }
  }

  _swap() {
    switch (gameRules.carrent) {
      case 1:
        gameRules.carrent = 2;
        break;

      case 2:
        gameRules.carrent = 1;
        break;
    }
  }

  _serchwinner() {
    if (gameRules.x1 == gameRules.x2 &&
        gameRules.x2 == gameRules.x3 &&
        gameRules.x1 != 0) gameRules.winner = gameRules.x1;

    if (gameRules.x4 == gameRules.x5 &&
        gameRules.x5 == gameRules.x6 &&
        gameRules.x4 != 0) gameRules.winner = gameRules.x4;

    if (gameRules.x7 == gameRules.x8 &&
        gameRules.x8 == gameRules.x9 &&
        gameRules.x7 != 0) gameRules.winner = gameRules.x7;

    if (gameRules.x1 == gameRules.x4 &&
        gameRules.x4 == gameRules.x7 &&
        gameRules.x1 != 0) gameRules.winner = gameRules.x1;

    if (gameRules.x2 == gameRules.x5 &&
        gameRules.x5 == gameRules.x8 &&
        gameRules.x2 != 0) gameRules.winner = gameRules.x2;

    if (gameRules.x3 == gameRules.x6 &&
        gameRules.x6 == gameRules.x9 &&
        gameRules.x3 != 0) gameRules.winner = gameRules.x3;

    if (gameRules.x1 == gameRules.x5 &&
        gameRules.x5 == gameRules.x9 &&
        gameRules.x1 != 0) gameRules.winner = gameRules.x1;

    if (gameRules.x3 == gameRules.x5 &&
        gameRules.x5 == gameRules.x7 &&
        gameRules.x3 != 0) gameRules.winner = gameRules.x3;
  }
}
