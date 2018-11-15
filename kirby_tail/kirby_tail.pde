Kirby kirby;

int num = 50; //
int[] x = new int[num];
int[] y = new int[num];
int indexPosition=0;

void setup() { 
  size(800, 800);
  noStroke();
  fill(255, 102);
  kirby=new Kirby();
}

void draw() {
  background(0);
  indexPosition=(indexPosition+1)%num;
  if (indexPosition==num) {
    indexPosition=0;
  }

  for (int i=0; i<num-1; i++) {
    int pos=(indexPosition+i)%num;
    kirby.display(i,x[pos],y[pos]);
    //ellipse(x[pos], y[pos], i/2.0, i/2.0);
  }

  x[indexPosition]=mouseX;
  y[indexPosition]=mouseY;
}
