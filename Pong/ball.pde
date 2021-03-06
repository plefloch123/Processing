class Ball {

  float xpos = 400;
  float ypos = random (125, 250);
  float rad = 20;

  float xspeed = 3.8;  // Speed of the shape
  float yspeed = 2.2;  // Speed of the shape

  float xdirection = random (-1, 1);  // Left or Right
  float ydirection = 1;  // Top to Bottom


  void draw() {
    
    ellipse( xpos, ypos, rad, rad);
    
  }

  void tick() {

    xpos = xpos + ( xspeed * xdirection  );
    ypos = ypos + ( yspeed * ydirection  );
    
    // Changes direction when hits the floor
    if (ypos > height-rad/2 || ypos < rad/2) {

      ydirection *= -1;
      
    }
    
  }
}