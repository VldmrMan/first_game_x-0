class GameRules {
  int carrent = 1;
  int winner = 0;

  int x1 = 0, x2 = 0, x3 = 0, x4 = 0, x5 = 0, x6 = 0, x7 = 0, x8 = 0, x9 = 0;

  GameRules() {
    x1 = 0;
    x2 = 0;
    x3 = 0;
    x4 = 0;
    x5 = 0;
    x6 = 0;
    x7 = 0;
    x8 = 0;
    x9 = 0;
  }

  GameRules.from(GameRules dataresourse) {
    this.carrent = dataresourse.carrent;

    this.x1 = dataresourse.x1;
    this.x2 = dataresourse.x2;
    this.x3 = dataresourse.x3;
    this.x4 = dataresourse.x4;
    this.x5 = dataresourse.x5;
    this.x6 = dataresourse.x6;
    this.x7 = dataresourse.x7;
    this.x8 = dataresourse.x8;
    this.x9 = dataresourse.x9;

    this.winner = dataresourse.winner;
  }
}
