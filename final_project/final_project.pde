import java.awt.Color;
import java.awt.Graphics;
import java.applet.Applet;
PImage pacup,pacdown,pacleft,pacright,pacclose;
PImage maze,dot,powerdot;
PImage bghost,rghost,pghost,oghost,powghost,ghosteye;
private boolean start=false;
boolean isLeft, isRight, isUp, isDown;
boolean gameStart=false;
boolean check=true;
private int lives=3;
pacman pac=new pacman();
ArrayList<dotint> pellets=new ArrayList<dotint>();
ArrayList<ghosts> ghost=new ArrayList<ghosts>();
private int powerTime=-500;
private int score=0;
private int livesscore=0;
private int dotcount=-500;
private boolean show=false;
int deathTimer;
void setup(){
  size(700, 700);
pacup=loadImage("pacup.png");
pacdown=loadImage("pacdown.png");
pacleft=loadImage("pacleft.png");
pacright=loadImage("pacright.png");
pacclose=loadImage("pacclose.png");
maze=loadImage("pacmanmaze.png");
dot=loadImage("dot.png");
powerdot=loadImage("superdot.png");
pghost=loadImage("pinkghost.png");
rghost=loadImage("redghost.png");
oghost=loadImage("orangeghost.png");
bghost=loadImage("blueghost.png");
powghost=loadImage("powerghost.png");
ghosteye=loadImage("ghosteyes.png");
}
public void startGame(){
if(keyPressed&&key==' '&&check){
  start=true;
  check=false;
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
void restart(){
  if(pellets.size()<193&&ghost.size()<4){
for(int i=138;i<658;i+=35)
pellets.add(new dots(236,i));
for(int i=270; i<328; i+=35)
 pellets.add(new dots(i,428));
 for(int i=359; i<420; i+=35)
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
  for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,548));
  for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,636));
  for(int i=269; i<432; i+=35)
 pellets.add(new dots(i,636));
 for(int i=468; i<586; i+=35)
 pellets.add(new dots(i,636));
 for(int i=110; i<232; i+=35)
 pellets.add(new dots(i,636));
 for(int i=269; i<432; i+=35)
 pellets.add(new dots(i,526));
  for(int i=269; i<314; i+=35)
 pellets.add(new dots(i,465));
  for(int i=380; i<432; i+=35)
 pellets.add(new dots(i,465));
  for(int i=269; i<284; i+=35)
 pellets.add(new dots(i,561));
  for(int i=269; i<310; i+=35)
 pellets.add(new dots(i,260));
 for(int i=377; i<430; i+=35)
 pellets.add(new dots(i,260));
  for(int i=269; i<430; i+=35)
 pellets.add(new dots(i,307));
  for(int i=269; i<319; i+=35)
 pellets.add(new dots(i,307));
  for(int i=377; i<432; i+=35)
 pellets.add(new dots(i,594));
  for(int i=414; i<440; i+=35)
 pellets.add(new dots(i,561));
  for(int i=472; i<588; i+=35)
 pellets.add(new dots(i,548));
  for(int i=472; i<588; i+=35)
 pellets.add(new dots(i,395));
  for(int i=472; i<588; i+=35)
 pellets.add(new dots(i,368));
  for(int i=472; i<588; i+=35)
 pellets.add(new dots(i,232));
  for(int i=472; i<588; i+=35)
 pellets.add(new dots(i,265));
  for(int i=472; i<588; i+=35)
 pellets.add(new dots(i,332));
 for(int i=478;i<536;i+=35)
pellets.add(new dots(526,i));
 for(int i=478;i<536;i+=35)
pellets.add(new dots(553,i));
 for(int i=478;i<536;i+=35)
pellets.add(new dots(581,i));
 for(int i=478;i<536;i+=35)
pellets.add(new dots(162,i));
 for(int i=478;i<536;i+=35)
pellets.add(new dots(135,i));
 for(int i=478;i<536;i+=35)
pellets.add(new dots(107,i));
pellets.add(new powerDot(70,628));
pellets.add(new powerDot(70,138));
pellets.add(new powerDot(602,138));
pellets.add(new powerDot(602,628));
dotcount=pellets.size();
ghost.add(new ghosts(1));
ghost.add(new ghosts(2));
ghost.add(new ghosts(3));
ghost.add(new ghosts(4));
}else if(lives>0){
  if(dotcount==0){
for(dotint x:pellets){
x.eatReset();
x.checkReset();
dotcount=pellets.size();
  }
  }
pac.resetXY();
for(ghosts x:ghost){
x.resetXY();
x.escapeSet();
}
}
if(lives<=0){
for(dotint x:pellets){
x.eatReset();
x.checkReset();
}
pac.resetXY();
for(ghosts x:ghost){
x.resetXY();
x.escapeSet();
}
dotcount=pellets.size();
score=0;
livesscore=0;
lives=3;
start=false;
show=false;
}
}
void draw(){
  startGame();
background(maze);
 if(start){
   show=true;
   if(!gameStart){
   restart();
   start=false;
   }
   if(lives<=0)
   restart();
 }
 if (pac.pacDeath()==false&&show){
   if(lives==3){
   image(pacright,45,45,25,25);
   image(pacright,70,45,25,25);
   image(pacright,95,45,25,25);
   }else if(lives==2){
   image(pacright,45,45,25,25);
   image(pacright,70,45,25,25);
   }else if(lives==1){
   image(pacright,45,45,25,25);
   }
    if(score>9999999)
    score=9999999;
    if(livesscore>=57900){
    livesscore-=57900;
    lives++;
    if(lives>3)
    lives=3;
    }
    text("Score: "+score,590,26);
    pac.display();
    for(dotint x: pellets){
     x.display();
     if(x.getPower()){
     powerTime=millis()+4000;
     x.setpower();
     for(ghosts z:ghost)
     z.setPowertru();
    }
    }
    if(dotcount==0)
    restart();
if(millis()>=powerTime){ 
       for(ghosts z:ghost){
z.setPowerfal();
}
}
  for(ghosts x:ghost){
  x.display();
   x.eaten(); 
  }
}else if(pac.pacDeath()){
pac.resetXY();
for(ghosts x:ghost){
x.resetXY();
x.escapeSet();
}
text( "You Died", 310, 366 );
}
}
