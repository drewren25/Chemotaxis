Bacteria [] bob;
void setup(){
  size(600, 600);
  background(0);
  bob = new Bacteria[350];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}
void draw(){
  for(int i = 0; i <bob.length; i++)
  {
    bob[i].move();
    bob[i].show();     
  }
  fill(255, 20, 100);
  rect(0, 525, 600, 75);
  fill(255);
  text("RAINBOW BACTERIA!! ", 240, 550);
}
class Bacteria{
  int x, y;
  Bacteria(){
    x = 300;
    y = 300;
  }
  void move(){
    x = x + (int)(Math.random()*5)-2;
    y = y + (int)(Math.random()*5)-2;
  
  }
  void show(){
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse(x, y, 20, 20);
  }
}