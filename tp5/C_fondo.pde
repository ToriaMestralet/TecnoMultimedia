class Fondo {
  PImage fondo;

  // Constructor
  Fondo () {
    fondo = loadImage ("fondo.png");
  }

  void existir () {
    image (fondo, 0, 0, 600, 400);
  }
}
