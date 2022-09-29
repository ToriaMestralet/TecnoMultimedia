class Fondo {

  PImage fondo;

  //constructor
  Fondo() {
    fondo=loadImage("data/fondo.png");
  }
  void actualizar() {
    image(fondo, 0, 0);
  }
}
