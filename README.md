# Pac-Man, game

To start the game press the space bar and move with the arrow keys. The game is similiar to real Pac-Man in how it functions. The point of the game is to collect as many dots as possible to get a high score while avoiding the ghosts. The game will game over and restart if you lose all your lives but you can gain more lives by getting an amount of points equal to collecting all points in the maze 3 times. The game will continue forever if you never die.

### Difficulties or opportunities you encountered along the way.

The toughest part of this project was making the ghosts. I had to find a way to make them move around the maze while following the same collision rules as Pac-Man, make them able to be eaten when you get the power-up, and be able to kill Pac-Man. I had to find a way to re-purpose the collision code I made for Pac-Man and make it so if they reach a wall they can go a different direction and not get stuck. To solve this I made it so everytime a ghost hits a wall it will randomly choose a new direction to go, so even if it tries to go in a direction that would get it stuck it would eventually choose a path that lets it out. Another problem I had was that when a ghost is eaten it is supposed to turn into eyes and clip through the barriers to return to the start point, but in the middle of travelling if the power-up ran out when it was inside a barrier it would get stuck. To fix this I changed it so if it was in the "eye" state it would always be able to pass through things and would only return to normal when it reached the start point.

### Most interesting piece of your code and explanation for what it does.

...
if(millis()>=time)
oftCheck();
if(di<=.25)
x+=speed;
else if(di>=.251&&di<=.5)
x-=speed;
else if(di>=.51&&di<=.75)
y-=speed;
else
y+=speed;
checkBorder();
if(!power)
image(checkGhost(), x, y, 25, 25);
else
image(powghost, x, y, 25, 25);
...
public void checkBorder(){
if(x<0)
stopMove();
if(x>675)
stopMove();
  if(x>20&&x<61)//left columns
if((y>360&&y<665)||(y<360&&y>124))
stopMove();
  if(x>20&&x<60){
if(y<362)
stopMove();
  }
  if(y>640)//bottom row
stopMove();
  if(y<127)//top row
stopMove();
  if(x>610)//right columns
if((y>389&&y<667)||(y<363&&y>125))
stopMove();
//ghost box
if(x>241&&x<429)
if(y<413&&y>304)
if(escape==false){
stopMove();
}
//bottom left
//l-block
if(x>94&&x<213)
if(y>414&&y<472)
stopMove();
if(x>157&&x<213)
if(y>445&&y<538)
stopMove();
...
public void stopMove(){
  if(eyes==false){
if(di<=.25)
x-=speed;
if(di>=.251&&di<=.5)
x+=speed;
if(di>=.51&&di<=.75)
y+=speed;
if(di>=.751)
y-=speed;
di=Math.random();
}
}
...
public void oftCheck(){
di=Math.random();
  time=millis()+oft;
}
}

This is the code for the ghosts movement(extra things not shown here). It works by starting with a random valuethat corresponds with a direction and it starts moving when the ghost reaches the start point. Every time the ghost hits a barrier it will make a new random value until it gets a direction it can move in. It also has a random 3-5 second interval that it will choose a new direction at because originally, the ghost would eventually hit the outside wall where because of the way the code works, it would end up only circling the perimeter, so now it will keep choosing new directions to add variance to its movement and make sure it will patrol the maze. The way the checkBorder code works is it checks if the ghost enters the coordinates it states which corresponds with a part of the maze, and if it does it will call stopMove. stopMove checks if the "eye" state is on, which was mentioned earlier,  and if not it checks which direction it was currently in and reverses it one step, and randomly chooses a new direction. Oftcheck is the timer for choosing new directions, and it resets the direction and timer when called.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Darby O'Leary** 

## Acknowledgments

* aristidGR on forum.processing.org for the switch code to use the arrow keys (https://forum.processing.org/two/discussion/16594/can-multiple-keys-be-pressed-on-the-keyboard)

* Pac-Man from Bandai Namco Entertainment

* Google for the Google Draw program

* Gimp by The GIMP Development Team
