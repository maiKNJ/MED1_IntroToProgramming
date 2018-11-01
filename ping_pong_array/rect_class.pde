class block{
//variables for the rect in the bottom
  int rectY; //Y-position for the rect.
  int rectW; //Width of the rect.
  int rectH; //height of the rect.
int rectX=0; //set the X-position to 0

block(int temp_rectY,int temp_rectW,int temp_rectH){
rectY=temp_rectY;
rectW=temp_rectW;
rectH=temp_rectH;
}
//function to diplay the rect.
void display(){
  //makes the x-postion move when the mouse is moved
 rectX= mouseX+rectW/2;
rect(rectX,rectY,rectW,rectH);
}

}
