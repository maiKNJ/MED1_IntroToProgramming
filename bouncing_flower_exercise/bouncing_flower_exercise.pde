Flower Myflower1;
Flower Myflower2;
Flower Myflower3;


void setup(){
   size(600,400);
  //the variables for the flower and to make it move
  int _r1=50; //center of the petals
  int _petals=7; //number of petals
  float _x=width/2; //placement of the flower, on the x-position
  float _y=height/2; //placement of the flower, on the y-position
  int _pc=#FFA000; //the color of the petals
  float _speedX=5; //the speed of x-position when moving
  float _speedY=5; //the speed of the y-position when moving
  
  Myflower1=new Flower(_r1,_petals,_x,_y,_pc,_speedX,_speedY);
  Myflower2=new Flower(_r1+10,_petals+3,_x+50,_y-50,_pc,_speedX,_speedY);
  Myflower3=new Flower(_r1-10,_petals-2,_x-80,_y-60,_pc,_speedX,_speedY);  
}

void draw(){
  background(#43AF76);
//make the flowers display in the screen
Myflower1.Display();
Myflower2.Display();
Myflower3.Display();
//make the flowers bounce of the sides
Myflower1.Bounce();
Myflower2.Bounce();
Myflower3.Bounce();
//make the flowers move
Myflower1.Move();
Myflower2.Move();
Myflower3.Move();
}
