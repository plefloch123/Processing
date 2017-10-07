Game game;

void setup () {

  size (800, 500);
  game = new Game();
  noStroke ();
}


void draw () {

  background (100);
  game.tick();
  game.draw();
}

void keyPressed()
{

  if (keyCode == UP || keyCode == DOWN) {
   println("Stop player 1 and stop player 2");
  
    
  }if (key == 'w' || key == 's') {
    println("Stop p1 p2");
    
  }
}