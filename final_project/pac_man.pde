public class pacman{
private int open=0;
private int x=330;
private int y=423;
char lastd='r';
public pacman(){
}
public void display(){
if(isUp){
 setFalse('u');
y-=3;
checkBorder();
}
if(isDown){
  setFalse('d');
  y+=3;
checkBorder();
}
if(isRight){
  setFalse('r');
  x+=3;
checkBorder();
}
if(isLeft){
  setFalse('l');
 x-=3;
checkBorder();
}
if(open<=3){
  
 setPac();
 open++;
}else if(open<=10&&keyPressed){

image(pacclose, x, y, 25, 25);
 open++;
 if(open==10)open=0;
 }else{
 setPac();

 }
}
public int getX(){
return x;
}
public int getY(){
return y;
}
public void checkBorder(){
if(x<0)
x=650;
if(x>675)
x=0;
  if(x>0&&x<61)//left columns
if((y>387&&y<663)||(y<362&&y>124))
x=61;
  if(x>20&&x<60){
if(y<362)
y+=3;
  }
  if(y>640)//bottom row
y=640;
  if(y<127)//top row
y=127;
  if(x>610)//right columns
if((y>389&&y<667)||(y<363&&y>125))
x=610;
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
if(y>586&&y<624)
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
public void setFalse(char d){
if(d=='d'){
isLeft=false;
isRight=false;
isUp=false;
}else if (d=='u'){
isLeft=false;
isRight=false;
isDown=false;
}else if (d=='r'){
isLeft=false;
isUp=false;
isDown=false;
}else if (d=='l'){
isUp=false;
isRight=false;
isDown=false;
}
}
public void setPac(){
  if(isUp||lastd=='u'){
image(pacup, x, y, 25,25);
lastd='u';
  }
  if(isDown||lastd=='d'){
image(pacdown, x, y, 25,25);
lastd='d';
  }
  if(isRight||lastd=='r'){
image(pacright, x, y, 25,25);
lastd='r';
  }
  if(isLeft||lastd=='l'){
image(pacleft, x, y, 25,25);
lastd='l';
  }
}
public void stopMove(){
if(isUp)
y+=3;
if(isDown)
y-=3;
if(isRight)
x-=3;
if(isLeft)
x+=3;
}
}