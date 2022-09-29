/*
Tecnologia Multimedia 1
 TP4: Programando con Objetos I - Pececitos
 Victoria Mestralet (91492/6) y Ramirez Ezequiel (75664/5)  
 Comisión 3
 
 Link al doc de fundamento teorico en GoogleDocs:
 https://docs.google.com/document/d/15uDOn-8bxm4U2fQOZsyGTyH4LW6vsA0B2qA9pJff0Qs/edit?usp=sharing
 
 Link al video de Youtube:
 https://www.youtube.com/watch?v=GS_sAtQJHhw
 */

int estado = 0;
//declaración del espacio de memoria para las clases
Fondo fondo;
Pez[] pez;
Pez2[] pez2;
int cant=7;

void setup() {
  size (600, 400); 
  fondo=new Fondo();
}

void draw() {
  //logica de estados para iniciar la secuencia de pececitos
  fondo.actualizar();
  if (estado == 0) {
    push();
    textAlign(CENTER);
    textSize(20);
    text ("Click para iniciar", 300, 200 );
    pop();
  } else if (estado == 1) {
    for (int i=0; i<cant; i++) {
      pez[i].actualizar();
      pez2[i].actualizar();
    }
  }
}

void mousePressed() {
  //evento para triggerear el cambio de estado
  if (estado==0) {
    estado=1;
    pez=new Pez[cant];
    pez2=new Pez2[cant];
    for (int i=0; i<cant; i++) {
      pez[i]=new Pez();
      pez2[i]=new Pez2();
    }
  }
}
