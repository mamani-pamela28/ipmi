//TP2
//Alimno: Mamani Pamela
//comision: 3
PFont tipografia;
PImage fondo;
PImage logo;

PImage grupo;
PImage grupo2;

PImage fondo1;
PImage freddie;

PImage fondo3;
PImage brian;

PImage fondo2;
PImage roger;
PImage fondo4;
PImage john;

PImage grupo3;

float xIzquierdaGrupo = -200;
float xDerechaGrupo2 = 640;

float xFreddie = -100;
float xBrian = -100;
float xRoger = -100;
float xJohn = -100;

float posYLogo = -100;
float tiempoLatido = 1;
float posYtexto = 480;

float posYgrupo = -250;

float yTexto = 520;

int tiempoPantalla;

int pantalla = 1;

int tiempoFinal;

boolean moverTexto = true;

boolean mostrarBoton = false;

boolean grupoSalida = false;

String textoIntroduccion ="Queen fue una banda Britanica formada en 1970, reconocida por revolucionar el rock con canciones inolvidables. Con un estilo unico que mezclaba rock, opera y musica teatral, la banda logro conquistar millones de fanaticos alrededor del mundo. Sus presentaciones y canciones marcaron la historia de la musica para siempre. La banda estaba integrada por cuatro talentosos musicos:";
String textoFreddie ="Freddie Mercury fue el cantante principal de Queen y una de las voces mas iconicas de la historia del rock. Su carisma, energia y presencia en el escenario lo convirtieron en una verdadera leyenda musical Además de cantar, también componía canciones y participó en grandes éxitos de la banda como Bohemian Rhapsody y We Are the Champions.";
String textoBrian ="Brian May fue el guitarrista de Queen y uno de los musicos mas talentosos de la banda. Su estilo unico con la guitarra y sus solos inolvidables ayudaron a crear el sonido caracteristico de Queen. Ademas de ser musico, tambien estudio astronomia y se destaco por su creatividad tanto en la musica como en la ciencia.";
String textoRoger ="Roger Taylor fue el baterista de Queen y una pieza fundamental en el sonido de la banda. Su energia, talento y potente voz ayudaron a crear muchas de las canciones mas famosas del grupo. Ademas de tocar la bateria, tambien componia canciones y participaba como corista en los conciertos.";
String textoJohn ="John Deacon fue el bajista de Queen y el miembro mas reservado de la banda. Su talento y dedicacion fueron esenciales para el exito del grupo, aportando lineas de bajo solidas y creativas en muchas de sus canciones mas famosas. Siempre prefirio mantenerse fuera de los reflectores, pero su trabajo fue clave en la historia de Queen.";
String textoFinal ="A lo largo de los años, Queen creo canciones inolvidables como Bohemian Rhapsody, We Will Rock You y Don't Stop Me Now.\n Su musica logro emocionar a millones de personas y dejo una huella eterna en la historia del rock. Incluso hoy, Queen sigue siendo considerada una de las bandas mas importantes e influyentes de todos los tiempos.";

