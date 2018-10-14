class Flower{
//variables for flower
float r; //radius of the flower petal
int n_petals; //number of petals on the flower
float x; //x-positioin of the center of the petal
float y; //y-position of the center of the petal
int petalcolor;
//vairables for move
float speedX; //moving on the x-position
float speedY; //moving on the y-position

Flower(float temp_r,int temp_n_petals,float temp_x,float temp_y, int temp_petalcolor, float temp_speedX,float temp_speedY){
  r=temp_r; //sets that r equals temp r
  n_petals=temp_n_petals; //sets that n_petals equals temp_n_petals
  x=temp_x; //sets that x equals temp x
  y=temp_y; //sets that y equals temp y
  petalcolor=temp_petalcolor; //sets that petalcolor equals temp temp petalcolor
  speedX=temp_speedX; //sets that speedX equals temp speedX
  speedY=temp_speedY; //sets that speedY equals temp speedY
}

void Bounce(){
  //makes the flower bounce from the sides
if(x>=width-r/2||x<=0+r/2){
speedX=-speedX;
}
//makes the flower bounce from the top and bottom
if(y>=height-r/2||y<=0+r/2){
speedY=-speedY;
}
}
//makes the flower move  
void Move(){
  x=speedX+x;
  y=speedY+y;
}
//how the flower should look
  void Display(){
 float ballX;
float ballY;
 fill(petalcolor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  
  ballX= x + r*cos(i);
  ballY= y + r*sin(i);
  ellipse(ballX,ballY,r,r);
  
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);

}
}
