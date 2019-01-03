//float theta = 0;
float r = 0; //the start position for the x and y position
//float t=0; 
float B=85; //the base color for the blue 
//float g=0;
float R=25; //the base color for the red


float radius=20;//the start radius of the circle
void setup(){
size(800,800);

}

void draw(){ 
 for(float theta=0;theta<2000;theta+=0.03){ //for loop to make the spiral made and once, theta controls the closeness of the circles, the anguler distance betweeen two circles 
  float x = r * cos(theta); //controls the angle of the x-position (for left and right)
  float y = r * sin(theta); //controls the angle of the y-position (for up and down)
  float Bl=noise(B); //the blue color set as noise
  //float gr=noise(g);
  float Re=noise(R); //the red color set as noise
  //float RA=noise(t);
  
  noStroke();
  fill(R*Re,0,B*Bl);  //fills the cirlce with random color made with noise
  ellipse(x+width/2, y+height/2,noise(radius)*20,noise(radius)*20); //circle is made to start in the middle and have a random size in the radius(made with noise) the radius gets multiplied to determine the size of the radius growing
  
  //theta += 0.5; //controls the closeness of the circles, the anguler distance betweeen two circles
  r += 0.2; //controls the size of the spiral, unwindes faster when increased
  B+=Bl/6; //controls the change in the blue color
 // g+=gr/5;
  R+=Re/9; // controls the change in the red color
  radius+=0.2; // controls the smoothness of the growth of the circle's radius, how close the next should be for the radius(always between 0 and 1)
  //radius+=RA/4;
  }
  noLoop(); //makes the spiral to draw only once
  
  /*if(theta>2){
    //radius=noise(60,200);
    fill(0,0,b*80);
  }/*else if(theta>5){
  radius=50;
  fill(0,0,255);
  }*/

//need to change the size of the circle and the color(to a random blue, using noise) at a given time.

}
