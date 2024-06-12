// Cáncer Nahuel
// tp2 comision 1

String estado;
PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagenreinicio;
int tiempo;
PFont fuente;
float alpha = 0;
float velocidadTexto = 2.0;
int lineSpacing = 30; 

color colorInicial;
color colorFinal;
float t = 0.0;

void setup() {
  size(640, 480); 
  estado = "pantalla1";
  
  imagen1 = loadImage("pb 6.jpg");
  imagen2 = loadImage("pb 2.jpg");
  imagen3 = loadImage("pb 4.jpg");
  imagen4 = loadImage("pb 5.jpg");
  imagen5 = loadImage("pb1.jpg"); 
  imagenreinicio = loadImage("reset.jpg");
  
  imagen1.resize(width, height); 
  imagen2.resize(width, height); 
  imagen3.resize(width, height); 
  imagen4.resize(width, height); 
  imagen5.resize(width, height); 
  imagenreinicio.resize(100, 0); 
  tiempo = 0;

  fuente = createFont("Arial", 30);
  textFont(fuente);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  if (estado == "pantalla1") {
    image(imagen1, 0, 0);
    tiempo++;
    if (alpha < 255) {
      alpha += velocidadTexto; 
    }
    colorInicial = color(0, 0, 0);
    colorFinal = color(255, 255, 255);
    fill(lerpColor(colorInicial, colorFinal, t));
    text("Bienvenidos", width / 2, height / 2 - 30); 
    if (tiempo >= 5 * 60) {
      estado = "pantalla2";
      tiempo = 0;
      alpha = 0; 
      t = 0.0;
    }
  } else if (estado == "pantalla2") {
    image(imagen2, 0, 0);
    tiempo++;
    colorInicial = color(0, 0, 0);
    colorFinal = color(255, 255, 255);
    fill(lerpColor(colorInicial, colorFinal, t));
    text("A la familia Shelby", width / 2, height / 2); 
    if (tiempo >= 12 * 60) { 
      estado = "pantalla3";
      tiempo = 0;
      alpha = 0; 
      t = 0.0;
    }
  } else if (estado == "pantalla3") {
    image(imagen3, 0, 0);
    tiempo++;
    colorInicial = color(0, 0, 0);
    colorFinal = color(255, 255, 255);
    fill(lerpColor(colorInicial, colorFinal, t));
    text("Nos llaman gansgters de negocios", width / 2, height / 2 - 30); 
    if (tiempo >= 15 * 60) { 
      estado = "pantalla4";
      tiempo = 0;
      alpha = 0; 
      t = 0.0;
    }
  } else if (estado == "pantalla4") {
    image(imagen4, 0, 0);
    tiempo++;
    colorInicial = color(0, 0, 0);
    colorFinal = color(255, 255, 255);
    fill(lerpColor(colorInicial, colorFinal, t));
    text("Asi que más te vale, no cruzarte con nosotros", width / 2, height / 2 - 30); 
    if (tiempo >= 5 * 60) { 
      estado = "pantalla5";
      tiempo = 0;
      alpha = 0; 
      t = 0.0;
    }
  } else if (estado == "pantalla5") {
    image(imagen5, 0, 0); 
    float btnX = width / 2 - imagenreinicio.width / 2; 
    float btnY = height / 2 - imagenreinicio.height / 2;
    image(imagenreinicio, btnX, btnY); 
    textAlign(CENTER, TOP);
    text("Toca para reiniciar", width / 2, btnY + imagenreinicio.height);
  }
  t += 0.01; 
}

void mousePressed() {
  if (estado == "pantalla5") {
    estado = "pantalla1"; 
    tiempo = 0; 
    alpha = 0;
  }
}
