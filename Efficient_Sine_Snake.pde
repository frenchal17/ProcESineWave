void setup(){
  size(500,400);
  background(255,255,255);
  //background(0,0,0);
}

float x = 0;
float c = 0.05;
float r = 7;
float a = 100;
float w = .8;
float t = 0;

void draw(){
 // background(255,255,255);
  a = 100 - (height / 2) + mouseY;
  x = x + c;
  fill(40,40,155 + 155 * sin(x));
  noStroke();
  for(t = 0; t < 125; t++){
    ellipse((4 * t) + 2, 200 - a * sin(x + (t / 10)), r, r);
  }
}

void mousePressed(){
  w = random(0,0.1);
}
