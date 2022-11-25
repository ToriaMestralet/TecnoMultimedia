class Inicio {
  PImage inicio;

  // Constructor
  Inicio () { 
    inicio = loadImage ("inicio.png");
  }

  void existir () {
    push();
    image (inicio, 0, 0);
    fill(255);
    textAlign (CENTER, CENTER);
    textSize (16);
    text ("click para empezar", 300, 350);
    pop();
  }
}
