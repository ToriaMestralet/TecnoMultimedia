class Boton {

  float x, y, ancho, alto;
  String txt;

  //constructor:
  Boton( String txt_, float x_, float y_, float ancho_, float alto_ ) {
    txt = txt_;
    x = x_;
    y = y_;
    ancho = ancho_;
    alto = alto_;
  }

  void actualizar() {
    push();
    translate(x, y);
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    textSize(16);
    //noStroke();
   // noFill();
    //rect(300, 200, ancho, alto);
    text( txt, 0, 0);
    pop();
  }
}
