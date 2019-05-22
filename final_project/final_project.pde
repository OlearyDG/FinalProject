import java.awt.Color;
import java.awt.Graphics;
import java.applet.Applet;
PImage pacup,pacdown,pacleft,pacright,pacclose;
private boolean start=false;
boolean isLeft, isRight, isUp, isDown;  
pacman pac=new pacman();

void setup(){
  size(700, 700);
pacup=loadImage("pacup.png");
pacdown=loadImage("pacdown.png");
pacleft=loadImage("pacleft.png");
pacright=loadImage("pacright.png");
pacclose=loadImage("pacclose.png");
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

background(0);

text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
  if(start){
    pac.display();
}
}
