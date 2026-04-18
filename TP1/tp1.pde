//TP1
//Comision:3
//Alumno: Mamani Pamela
PImage imagen;
void setup(){
size(800,400);
imagen = loadImage("imagen.jpg");
image(imagen,0,0,400,400);
}
void draw(){
noStroke();
fill(245,180,140);
rect(400,0,400,400);
fill(82,80,75);
rect(400,0,400,60);
 
fill(160,180,190);
ellipse(600,200,325,340);
 
stroke(80,50,30);
strokeWeight(12);
line(530,50,560,165);
line(545,100,450,100);
line(680,10,682,90);
line(720,55,680,40);
  
noStroke();
fill(247,211,120);
rect(560,200,80,120); 
rect(570,230,60,140);
triangle(560, 200, 640, 200, 560, 165);
triangle(570,240, 570,340,545,275);
stroke(0);
strokeWeight(1);
line(585,175,585,250);
line(610,185,610,250);
   
fill(60,170,110);
noStroke();
pushMatrix();
translate(520,75);
rotate(radians(-35));
ellipse(0,0,25,60);
popMatrix();

pushMatrix();
translate(510,100);
rotate(radians(-80));
ellipse(0,0,25,60);
popMatrix();

pushMatrix();
translate(470,134);
rotate(radians(195));
ellipse(0,0,25,60);
popMatrix();
    
fill(60,170,110);
noStroke();
pushMatrix();
translate(575,250);
rotate(radians(-35));
ellipse(0,0,22,55);
popMatrix();

pushMatrix();
translate(630,220);
rotate(radians(-35));
ellipse(0,0,22,35);
popMatrix();

pushMatrix();
translate(630,250);
rotate(radians(-80));
ellipse(0,0,22,35);
popMatrix();

pushMatrix();
translate(620,270);
rotate(radians(-75));
ellipse(0,0,22,50);
popMatrix();

pushMatrix();
translate(625,300);
rotate(radians(-135));
ellipse(0,0,22,40);
popMatrix();

fill(60,170,110);
noStroke();
pushMatrix();
translate(650,55);
rotate(radians(-65));
ellipse(0,0,25,65);
popMatrix();

pushMatrix();
translate(655,95);
rotate(radians(30));
ellipse(0,0,30,75);
popMatrix();

pushMatrix();
translate(625,75);
rotate(radians(85));
ellipse(0,0,25,65);
popMatrix();

pushMatrix();
translate(690,100);
rotate(radians(-195));
ellipse(0,0,25,65);
popMatrix();

fill(60,170,110);
noStroke();
pushMatrix();
translate(700,285);
rotate(radians(-55));
ellipse(0,0,25,65);
popMatrix();

pushMatrix();
translate(730,270);
rotate(radians(0));
ellipse(0,0,25,65);
popMatrix();

pushMatrix();
translate(750,285);
rotate(radians(55));
ellipse(0,0,20,65);
popMatrix();

pushMatrix();
translate(735,330);
rotate(radians(-200));
ellipse(0,0,25,70);
popMatrix();

pushMatrix();
translate(690,320);
rotate(radians(65));
ellipse(0,0,20,65);
popMatrix();
}
