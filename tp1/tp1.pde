// Cáncer Nahuel
//tp1 comision 1
PImage fondo;
 void setup() {
  size(800,400) ;
fondo = loadImage("panda.jpg") ;

 }
 void draw() {
   background(35,150,30); //pasto
image(fondo,0,0,400,400);
println("x:");
println(mouseX);
println("y:");
println(mouseY);
fill(120,120,110);
rect(400,0,400,172);
fill(0,0,0);
ellipse(555,280,50,100);
circle(465,195,30);
fill(240,240,240);
ellipse(600,195,280,200);
fill(0,0,0);
circle(666,125,30);
circle(755,125,30);
ellipse(710,235,60,210);
fill(240,240,240);
circle(712,165,120);
fill(0,0,0);
circle(688,154,20);
fill(250,250,250);
circle(688,154,8);
fill(0,0,0);
circle(735,154,20);
fill(250,250,250);
circle(735,154,8);
fill(0,0,0);
circle(714,180,10);
ellipse(516,222,60,212);
ellipse(623,216,60,240);
line(714,186,714,202);
line(695,202,730,202);
 }
