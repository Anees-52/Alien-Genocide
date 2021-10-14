PImage RocketShip;
PImage AlienShip;
PImage bomb;
PImage Clouds;


float vx;  //velocity of rocket
float yb1 = -2000;
float yb2 = -4000;
float yb3 = -6000;



void setup()
{
  size(750,250);
  RocketShip = loadImage("RocketShip.png");
  AlienShip  = loadImage("AlienShip.png");
  bomb = loadImage("bomb.png");
  Clouds = loadImage("Clouds.png");

}

void draw()
{
  background(#5AABF0);
  
  image(RocketShip,5+vx,50,100,50);
   vx++;
  
  image(AlienShip,125,175,100,50);
  image(AlienShip,325,175,100,50);
  image(AlienShip,550,175,100,50);
  
  
  if (vx > 125 && yb1 < 0)
    yb1 = 100;
    
    yb1++;
    
    if (vx > 325 && yb2 < 0)
    yb2 = 100;
    
    yb2++;
    
    if (vx > 550 && yb3 <0)
    yb3 = 100;
    
    yb3++;
  
  image(bomb,165,yb1,25,25);
  image(bomb,365,yb2,25,25);
  image(bomb,590,yb3,25,25);
  
  image(Clouds,50,5,120,50);
  image(Clouds,200,5,120,50);
  image (Clouds,400,5,120,50);
  image(Clouds,550,5,120,50);
  
  
}
