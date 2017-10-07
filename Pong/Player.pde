
class Player {

  Side side;

  int barLength = 140;
  int barWidth = 20;

  int x ;
  int y = height/2 - barLength/2;

  public Player(Side side) {

    this.side = side;

    if (this.side == Side.LEFT) {
      x = 30;
    } else {
      x = width - 30;
    }
  }
  void tick () {

    println("Player Tick, side=" + side);
  }

  void draw () {


    if (this.side == side.LEFT) {
      rect (x -barWidth, y, barWidth, barLength);
    } else {
      rect (x, y, barWidth, barLength);
    }
  }
  
  void keyPressed(){
      
    if (keyCode == UP)
    {
      println ("moveUpPlayer2()");
      if (side == side.LEFT )
        x = x+1;
    } else if (keyCode == DOWN ){
    
      println ("moveDownPlayer2()");
      
    }else if ( key == 'w'){
      println (" moveUpPlayer1()");
      
    }else if ( key == 's'){
      println ("moveDownPlayer1()");
    }
  }
}