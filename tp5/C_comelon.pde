class Comelon {
  PImage comelon;
  float posx, posy;
  float tam;
  
  // Constructor
  Comelon () {
    comelon = loadImage ("comelon.png");
    tam=100;
  }

  void existir () {
    posx=mouseX;
    posy=mouseY;
    image (comelon, posx, posy, tam, tam);
  }
  

}
