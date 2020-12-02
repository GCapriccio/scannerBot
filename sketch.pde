PFont sxy;
PShape s; 
float x; 

//PImage img;

void setup() {
  
orientation(LANDSCAPE);
  
fullScreen(P3D);

//size(854, 480, P3D);

//img = loadImage("CH_icon.jpg");

sxy = createFont("SAUCYMILL.TTF", 400);

background(219, 100, 58);

s = createShape(); 
s.beginShape(); 
s.fill(183, 58, 26); 
s.noStroke(); 
s.vertex((width / 2) - 130, (height / 2) - 120, -511); 
s.vertex((width / 2) - 50, (height / 2) - 120, -511); 
s.vertex((width / 2) - 25, (height / 2) - 100, -511);
s.vertex((width / 2) + 110, (height / 2) - 155, -511);
s.vertex((width / 2) + 230, (height / 2) - 165, -551);
s.vertex(width + width, height / 2, -551); 
s.vertex(width + width, height + height, -551); 
s.vertex((width / 2) - 170, height - 115, -551); 
s.endShape(CLOSE); 

textFont(sxy);
textAlign(CENTER, CENTER);
fill(255);
text("CH", width / 2, height / 2);

} 

//}
//

void draw() {
  
background(219, 100, 58);

//translate(0, 0, -550);
shape(s, 0, 0);

textFont(sxy);
textAlign(CENTER, CENTER);
fill(255);
text("CH", width / 2, height / 2, -500);

x = (mouseX * 0.5) / 0.3;
translate(x, height / 2, -400);

rotateX(((mouseY / .33) - 1) + mouseX);

ambientLight(190, 190, 190);
directionalLight(23, 23, 25, 1.5, 1.5, 1.5);

fill(250);
sphere(100 * 3);

}