class Kirby{
int x;
int y;
PImage kirby;   
int i;
  
Kirby(){
  kirby = loadImage("data/kirby.png");
}

void display(int i,int x,int y){
image(kirby,x,y,i,i);
}

}
