// TODO
// player left to bounce a ball
// player right as above
// let ball through when it doesnt hit the player
// Create a new ball when the ball is off the screen and make it move
// Count points for each player
// Display scoreboard

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

void keyPressed(){

  if (keyCode == UP ) {
    
    game.moveUpPlayer2();
    
  } else if ( keyCode == DOWN) {

    game.moveDownPlayer2();
    
  } else if (key == 'w' ) {
    
    game.moveUpPlayer1();
    
  } else if (key == 's') {
    
    game.moveDownPlayer1();
    
  }
  //Incase caps lock is on it still works
  else if (key == 'W' ) {
    
    game.moveUpPlayer1();
    
  } else if (key == 'S') {
    
    game.moveDownPlayer1();
    
  }
  
  else if (key =='r'){
    game.reset();
  }
}

void keyReleased() {
  if (keyCode == UP || keyCode == DOWN) {
    
    game.stopPlayer2();
    
  } else if (key == 'w' || key == 's') {

    game.stopPlayer1();
    
  } 
}