enum Side {

  LEFT, RIGHT,
}

class Game {

  Player player1;
  Player player2;
  Ball ball;
  int a=0;

  void moveUpPlayer1() {

    player1.moveUp();
  }
  void moveDownPlayer1() {

    player1.moveDown();
  }
  void stopPlayer1() {

    player1.stop();
  }

  void moveUpPlayer2() {

    player2.moveUp();
  }
  void moveDownPlayer2() {

    player2.moveDown();
  }
  void stopPlayer2() {

    player2.stop();
  }

  void reset() {

    ball= new Ball();
  }

  public Game() {

    player1 = new Player(Side.LEFT);
    player2 = new Player(Side.RIGHT);
    ball = new Ball();
  }

  void tick () {

    player1.tick();
    player2.tick();
    ball.tick();

    if (ball.xpos < player1.x && ball.ypos >= player1.y ) {
      ball.xdirection *= -1;
      println(" I T I S D O I N G I T ");
    }

    if (ball.xpos > player2.x && ball.ypos >= player2.y ) {
      ball.xdirection *= -1;
      println(" I T I S D O I N G I T ");
    }
    
    if (ball.xpos < 0 ) {
    
     ball = new Ball();

    } 
    
    
    
  }

  void draw () {

    player1.draw();
    player2.draw();
    ball.draw();
  }
}