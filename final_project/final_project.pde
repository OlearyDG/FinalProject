import java.awt.Color;
import java.awt.Graphics;
import java.applet.Applet;
void setup(){
  size(700, 700);

}
void draw(){
background(0);

text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
}
