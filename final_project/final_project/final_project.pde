import java.awt.Color;
import java.awt.Graphics;
import java.applet.Applet;
PImage pacup,pacdown,pacleft,pacright,pacclose;
PImage maze,dot;
private boolean start=false;
boolean isLeft, isRight, isUp, isDown;  
pacman pac=new pacman();
dots bit=new dots(255,425);
ArrayList<dots> pellets=new ArrayList<dots>();
private int score=-100;
private int dotcount;
void setup(){
  size(700, 700);
pacup=loadImage("pacup.png");
pacdown=loadImage("pacdown.png");
pacleft=loadImage("pacleft.png");
pacright=loadImage("pacright.png");
pacclose=loadImage("pacclose.png");
maze=loadImage("pacmanmaze.png");
dot=loadImage("dot.png");
for(int i=148;i<658;i+=35)
pellets.add(new dots(236,i));
for(int i=263; i<469; i+=35)
 pellets.add(new dots(i,426));
}
public void startGame(){
if(keyPressed&&key==' '){
  start=true;
}
}
void keyPressed() {
  setMove(keyCode, true);
}
 
void keyReleased() {
  setMove(keyCode, false);
}
boolean setMove(int k, boolean b) {
  switch (k) {
  case UP:
    return isUp = b;
 
  case DOWN:
    return isDown = b;
 
  case LEFT:
    return isLeft = b;
 
  case RIGHT:
    return isRight = b;
 
  default:
    return b;
  }
}
void draw(){
  startGame();
background(maze);
text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
  if(start){
    if(score>9999999)
    score=9999999;
    text(score,590,26);
    pac.display();
    for(dots x: pellets)
     x.display();
   // bit.display();
}
}
