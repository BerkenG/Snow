Flowsnake [] fs2=new Flowsnake[600];
Flowsnake krampus = new Flowsnake();
String one="Happy Holidays";
String two="Joeaux Noel";
String three="Lykkelig Ferie";
String four="Feliz Vacaciones";
String five="Schöne Ferien";
String six="Buone Vacanze";
String seven="Hauʻoli Icai";
String eight="God Ferie";
String nine="Saoire Sona";
String ten="Glada Helgdagar";
String eleven="   ";
boolean g1 = true;
boolean g2 = true;
boolean g3 = true;
boolean g4 = true;
boolean g5 = true;
boolean g6 = true;
boolean g7 = true;
boolean g8 = true;
boolean g9 = true;
boolean g10 = true;
boolean g11=true;
PImage img;
private int glyphsx = 900;
void setup() {
  img=loadImage("trueKrampus.jpg");
  size(900, 500);
  for (int i = 0; i<fs2.length; i++) {
    fs2[i]=new Flowsnake();
  }
}
void draw() {
  background(0);
  ground();
  moon();
  createSnowman();
  summonKrampus();
  for (int i = 0; i < fs2.length; i++) {
    fs2[i].move();
    fs2[i].show();
  }
  words();
}

void summonKrampus() {
  fill(0, 0, 0);
  rect(785, 20, 50, 10);
  cursor(ARROW);
  if (mouseX<835&&mouseX>785&&mouseY<30&&mouseY>20) {
    cursor(HAND);
    if (mousePressed) {
      textSize(32);
      fill(153, 0, 0);
      text("MERRY KRAMPUSNACHT", 250, 100);
      image(img, 270, 150, 300, 300);
    }
  }
}

void createSnowman() {
  //body
  fill(255, 255, 255);
  ellipse(400, 405, 120, 120);
  ellipse(400, 340, 100, 100);
  ellipse(400, 280, 80, 80);
  fill(0);
  //buttons, eyes, and smile
  ellipse(398, 380, 10, 10);
  ellipse(403, 360, 10, 10);
  ellipse(400, 340, 10, 10);
  ellipse(401, 320, 10, 10);
  ellipse(390, 255, 10, 10);
  ellipse(410, 255, 10, 10);
  ellipse(420, 285, 8, 8);
  ellipse(380, 283, 8, 8);
  ellipse(390, 290, 8, 8);
  ellipse(400, 293, 8, 8);
  ellipse(410, 290, 8, 8);
  //nose
  fill(255, 153, 0);
  triangle(400, 265, 380, 275, 400, 273);
  //hat
  fill(4, 163, 41);
  rect(365, 233, 70, 15);
  rect(385, 180, 30, 60);
  fill(153, 77, 0);
  rect(385, 223, 30, 10);
}

void words() {
  textSize(24);
  fill(230, 0, 0);
  text(one, glyphsx-250, 400);
  if (glyphsx<55&&g1==true) {
    one=two;
    glyphsx=1000;
    g1=false;
  } else if (glyphsx<55&&g2==true) {
    one=three;
    glyphsx=1000;
    g2=false;
  } else if (glyphsx<55&&g3==true) {
    one=four;
    glyphsx=1000;
    g3=false;
  } else if (glyphsx<55&&g4==true) {
    one=five;
    glyphsx=1000;
    g4=false;
  } else if (glyphsx<55&&g5==true) {
    one=six;
    glyphsx=1000;
    g5=false;
  } else if (glyphsx<55&&g6==true) {
    one=seven;
    glyphsx=1000;
    g6=false;
  } else if (glyphsx<55&&g7==true) {
    one=eight;
    glyphsx=1000;
    g7=false;
  } else if (glyphsx<55&&g8==true) {
    one=eight;
    glyphsx=1000;
    g8=false;
  } else if (glyphsx<55&&g9==true) {
    one=nine;
    glyphsx=1000;
    g9=false;
  } else if (glyphsx<55&&g10==true) {
    one=ten;
    glyphsx=1000;
    g10=false;
  } else if (glyphsx<55&&g11==true) {
    one=eleven;
    glyphsx=1000;
    g1=true;
    g2=true;
    g3=true;
    g4=true;
    g5=true;
    g6=true;
    g7=true;
    g8=true;
    g9=true;
    g10=true;
    g11=true;
    one="Happy Holidays";
  }
  glyphsx-=2;
}
void moon() {
  fill(230, 230, 230);
  ellipse(150, 50, 80, 80);
}
void ground() {
  fill(255, 255, 255);
  rect(0, 450, 900, 50);
}  
