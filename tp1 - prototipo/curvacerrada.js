class CurvaCerrada {
  constructor(pureza, luz, linea, alfa) {
    this.mouse = new Dir_y_Vel();
    //puntos inicial y final
    this.x1 = 0;
    this.y1 = random (height / 2);
    this.x2 = width + 30;
    this.y2 = random (height / 2);

    //anclajes
    this.anclajex1 = width / 2;
    this.anclajey1 = 3 * height / 4;
    this.anclajex2 = random (width);
    this.anclajey2 = random (height / 2, height);
    //propiedades de la curva
    this.matiz = random (117, 126);
    this.luminosidad = luz;
    this.saturacion = pureza;
    this.grosor = linea;
    this.alfie = alfa;
  }

  dibujar() {
    push ();
    colorMode (HSB, 255, 100, 100, 255);
    noStroke ();
    fill (this.matiz, this.saturacion, this.luminosidad, this.alfie);
    beginShape ();
    vertex (this.x1, this.y1);
    bezierVertex(
      this.anclajex1, this.anclajey1,
      this.anclajex2, this.anclajey2,
      this.x2, this.y2);
    bezierVertex (
      this.anclajex2, this.anclajey2 + this.grosor,
      this.anclajex1, this.anclajey1 + this.grosor,
      this.x1, this.y1 + 40);
    endShape ();
    pop ();
  }
}