void setup() {
  size(640, 480);

  fondo = loadImage("fondo.jpg");
  logo = loadImage("logo.png");

  grupo = loadImage("grupo.png");
  grupo2 = loadImage("grupo2.png");

  fondo1 = loadImage("fondo1.jpg");
  freddie = loadImage("freddie.png");

  fondo3 = loadImage("fondo3.jpg");
  brian = loadImage("brian.png");

  fondo2 = loadImage("fondo2.jpg");
  roger = loadImage("roger.png");

  fondo4 = loadImage("fondo4.jpg");
  john = loadImage("john.png");

  grupo3 = loadImage("grupo3.png");

  tipografia = loadFont("Impact-35.vlw");

  tiempoPantalla = millis();
}
void draw() {

  image(fondo, 0, 0, width, height);
  if (pantalla == 1) {
    if (millis() - tiempoPantalla > 6000) {
      pantalla = 2;
      tiempoPantalla = millis();
    }
    float anchoPalpito = 400;
    float altoPalpito = 400;
    float coordenadaX = 120;
    float coordenadaY = posYLogo;

    if (posYLogo < 20) {
      posYLogo += 5;
    }
    if (posYLogo >= 20) {

      tiempoLatido += 0.30;

      float latido = sin(tiempoLatido) * 15;

      anchoPalpito = 400 + latido;
      altoPalpito = 400 + latido;

      coordenadaX = 120 - (latido / 2);
      coordenadaY = 20 - (latido / 2);
    }
    image(logo, coordenadaX, coordenadaY, anchoPalpito, altoPalpito);

    textFont(tipografia);
    fill(219, 66, 77);
    textAlign(CENTER);

    float tamañoLetra = 35;

    if (posYLogo >= 20) {
      if (posYtexto > 390) {
        posYtexto -= 5;
      }
      float latidoTexto = sin(tiempoLatido) * 3;
      tamañoLetra = 35 + latidoTexto;

      textSize(tamañoLetra);
      text("LOS REYES DEL ROCK", 335, posYtexto + 25 + latidoTexto);
    }
  } else if (pantalla == 2) {
    pantallaIntroduccion();
  } else if (pantalla == 3) {
    pantallaFreddie();
  } else if (pantalla == 4) {
    pantallaBrian();
  } else if (pantalla == 5) {
    pantallaRoger();
  } else if (pantalla == 6) {
    pantallaJohn();
  } else if (pantalla == 7) {
    pantallaFinal();
  }
}
void pantallaIntroduccion() {
  image(fondo, 0, 0, width, height);
 
  if (xIzquierdaGrupo < 60) {
    xIzquierdaGrupo += 5;
  }
  if (xDerechaGrupo2 > 320) {
    xDerechaGrupo2 -= 5;
  }
  image(grupo, xIzquierdaGrupo, 60, 280, 200);
  image(grupo2, xDerechaGrupo2, 60, 280, 200);

  fill(255);
  textAlign(LEFT);
  textSize(20);
  // TEXTO SUBE
  if (moverTexto == true) {
    if (yTexto > 270) {
      yTexto -= 4;
    }
  }
  text(textoIntroduccion, 60, yTexto, 520, 200);

  if (millis() - tiempoPantalla > 27000) {
    pantalla = 3;
    yTexto = 330;
    tiempoPantalla = millis();
  }
}
void pantallaFreddie() {

  image(fondo1, 0, 0, width, height);

  if (xFreddie < 0) {
    xFreddie += 6;
  }
  image(freddie, xFreddie, 50, 320, 450);
  fill(255);
  textAlign(LEFT);
  textSize(20);

  if (yTexto > 100) {
    yTexto -= 4;
  }
  text(textoFreddie, 360, yTexto, 240, 380);

  if (millis() - tiempoPantalla > 27000) {
    pantalla = 4;
    yTexto = 330;
    tiempoPantalla = millis();
  }
}
void pantallaBrian() {

  image(fondo3, 0, 0, width, height);

  if (xBrian < 0) {
    xBrian += 6;
  }
  image(brian, xBrian, 60, 300, 450);
  fill(255);
  textAlign(LEFT);
  textSize(20);

  if (yTexto > 100) {
    yTexto -= 4;
  }
  text(textoBrian, 360, yTexto, 240, 380);

  if (millis() - tiempoPantalla > 27000) {
    pantalla = 5;
    yTexto = 330;
    tiempoPantalla = millis();
  }
}
void pantallaRoger() {

  image(fondo2, 0, 0, width, height);

  if (xRoger < 0) {
    xRoger += 6;
  }
  image(roger, xRoger, 60, 300, 420);
  fill(255);
  textAlign(LEFT);
  textSize(20);

  if (yTexto > 100) {
    yTexto -= 4;
  }
  text(textoRoger, 360, yTexto, 240, 380);

  if (millis() - tiempoPantalla > 23000) {
    pantalla = 6;
    yTexto = 330;
    tiempoPantalla = millis();
  }
}
void pantallaJohn() {

  image(fondo4, 0, 0, width, height);

  if (xJohn < 0) {
    xJohn += 6;
  }
  image(john, xJohn, 60, 300, 420);
  fill(255);
  textAlign(LEFT);
  textSize(20);
  
  if (yTexto > 100) {
    yTexto -= 4;
  }
  text(textoJohn, 360, yTexto, 240, 380);

  if (millis() - tiempoPantalla > 26000) {
    pantalla = 7;
    posYgrupo = -250;
    yTexto = 330;
    tiempoFinal = millis();
    tiempoPantalla = millis();
  }
}
void pantallaFinal() {

  image(fondo, 0, 0, width, height);

  fill(255);
  textAlign(CENTER);
  textSize(20);

  if (tiempoFinal == 0) {
    tiempoFinal = millis();
  }
  if (grupoSalida == false) {
    if (posYgrupo < 10) {
      posYgrupo += 8;
    }
    if (yTexto > 280) {
      yTexto -= 4;
    }
    if (millis() - tiempoFinal > 25000) {
      grupoSalida = true;
    }
  }
  if (grupoSalida == true) {

    if (posYgrupo > -300) {
      posYgrupo -= 8;
    }
    if (yTexto < height + 200) {
      yTexto += 6;
    }
  }
  image(grupo3, 120, posYgrupo, 460, 250);
  text(textoFinal, 50, yTexto, 540, 140);

  if (posYgrupo <= -300 && yTexto >= height + 200) {
    mostrarBoton = true;
  }
  if (mostrarBoton == true) {

    fill(0, 150, 255);
    rect(180, 200, 280, 70);

    fill(255);
    textSize(28);
    textAlign(CENTER);
    text("REINICIAR", 320, 245);
  }
}
void mousePressed() {
  if (pantalla == 7 && mostrarBoton == true) {
    if (mouseX > 180 && mouseX < 460 && mouseY >200 && mouseY < 270) {
      reiniciarTodo();
    }
  }
}
void reiniciarTodo() {
  pantalla = 1;
  xIzquierdaGrupo = -200;
  xDerechaGrupo2 = 640;

  xFreddie = -100;
  xBrian = -100;
  xRoger = -100;
  xJohn = -100;

  posYLogo = -100;
  tiempoLatido = 1;
  posYtexto = 480;

  moverTexto = true;
  yTexto = 520;

  posYgrupo = -250;

  mostrarBoton = false;

  grupoSalida = false;

  tiempoPantalla = millis();
  tiempoFinal =  millis();
}
