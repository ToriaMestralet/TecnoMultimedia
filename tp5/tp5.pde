/*
ALUMNOS: MESTRALET VICTORIA (91492/6) Y RAMIREZ EZEQUIEL (75664/5)
 TP#5 - POO
 LOVECAT 2: RECUPERANDO LOS TP#3 Y TP#4, NUESTRA PROPUESTA CONSISTE EN AYUDAR A NUESTRO PERSONAJE, UN GATITO LLAMADO COMELON,
 A ATRAPAR PECES QUE SE ENCUENTRAN EN UN ESTANQUE PARA LLEVARSELOS A BIMBO, LA GATITA DE LA QUE ESTA ENAMORADO Y LOGRE CONQUISTAR SU CORAZÓN.
 */

General general;
  //sonido
  import processing.sound.*;
  
  SoundFile ambiente;


void setup() {
  size (600, 400);
  background (255);
  general = new General();
  ambiente = new SoundFile (this, "ambiente.mp3");
   ambiente.loop();
}

void draw() {
 general.todo();
 }

void mousePressed() {
 general.press();
}
