//TP3
//Comision:3
//Alumno: Mamani Pamela
//video : https://youtu.be/-yeC5OPFPHM
PImage arte;

boolean reinicioReciente = true;
boolean lineasCruzadas = false;
boolean circuloTablero =  false; 

color colorVerde;
color colorRojo;
color colorAzul;

float x1=390, y1=350;
float x2=455, y2=245;
float x3=390, y3=150;
float x4=485, y4=75;
float x5=570, y5=210;
float x6=540, y6=350;
float x7=670, y7=290;
float x8=680, y8=170;
float x9=610, y9=75;
float x10=750, y10=70;
float x11=790, y11=200;
float x12=780, y12=340;

void setup() {
  size(800, 400);
  arte = loadImage("21.jpg");
  colorVerde = color(92, 239, 92);
  colorRojo = color(218, 38, 38);
  colorAzul = color(68, 68, 244);
}
void draw() {
  background(180);
  boolean mouseDentro = (mouseX >= 400 && mouseX <= width && mouseY >= 0 && mouseY <= height);
  if (mouseDentro && !reinicioReciente) {
    circuloTablero= true;
    x1=480;
    y1=60;
    x2=600;
    y2=60;
    x3=720;
    y3=60;
    x4=480;
    y4=150;
    x5=600;
    y5=150;
    x6=720;
    y6=150;
    x7=480;
    y7=240;
    x8=600;
    y8= 240;
    x9=720;
    y9=240;
    x10=480;
    y10=330;
    x11=600;
    y11=330;
    x12=720;
    y12=330;
  }
  if (!mouseDentro  ) {
    reinicioReciente = false; 
  }
  noStroke();
  for (int x = 400; x < width; x += 40) {
    for (int y = 0; y < height; y += 15) {
      float movFondo = desplazamiento(x, y) * -0.5;
      fill(colorVerde);
      rect(x, y + movFondo, 40, 5);

      fill(colorRojo);
      rect(x, y + 5 + movFondo, 40, 5);

      fill(colorAzul);
      rect(x, y + 10 + movFondo, 40, 5);
    }
  }
  // CÍRCULO 1
  float m1 = desplazamiento(x1, y1);
  dibujarCirculo(x1, y1 + m1, 78);
  if (circuloTablero) {
    dibujarLineas(x1, y1 + m1, 78, colorVerde, lineasCruzadas);
  } else {
    dibujarLineas(x1, y1 - 5 + m1, 78, colorVerde, lineasCruzadas);
  }
  // CÍRCULO 2
  float m2 = desplazamiento(x2, y2);
  dibujarCirculo(x2, y2 + m2, 78);
  if (circuloTablero) {
    dibujarLineas(x2, y2 + 5 + m2, 78, colorRojo, lineasCruzadas);
  } else {
    dibujarLineas(x2, y2 + m2, 78, colorRojo, lineasCruzadas);
  }
  // CÍRCULO 3
  float m3 = desplazamiento(x3, y3);
  dibujarCirculo(x3, y3 + m3, 78);
  if (circuloTablero) {
    dibujarLineas(x3, y3 + 10 + m3, 78, colorAzul, lineasCruzadas);
  } else {
    dibujarLineas(x3, y3 - 5 + m3, 78, colorAzul, lineasCruzadas);
  }
  // CÍRCULO 4
  float m4 = desplazamiento(x4, y4);
  dibujarCirculo(x4, y4 + m4, 78);
  dibujarLineas(x4, y4 + m4, 78, colorVerde, lineasCruzadas);
  // CÍRCULO 5
  float m5 = desplazamiento(x5, y5);
  dibujarCirculo(x5, y5 + m5, 78);
  if (circuloTablero) {
    dibujarLineas(x5, y5 + 10 + m5, 78, colorAzul, lineasCruzadas);
  } else {
    dibujarLineas(x5, y5 - 5 + m5, 78, colorAzul, lineasCruzadas);
  }
  // CÍRCULO 6
  float m6 = desplazamiento(x6, y6);
  dibujarCirculo(x6, y6 + m6, 78);
  if (circuloTablero) {
    dibujarLineas(x6, y6 + m6, 78, colorVerde, lineasCruzadas);
  } else {
    dibujarLineas(x6, y6 - 5 + m6, 78, colorVerde, lineasCruzadas);
  }
  // CÍRCULO 7
  float m7 = desplazamiento(x7, y7);
  dibujarCirculo(x7, y7 + m7, 78);
  if (circuloTablero) {
    dibujarLineas(x7, y7 + 5 + m7, 78, colorRojo, lineasCruzadas);
  } else {
    dibujarLineas(x7, y7 + m7, 78, colorRojo, lineasCruzadas);
  }
  // CÍRCULO 8
  float m8 = desplazamiento(x8, y8);
  dibujarCirculo(x8, y8 + m8, 78);
  if (circuloTablero) {
    dibujarLineas(x8, y8 + m8, 78, colorVerde, lineasCruzadas);
  } else {
    dibujarLineas(x8, y8 - 5 + m8, 78, colorVerde, lineasCruzadas);
  }
  // CÍRCULO 9
  float m9 = desplazamiento(x9, y9);
  dibujarCirculo(x9, y9 + m9, 78);
  if (circuloTablero) {
    dibujarLineas(x9, y9 + 5 + m9, 78, colorRojo, lineasCruzadas);
  } else {
    dibujarLineas(x9, y9 - 10 + m9, 78, colorRojo, lineasCruzadas);
  }
  // CÍRCULO 10
  float m10 = desplazamiento(x10, y10);
  dibujarCirculo(x10, y10 + m10, 78);
  if (circuloTablero) {
    dibujarLineas(x10, y10 + 10 + m10, 78, colorAzul, lineasCruzadas);
  } else {
    dibujarLineas(x10, y10 + m10, 78, colorAzul, lineasCruzadas);
  }
  // CÍRCULO 11
  float m11 = desplazamiento(x11, y11);
  dibujarCirculo(x11, y11 + m11, 78);
  if (circuloTablero) {
    dibujarLineas(x11, y11 + 5 + m11, 78, colorRojo, lineasCruzadas);
  } else {
    dibujarLineas(x11, y11 + m11, 78, colorRojo, lineasCruzadas);
  }
  // CÍRCULO 12
  float m12 = desplazamiento(x12, y12);
  dibujarCirculo(x12, y12 + m12, 78);
  if (circuloTablero) {
    dibujarLineas(x12, y12 + 10 + m12, 78, colorAzul, lineasCruzadas);
  } else {
    dibujarLineas(x12, y12 + m12, 78, colorAzul, lineasCruzadas);
  }
  image(arte, 0, 0, 400, 400);
}
void dibujarCirculo(float posX, float posY, float diametro) {
  noStroke();
  // SOMBRA
  fill(120, 100, 80, 50);
  ellipse(posX + 6, posY + 6, diametro, diametro);
  // CUERPO
  fill(205, 180, 150);
  ellipse(posX, posY, diametro, diametro);
  // BRILLO INTERMEDIO
  fill(235, 220, 200, 80);
  ellipse(posX - 8, posY - 8, diametro * 0.6, diametro * 0.6);
  // BRILLO FUERTE
  fill(255, 255, 255, 120);
  ellipse(posX - 12, posY - 12, diametro * 0.25, diametro * 0.25);
}
void dibujarLineas(float posX, float posY, float diametro, color colores, boolean rotarEstructura) {
  fill(colores);
  if (rotarEstructura) {
    pushMatrix();
    translate(posX, posY);
    for (int angulo = 0; angulo < 4; angulo += 1) {
      rotate(radians(45));
      for (int i = 0; i < 7; i += 1) {
        rect(-diametro / 2, -45 + i * 15, diametro, 5);
      }
    }
    popMatrix();
  } else {
    for (int i = 0; i < 7; i += 1) {
      rect(posX - diametro / 2, posY - 45 + i * 15, diametro, 5);
    }
  }
}
float desplazamiento(float objetivoX, float objetivoY) {
  float distancia = dist(mouseX, mouseY, objetivoX, objetivoY);
  float Movimiento = map(distancia, 0, 250, 14, 0);
  if (Movimiento < 0) {
    Movimiento = 0;
  } else if (Movimiento > 14) {
    Movimiento = 14;
  }
  return Movimiento;
}
void keyPressed() {
  if (key == 'c' || key == 'C') {
    colorVerde = color(random(255), random(255), random(255));
    colorRojo = color(random(255), random(255), random(255));
    colorAzul = color(random(255), random(255), random(255));
  }
  if (key == 'v' || key == 'V') {
    lineasCruzadas = !lineasCruzadas;
  }
  if (key == 'r' || key == 'R') {
    reinicioReciente = true;
    lineasCruzadas = false;
    circuloTablero = false;
    x1=390;
    y1=350;
    x2=455;
    y2=245;
    x3=390;
    y3=150;
    x4=485;
    y4=75;
    x5=570;
    y5=210;
    x6=540;
    y6=350;
    x7=670;  
    y7=290;
    x8=680;
    y8=170;
    x9=610;
    y9=75;
    x10=750;
    y10=70;
    x11=790;
    y11=200;
    x12=780;
    y12=340;
    colorVerde = color(92, 239, 92);
    colorRojo  = color(218, 38, 38);
    colorAzul  = color(68, 68, 244);
  }
}
