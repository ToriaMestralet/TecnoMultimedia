class Dir_y_Vel {
  constructor() {
    this.posX = 0;
    this.posY = 0;
    this.prevPosX = 0;
    this.prevPosY = 0;
    this.miDireccionX = 0;
    this.miDireccionY = 0;
    this.vel = 0;
    this.miDireccionPolar = 0;

    this.prevPolar = 0;
    this.prevVel = 0;
    this.freno = false;
  }

  calcularTodo(mi_X, mi_Y) {
    this.prevPosX = this.posX;
    this.prevPosY = this.posY;
    this.posX = mi_X;
    this.posY = mi_Y;
    this.miDireccionX = this.posX - this.prevPosX;
    this.miDireccionY = this.posY - this.prevPosY;
    this.miDireccionPolar = atan2(this.posY - this.prevPosY, this.posX - this.prevPosX);
    this.vel = dist(this.posX, this.posY, this.prevPosX, this.prevPosY);

    if (this.vel < 0.5) {
      this.freno = true;
    } else {
      this.freno = false;
      this.prevPolar = this.miDireccionPolar;
      this.prevVel = this.vel;
    }
  }

  velocidad() {
    return this.vel;
  }

  direccionX() {
    return this.miDireccionX;
  }

  direccionY() {
    return this.miDireccionY;
  }

  direccionPolar() {
    return this.miDireccionPolar;
  }


  noSeMueve() {
    return this.freno;
  }

  ultimaDir() {
    return this.prevPolar;
  }

  ultimaVel() {
    return this.prevVel;
  }
}
