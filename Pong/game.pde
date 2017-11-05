enum Side {

  LEFT, RIGHT,
}

class Game {

  Player player1;
  Player player2;
  Ball ball;
  int a=0;
  int rightscore = 0;
  int leftscore = 0;
  boolean gameover = false;

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

    if (ball.xpos < player1.x && ball.ypos >= player1.y && ball.ypos <= player1.y + player1.barLength ) {
      
      ball.xdirection *= -1.125;
      
    }

    if (ball.xpos > player2.x && ball.ypos >= player2.y && ball.ypos <= player2.y + player2.barLength ) {
      
      ball.xdirection *= -1.125;
      
    }

    if (ball.xpos > 0 &&  ball.xpos <800) {
      
      gameover = false;
      
    } else {
      
      gameover = true;
      background(100);
      ball.xdirection = 0;
      ball.ydirection = 0;
      textSize(18);
      text("      Right Player's Score: "+rightscore, 15, 290);
      text("      Left Player's Score: "+leftscore, 15, 330);
      textSize(36);
      text("   Game over! Press R to restart.", 15, 250);
      
    }

    if (ball.xpos < 0) {
      
      ball.xpos = 0;
      leftscore++;
      
    }

    if (ball.xpos > 800) {
      
      ball.xpos = 800;
      rightscore++;
      
    }
  }

  void draw () {

    player1.draw();
    player2.draw();
    ball.draw();
    
  }
}