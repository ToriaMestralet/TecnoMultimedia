class Instrucciones {
  String [] instrucciones;  //usamos un array para ubicar las lineas de texto de las instrucciones de juego
  
  
  // Constructor
  Instrucciones () {
    instrucciones = loadStrings ("data/instrucciones.txt");
    
  }

  void existir () {
    fill(255);
    textSize(24);
    text (instrucciones [0], 0, 0, width, height/2);
    
    push();
    textSize (18);
    fill (0);
    text (instrucciones [1], 0, 25, width, height/2);
    text (instrucciones [2], 0, 45, width, height/2);
    text (instrucciones [3], 0, 65, width, height/2);
    text (instrucciones [4], 0, 85, width, height/2);
    text (instrucciones [5], 0, 105, width, height/2);
    pop();
    text("START", 300, 275);
  }

}
