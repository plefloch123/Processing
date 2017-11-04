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
    
    if (isMoving) {
      
      if (direction == MovementDirection.UP) {
        
           y -= 5;
          if (y < 0){  
          y = 0;
          isMoving = false;
        }
        
      } else {
        
         y += 5;
         if (y > 360){
           y = 360;
           isMoving = false;
      } 
    
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