public class pacman{
private int open=0;
private int x=50;
private int y=50;
public pacman(){
}
public void display(){
fill(255,255,0);
if(open==0){
 arc(x,y,100,100,0,6.3);
 open=1;
}else{
 arc(x,y,100,100,0,6.3);
 open=0;
 }
}

}
