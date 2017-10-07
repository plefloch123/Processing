enum Side {
  
  LEFT, RIGHT,

}

class Game {
  Player player1;
  Player player2;
  int a=0;


  public Game() {
    player1 = new Player(Side.LEFT);
    player2 = new Player(Side.RIGHT);
  }

  void tick () {
    a = a+1;
    println(a);

    player1.tick();
    player2.tick();
  }

  void draw () {
    player1.draw();
    player2.draw();

  }
}