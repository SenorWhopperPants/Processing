int MAX_THICK = 4;
int MIN_THICK = 1;
int MAX_SPEED = 5;
int MIN_SPEED = 2;
int MAX_LEN   = 10;
int MIN_LEN   = 5;
float GRAV    = 0.01;

class Drop {
   float x;
   float y;
   float z;
   float grav;
   float y_speed;
   float len;
   float thick;
   
   Drop() {
     /* create starting coordinates */
     x = random(0, width);
     y = random(-50, height);
     z = random(0, 20);
     /* set physical attributes */
     thick = map(z, 0, 20, MAX_THICK, MIN_THICK);
     y_speed = map(z, 0, 20, MAX_SPEED, MIN_SPEED);
     len = map(z, 0, 20, MAX_LEN, MIN_LEN);
   }
   
   
   void fall() {
     /* make the drop fall and speed up by the grav value */
     y += y_speed;
     y_speed += GRAV;
     
     /* check if the drop has reached the bottom of the screen */
     if (y > height) {
       /* reset coordinates and speed */
       y = random(-50, 0);
       x = random(0, width);
       z = random(0, 20);
       thick = map(z, 0, 20, MAX_THICK, MIN_THICK);
       y_speed = map(z, 0, 20, MAX_SPEED, MIN_SPEED);
       len = map(z, 0, 20, MAX_LEN, MIN_LEN);
     }
   }
   
   void show() {
     /* set the color and draw the drop */
     stroke(#3AC484);
     strokeWeight(thick);
     line(x, y, x, y + len);
   }
   
  
}
