public class ghosts{
//1=red, 2=blue, 3=pink, 4=orange, 5=power
private int gcolor=0;
private int x=398;
private int y=451;
private int tempx, tempy;
private boolean start=false,move=true;
private double di=Math.random();
private int oft=(int)Math.random()*2000+3000;
private int time=5000;
private int speed=2;
private boolean check1=false;
  public ghosts(int c){
    gcolor=c;
}
public void display(){
  if(start){
  y-=speed;
  if(y<=275)
  start=false;
  }
if(millis()>=time)
oftCheck();
if(move){
if(di<=.25)
x+=speed;
else if(di>=.251&&di<=.5)
x-=speed;
else if(di>=.51&&di<=.75)
y-=speed;
else
y+=speed;
}
checkBorder();
image(checkGhost(), x, y, 25, 25);
}
public int getX(){
return x;
}
public int getY(){
return y;
}
public void checkBorder(){
if(x<0)
stopMove();
if(x>675)
stopMove();
  if(x>0&&x<61)//left columns
if((y>387&&y<663)||(y<362&&y>124))
stopMove();
  if(x>20&&x<60){
if(y<362)
stopMove();
  }
  if(y>640)//bottom row
stopMove();
  if(y<127)//top row
stopMove();
  if(x>610)//right columns
if((y>389&&y<667)||(y<363&&y>125))
stopMove();
//ghost box
if(x>241&&x<429)
if(y<413&&y>304)
stopMove();
//bottom left
//l-block
if(x>94&&x<213)
if(y>414&&y<472)
stopMove();
if(x>157&&x<213)
if(y>445&&y<538)
stopMove();
//rectangle
if(x>96&&x<215)
if(y>553&&y<617)
stopMove();
//bottom middle
//top t-block
if(x>270&&x<403)
if(y>460&&y<515)
stopMove();
if(x>300&&x<369)
if(y>440&&y<483)
stopMove();
//bottom t-block
if(x>270&&x<403)
if(y>529&&y<586)
stopMove();
if(x>300&&x<370)
if(y>584&&y<624)
stopMove();
//bottom right
//l-block
if(x>461&&x<579)
if(y>415&&y<469)
stopMove();
if(x>461&&x<515)
if(y>469&&y<537)
stopMove();
//rectangle
if(x>460&&x<580)
if(y>555&&y<614)
stopMove();
//top right
//small rectangle
if(x>468&&x<579)
if(y<324&&y>275)
stopMove();
//large rectangle
if(x>458&&x<585)
if(y<223&&y>136)
stopMove();
//top middle
//t-block
if(x>270&&x<398)
if(y<253&&y>200)
stopMove();
if(x>302&&x<367)
if(y<275&&y>251)
stopMove();
//top left
//small rectangle
if(x>95&&x<205)
if(y<326&&y>279)
stopMove();
//large rectangle
if(x>87&&x<212)
if(y<223&&y>140)
stopMove();
}
public void stopMove(){
if(di<=.25)
x-=speed;
if(di>=.251&&di<=.5)
x+=speed;
if(di>=.51&&di<=.75)
y+=speed;
if(di>=.751)
y-=speed;
di=Math.random();
}
public PImage checkGhost(){
if(gcolor==1)
return rghost;
else if(gcolor==2)
return bghost;
else if(gcolor==3)
 return pghost;
else if(gcolor==4)
return oghost;
else
return powghost;
}
public boolean eaten(){
if(pac.getX()+13>=x&&pac.getX()<=x+13)
if(pac.getY()+13>=y&&pac.getY()<=y+13){
  lives--;
  start=false;
  return true;
}
return false;
}
public void oftCheck(){
di=Math.random();
  time=millis()+oft;
  System.out.println(time);
}
void ghostDeathSet(){
tempx=x;
tempy=y;
check1=true;
}
boolean getCheck(){
return check1;
}
void ghostDeath(){
x=tempx;
y=tempy;
}
}
