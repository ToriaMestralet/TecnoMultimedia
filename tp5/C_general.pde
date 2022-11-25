class General {

  //Clases 
  Inicio inicio;
  Instrucciones instrucciones;
  Fondo fondo;
  Comelon comelon;
  Pez1[] pez1;
  Pez2 [] pez2;
  Boton bd, bi, bc;
  Creditos creditos;

  //Logica de estados
  float estado=0;

  //Fuente
  PFont fuente;

  //Peces
  int cant=7;

  General () {
    creditos= new Creditos ();
    fuente = createFont ("pixelfont.ttf", 24); //Se declara la fuente...
    textFont(fuente);

    bd= new Boton("inicio", 250-120, 275, 120, 30);
    bi = new Boton("creditos", 450, 275, 120, 30);
    bc = new Boton ("_", 245, 270, 190, 40);

    inicio = new Inicio();
    instrucciones = new Instrucciones();
    fondo = new Fondo();
    comelon= new Comelon ();

   

    pez1=new Pez1 [cant];
    pez2= new Pez2 [cant];
    for (int i=0; i<cant; i++) {
      pez1[i]= new Pez1();
      pez2[i]= new Pez2();
    }
  }
  
  void todo () {


    if (estado==0) {
      //Start
      inicio.existir();
    } else if (estado==1) {
      //instrucciones
      fondo.existir();
      instrucciones.existir();
      bc.actualizar();
    } else if (estado==2) {
      //Jugando
      fondo.existir();
      comelon.existir();
      for (int i=0; i<cant; i++) {
        pez1[i].actualizar();
        pez2[i].actualizar();
      }
      colision (comelon, pez2);
    } else if (estado==3) {
      //Ganaste
      fondo.existir();
      bd.actualizar();
      bi.actualizar();
    } else if (estado==4) {
      fondo.existir();
      creditos.existir();
      creditos.pasar();
      bc.actualizar();
    }
  }

  void press () {
    if (estado==0) {
      estado=1;
      
    } else if (estado==1) {
      if (mouseX >= bc.x && mouseX<= bc.x+bc.ancho && mouseY >= bc.y && mouseY<= bc.y+bc.alto)
      { 
        estado=2;
      }
    } else if (estado==3) {
      if (mouseX >= bd.x && mouseX<= bd.x+bd.ancho && mouseY >= bd.y && mouseY<= bd.y + bd.alto)
      {
        estado=0;
      }
      if (mouseX >= bi.x && mouseX<= bi.x+bi.ancho && mouseY >= bi.y && mouseY<= bi.y + bi.alto)
      { 
        estado=4;
      }
    } else if (estado==4) {
      if (mouseX >= bc.x && mouseX<= bc.x+bc.ancho && mouseY >= bc.y && mouseY<= bc.y+bc.alto)
      { 
        estado=0;
      }
    }
  }

  void colision (Comelon comelon, Pez2 []pez2) {
    for (int i=0; i<pez2.length; i++) {
      if ((dist (comelon.posx, comelon.posy, pez2[i].x, pez2[i].y)< 60))
      {         
        estado=3;
      }
    }
  }
}
