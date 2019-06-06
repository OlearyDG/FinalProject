public class powerDot implements dotint{
  private int Px,Py;
  private boolean check=true, eat=false, power=false;
public powerDot(int px,int py){
  Px=px;
  Py=py;
}
public void display(){
if(check)
  eaten();
if(!eat)
  image(powerdot,Px,Py,25,25);
}
public void eaten(){
if(pac.getX()+13>=Px&&pac.getX()<=Px+13)
if(pac.getY()+13>=Py&&pac.getY()<=Py+13){
eat=true;
power=true;
score+=100;
dotcount--;
check=false;
}
}
public void eatReset(){
eat=false;
}
public boolean getPower(){
return power;
}
public void setpower(){
power=false;
}
}
