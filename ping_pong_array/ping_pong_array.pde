block block0;
ball[] balls=new ball[3];
score score0;

//variables for the ball
float ballX=width*4; //the X-position is set
float ballY=height*4; // the Y-position is set
float ballR=60; //the radius is set

//variables for the rect.
int rectY=700; //the y-position is set
int rectW=100; //the width is set
int rectH=50; //the height is set

void setup(){
  size(880,800);
  block0=new block(rectY,rectW,rectH); //uses the ball class
  score0=new score(); //uses the score class
  //makes a for loop to make the balls
  for(int i=0;i<balls.length;i++){
  balls[i]=new ball(ballX+(i*ballR+20),ballY+i,ballR);
  }
}

void draw(){
background(#000000);
block0.display(); //displays the rect
score0.display(); //displays the score
//makes for loop to make more balls display, move and bounce
for(int i=0;i<balls.length;i++){
balls[i].display();
balls[i].move();
balls[i].bounce();
}
}
