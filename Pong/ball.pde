class Ball {

 float xpos = random (200,400);
 float ypos = random (125,250);
 float rad = 20;
  
float xspeed = 2.8;  // Speed of the shape
float yspeed = 2.2;  // Speed of the shape

int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom


  void draw(){
    
    xpos = xpos + ( xspeed * xdirection  );
    ypos = ypos + ( yspeed * ydirection  );
    //Draws circle
    ellipse( xpos, ypos,rad,rad);
    // Changes direction when hits the floor
    if (ypos > height-rad || ypos < rad) {
      ydirection *= -1;
    }
  
  }
}