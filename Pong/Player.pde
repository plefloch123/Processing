
class Player {

  Side side;

  int barLength = 140;
  int barWidth = 20;

  int x ;
  int y = height/2 - barLength/2;

  public void moveUp() {
  }
  public void moveDown() {
  }
  public void stop() {
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
  }

  void draw () {


    if (this.side == side.LEFT) {
      rect (x -barWidth, y, barWidth, barLength);
    } else {
      rect (x, y, barWidth, barLength);
    }
  }

}