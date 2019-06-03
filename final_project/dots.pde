public class dots implements dotint{
//dots are to be sized 15x15 pixels
  private int x=0,y=0;
  private boolean eat=false,check=true;
public dots(int xx, int yy){
  x=xx;
  y=yy;
}
public void display(){
if(check)
  eaten();
  if(!eat)
  image(dot,x,y,15,15);
}
public void eaten(){
if(pac.getX()+13>=x&&pac.getX()<=x+13)
if(pac.getY()+13>=y&&pac.getY()<=y+13){
eat=true;
score+=100;
dotcount--;
check=false;
}
}
public String toString(){
return x+" "+y;
}
public boolean getPower(){
  return false;
}
public void setpower(){
}
}
