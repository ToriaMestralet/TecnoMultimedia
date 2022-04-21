/* Victoria Mestralet
91492/6
Comision 3
TP0, autorretrato abstracto
*/

void setup () {
  size (400,400);
  textSize (35);
 
}

void draw () {
   
  //primero defini que todo rectangulo que dibuje este centrado, y mi color de fondo
  rectMode (CENTER); 
  background (90, 60, 200);
   
   //PELO - use rectangulos en un tono de marron para el largo, y un pequeño rectangulo blanco para la colita
  fill (120, 40, 0);  
  rect (200, 30, 80, 40, 40);
  rect (200, 170, 180, 260, 40);
  fill (255, 255, 255);
  rect (200, 35, 84, 10, 20);
  
  //CABEZA Y CUELLO - use circulos para las orejas, y rectangulos para cuello y cabeza
  fill (250, 220, 180);
  circle (120, 165, 55);
  circle (280, 165, 55);
  rect (200, 270, 50, 80);
  rect (200, 160, 170, 230, 90);
  
  //OJOS - use elipses para los ojos, y pequeños circulos marron oscuro para las pupilas
  fill (255, 255, 255);
  ellipse (170, 110, 50, 40);
  ellipse (230, 110, 50, 40); 
  fill (80, 40, 20);
  circle (170, 110, 25);
  circle (230, 110, 25);
  
  //FLEQUILLO - Use pushStyle para poder dibujarlo unicamente con algunas lineas, cambiando su peso sin afectar el peso de las demas
  pushStyle ();
  strokeWeight (21);
  stroke (120, 40, 0);
  curve (310, 30, 210, 50, 295, 160, 365, 135);
  curve (125, 15, 190, 50, 100, 175, 40, 170);
  line (235, 50, 280, 100);
  line (220, 50, 290, 140);
  line (210, 50, 295, 175);
  line (150, 50, 120, 100);
  line (170, 50, 110, 140);
  line (190, 50, 105, 175);
 popStyle ();
  
  //NARIZ - use dos circulos para las fosas nasales y un rectangulo alargado para el puente y punta de la nariz
  fill (250, 200, 190);
  circle (187, 185, 20);
  circle (213, 185, 20);
  rect (200, 160, 30, 75, 10);
  
  //BOCA - decidi hacerla con una linea curva, vuelvo a usar pushStyle para cambiar su peso sin afectar el resto
  pushStyle ();
  strokeWeight (2);
  curve (95, 200, 165, 230, 235, 230, 310, 200);
  popStyle ();
 
  //REMERA - use un rectangulo para la remera, y agregue un triangulo para el cuello, 
  //vuelvo a hacer uso de pushStyle para quitar los bordes de ese triangulo
  fill (255, 10, 40);
  rect (200, 330, 240, 60, 10);
  pushStyle ();
  noStroke ();
  fill (250, 220, 180);
  triangle (175, 300, 200, 320, 225, 300);
  popStyle ();
  
  //NOMBRE
  fill (230, 100, 90);
  text ("Toria", 160, 393);
  
}
