float comelonW; //Ancho de Comelon
float comelonH; //Alto de Comelon
float comelonX; //X de Comelon
float comelonY; //Y de Comelon

void player () {
  PImage comelon = loadImage ("comelon.png");
  image (comelon, comelonX, comelonY);
}
