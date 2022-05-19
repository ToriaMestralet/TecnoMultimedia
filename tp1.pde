/*
MESTRALET VICTORIA ELISA
91492/6
COMISION 3
TP1: ANIMANDO CON CODIGO - CREDITOS FINALES POKEMON (VIDEOJUEGO)
*/

//DECLARACION DE VARIABLES USADAS
  int estado;
  int x;
  int y;
  int h;
  int w;
  float posx;
  float pos1x;
  float velx;
  int contador;
  PImage logo ;
  PFont pixel;
  PImage prota;
  PImage maril;
  PImage banner;

void setup() {
  size(400, 400);
  frameRate(30);
  
//VALOR DE VARIABLES
  x = 230;
  y = 270;
  w = 150;
  h = 30;
  contador = 0;
  estado = 0;
  posx = 0;
  pos1x = 0;
  velx = 2;
  logo = loadImage ("pokelogo.png");
  pixel = createFont ("pixelfont.ttf", 14);
  textFont (pixel);
  prota = loadImage ("protasprite.png");
  maril = loadImage ("maril.png");
  banner = loadImage ("banner.png");

}

void draw() {
  background (0);
  fill (255);
  rect (0,75, 400,250);
  
  if (estado==0) {
    //INICIO - PANTALLA 1
    image (logo, 30,60);
    fill (0);
    textAlign (LEFT);
    text ("TP1 Version", 140,215);
    textSize (12);
    text("Ver Creditos", 230,300);
    image (prota, 120,206);
    image (maril, 40,240);
    
  } else if (estado==1) {
    contador++;
    textAlign (CENTER,CENTER);
    image (banner, posx,75);
    posx=posx-velx;
    
    if  (contador<50) {
      //PANTALLA 2
      textSize (16);
      fill (0);
      text ("DIRECTOR", 200,170);
      text ("Satoshi Tajiri", 200,220);
      
    } else if (contador>=50 && contador<150) {
      //PANTALLA 3
      fill (0);
      text ("PROGRAMADORES", 200,145);
      text ("Takenori Oota", 200,170);
      text ("Shigeki Marimoto", 200,195);
      text ("Tetsuya Watanabe", 200,220);
      text ("Junichi Masuda", 200,245);
      
    } else if (contador>=150 && contador<250) {
      //PANTALLA 4
      fill (0);
      text ("DISEÑO DE PERSONAJE", 200,145);
      text ("Ken Sugimori", 200,170);
      text ("Atsuko Nishida", 200,195);
      text ("DISEÑO DE JUEGO", 200,225);
      text ("Satoshi Tajiri", 200,250);
      
    } else if (contador>=230 && contador<300) {
      //PANTALLA 5
      fill (0);
      text ("MUSICA", 200,170);
      text ("Junichi Masuda", 200,220);
      
    } else if (contador>=300 && contador<350) {
      //PANTALLA 6
      fill (0);
      text ("PRODUCTORES", pos1x+200,145);
      text ("Shigeru Miyamoto", pos1x+200,180);
      text ("Takashi Kawagudi", pos1x+200,210);
      text ("Tsunekazu Ishihara", pos1x+200,240);
      
      } else if (contador>=350 && contador<560) {
      //PANTALLA 6
      fill (0);
      text ("PRODUCTORES", pos1x+200,145);
      text ("Shigeru Miyamoto", pos1x+200,180);
      text ("Takashi Kawagudi", pos1x+200,210);
      text ("Tsunekazu Ishihara", pos1x+200,240);
      pos1x = pos1x - velx;
      
      
    } else if (contador>=560 && contador<610) {
      //PANTALLA 7
      pushStyle ();
      textAlign (LEFT,CENTER);
      textSize (12);
      rect (0,75, 400,250);
      fill (0);
      text ("2022. Pokemon", 50,140);
      text ("1995 - 2022. Nintendo", 50,170);
      text ("1995 - 2022. Creatures Inc.", 50,200);
      text ("1995 - 2022. GAME FREAK inc.", 50,230);
      popStyle ();
      
    } else if (contador>=610 && contador<670) {
      //FINAL - PANTALLA 8
      rect (0,75, 400,250);
      fill (0);
      textSize (50);
      text ("THE END", 200,180);
     
    } else if (contador>670) {
      estado = 0; 
      posx = 0;
      pos1x = 0;
    }
  }
}

void mousePressed() {
  //AL HACER CLICK EN EL BOTON, INICIA SECUENCIA
  if ((mouseX>=x) && (mouseX <=x+w) && (mouseY>=y) && (mouseY<=y+h)){
  if (estado==0) {
    estado = 1;
    contador = 0;
  } else if (estado==1) {
  }
}
}
