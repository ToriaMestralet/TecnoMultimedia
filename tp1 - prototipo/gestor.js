class Gestor {
    constructor() {
      this.mouse = new Dir_y_Vel();
      this.cuadrante1 = false;
      this.cuadrante2 = false;
      this.cuadrante3 = false;
      this.cuadrante4 = false;
    }
  
    actualizar() {
      this.mouse.calcularTodo(mouseX, mouseY);
  
      this.cuadrante1 = false;
      this.cuadrante2 = false;
      this.cuadrante3 = false;
      this.cuadrante4 = false;
     
      if (this.mouse.ultimaDir() < 0 && this.mouse.ultimaDir() > -HALF_PI) {
        this.cuadrante1 = true;
      }
      if (this.mouse.ultimaDir() < -HALF_PI) {
        this.cuadrante2 = true;
      }
      if (this.mouse.ultimaDir() < PI && this.mouse.ultimaDir() > HALF_PI) {
        this.cuadrante3 = true;
      }
      if (this.mouse.ultimaDir() < HALF_PI && this.mouse.ultimaDir() > 0) {
        this.cuadrante4 = true;
      }
    }
  }
  