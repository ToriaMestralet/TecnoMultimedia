/* 
 VICTORIA ELISA MESTRALET
 LEGAJO 91492/6
 COMISION 3
 TP2:ILUSION OPTICA INTERACTIVA
 LINK AL VIDEO DE YOUTUBE:
 https://youtu.be/75NLwye62QE
 */
 
//DECLARACICON DE VARIABLES USADAS
float posX, posY;

void setup () {
  //CAMBIE EL COLOR DE STROKE PARA QUE LAS LINEAS SEAN BLANCAS, YA QUE MI FONDO ES BLANCO
  size (400, 400);
  background (255);
  stroke (255);

  //DOY VALOR A MIS VARIABLES
  posX = (float) width/20;
  posY = (float) height/20;
}
void draw () {
  //USE IF PARA QUE SOLO AL MANTENER EL CLICK SE DIBUJE UN CIRCULO NEGRO EN EL FONDO
  if (mousePressed) {
    fill(0);
    ellipse(mouseX, mouseY, 600, 600);
  } 

  //USE CICLO FOR ANIDADO PARA DIBUJAR CIRCULOS SIN RELLENO POR TODA MI PANTALLA, AL NO TENER RELLENO SE VISUALIZA EL CIRCULO ANTERIOR
  for (int w=0; w<32; w++ ) {
    for (int h=0; h<32; h++) {
      noFill ();
      ellipse (w*posX, h*posY, 40, 40);
      ellipse (w*posX, h*posY, 35, 35);
      ellipse (w*posX, h*posY, 30, 30);
      ellipse (w*posX, h*posY, 25, 25);
      ellipse (w*posX, h*posY, 20, 20);
    }
  }
}
