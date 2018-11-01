class ball{
  //variables for the ball
float ballX;     //X-position of the ball
float ballY;    //Y-position of the ball
float ballR;    //Radius of the ball
float speedX=5; //Speed for the x-position, is set to 5 as standard
float speedY=5; //Speed for the y-position, is set to 5 as standard

 
ball(float temp_ballX,float temp_ballY, float temp_ballR){
ballX=temp_ballX; 
ballY=temp_ballY;
ballR=temp_ballR;
}

//function to make the ball displayed
void display(){
ellipse(ballX,ballY,ballR,ballR);
}

//function to make the ball move
void move(){
  //makes the ball move on the x-axes
ballX+=speedX;
//makes the ball move on the y-axes
ballY+=speedY;
}

//function to make the ball move back when it reach a certain distance or object
void bounce(){
//Bounce of the sides 
if((ballX>=width-ballR/2)||(ballX<=0+ballR/2)){
speedX=-speedX;
}
//Bounce of the top
if(ballY<0+ballR/2){
speedY=-speedY;
}
//Bounce of the rect in the bottom
if((block0.rectX<ballX)&&(block0.rectW+block0.rectX>ballX)&&(block0.rectY<ballY+ballR/2)){
speedY=-speedY;
score0.point=score0.point+1; //when the ball hits the rect points go up with one
}
}



}
