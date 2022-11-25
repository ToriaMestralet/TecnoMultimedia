class Creditos {
  String [] creditos;
  int pasar = 0, timing =80;


  Creditos() {

    fill(0);
    textAlign (CENTER, CENTER);
    creditos= loadStrings ("data/creditos.txt");
    
  }

void existir () {
  text("Inicio", 300, 275);
}

  void pasar() {
    text(creditos[pasar], 0, 0, width, 2*height/3);
    if (frameCount%timing == 0) {
      pasar++;
      if (pasar>= creditos.length) {
        pasar=0;
      }
    }
  }
}
