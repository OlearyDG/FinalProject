public class pacman{
private int open=0;
private int x=50;
private int y=50;
public pacman(){
}
public void display(){
fill(255,255,0);
if(isUp)y-=5;
checkBorder();

checkBorder();
if(isRight)x+=5;
checkBorder();
if(isLeft)x-=5;
checkBorder();
if(open==0){
  
 arc(x,y,25,25,0,6.3);
 open=1;
}else{

 arc(x,y,25,25,0,5.2);
 open=0;
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
}
