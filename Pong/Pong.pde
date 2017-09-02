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
  if (keyCode == UP)
  {
    println ("moveUpPlayer2()");
  
  }else if (keyCode == DOWN ){
    println ("moveDownPlayer2()");
    
  }else if ( key == 'w'){
    println (" moveUpPlayer1()");
    
  }else if ( key == 's'){
    println ("moveDownPlayer1()");
  }
}