int NUM_DROPS = 400;

Drop[] drops = new Drop[NUM_DROPS];

void setup() {
  size(800, 500);
  
  for (int i = 0; i < NUM_DROPS; ++i) {
    drops[i] = new Drop(); 
  }
}

void draw() {
  background(25);
  for (int i = 0; i < NUM_DROPS; ++i) {
    drops[i].fall();
    drops[i].show();
  }
}
