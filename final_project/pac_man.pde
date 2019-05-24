public class pacman{
private int open=0;
private int x=50;
private int y=50;
char lastd='r';
public pacman(){
}
public void display(){
fill(255,255,0);
if(isUp){
 setFalse('u');
y-=5;
checkBorder();
}
if(isDown){
  setFalse('d');
  y+=5;
checkBorder();
}
if(isRight){
  setFalse('r');
  x+=5;
checkBorder();
}
if(isLeft){
  setFalse('l');
 x-=5;
checkBorder();
}
if(open<=5){
  
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
x=0;
if(x>675)
x=675;
if(y<0)
y=0;
if(y>675)
y=675;
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
}
