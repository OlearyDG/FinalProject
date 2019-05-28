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
for(int i=138;i<658;i+=35)
pellets.add(new dots(236,i));
for(int i=270; i<420; i+=35)
 pellets.add(new dots(i,428));
 for(int i=138;i<658;i+=35)
pellets.add(new dots(445,i));
 for(int i=183;i<620;i+=35)
pellets.add(new dots(75,i));
 for(int i=183;i<620;i+=35)
pellets.add(new dots(600,i));
for(int i=109; i<215; i+=35)
 pellets.add(new dots(i,138));
 for(int i=265; i<440; i+=35)
 pellets.add(new dots(i,138));
 for(int i=478; i<608; i+=35)
 pellets.add(new dots(i,138));
 for(int i=270; i<435; i+=35)
 pellets.add(new dots(i,170));
 for(int i=270; i<435; i+=35)
 pellets.add(new dots(i,201));
 for(int i=270; i<435; i+=35)
 pellets.add(new dots(i,281));
 for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,232));
 for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,267));
  for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,336));
  for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,370));
  for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,400));
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
 // if(start){
    if(score>9999999)
    score=9999999;
    text(score,590,26);
    pac.display();
    for(dots x: pellets)
     x.display();
   // bit.display();
//}
}
