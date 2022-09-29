class Pez2 {
  //definimos la variacion de velocidad que pueda tener
  float vel_min = 1;
  float vel_max = 4;

  //propiedades
  float x, y, despX, despY;
  //desplazamiento por coordenadas polares
  float dir, vel;
  float destX, destY;
  //tamaño
  float diam;
  PImage pececito2;

  //constructor:
  Pez2() {
    x=random(width*2);
    y=random(height*2);
    dir=random (TWO_PI);
    vel=random(vel_min, vel_max);
    diam=random(30, 100);
    destX=random(width*2);
    destY=random(height*2);
    pececito2=loadImage("data/pececito2.png");
  }

  void actualizar() {
    dibujar();
    mover();
  }

  void dibujar() {
    //dibujamos al pececito azul
    push();
    translate(x, y);
    rotate(dir);
    imageMode(CENTER);
    image(pececito2, 0, 0, diam, diam);
    pop();
  }

  void mover() {
    //orientar direccion hacia destino
    float dirFinal= atan2(destY-y, destX-x);
    dir=dirFinal;
    despX=cos(dir)*vel/2;
    despY=sin(dir)*vel/2;
    x+=despX;
    y+=despY;

    //compruebo si llegue a destino
    if (dist(x, y, destX, destY)<diam/2) {
      destX=random(width*2);
      destY=random(height*3);
      vel=random(vel_min, vel_max);
    }
  }

  void setDestino(float newDestinoX_, float newDestinoY_) {
    //seteamos un destino nuevo para que esten en constante movimiento
    destX = newDestinoX_;
    destY = newDestinoY_;
  }
}
