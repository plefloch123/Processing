enum Side {
  
  LEFT, RIGHT,

}

class Game {
  Player player1;
  Player player2;
  int a=0;

  void moveUpPlayer1() {
  }
  void moveDownPlayer1() {
  }
  void stopPlayer1() {
  }
  
  void moveUpPlayer2() {
  }
  void moveDownPlayer2() {
  }
  void stopPlayer2() {
  }

  public Game() {
    player1 = new Player(Side.LEFT);
    player2 = new Player(Side.RIGHT);
  }

  void tick () {

    player1.tick();
    player2.tick();
  }

  void draw () {
    player1.draw();
    player2.draw();

  }
}