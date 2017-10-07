enum MovementDirection {
UP, DOWN
}


class Player {

  Side side;

  int barLength = 140;
  int barWidth = 20;

  int x ;
  int y = height/2 - barLength/2;

  boolean isMoving = false;
  MovementDirection direction = MovementDirection.UP;
  
  public void moveUp() {
    
    direction = MovementDirection.UP;
    this.isMoving = true;
    
  }
  public void moveDown() {
    
    direction = MovementDirection.DOWN;
    this.isMoving = true;
    
  }
  public void stop() {
    
    this.isMoving = false;
    
  }

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
    
    if (isMoving) {
      if (direction == MovementDirection.UP) {
           y -= 5;
        } else {
           y += 5;
        }
      }
    }

  void draw () {


    if (this.side == side.LEFT) {
      rect (x -barWidth, y, barWidth, barLength);
    } else {
      rect (x, y, barWidth, barLength);
    }
  }

}