let swish;
let anda;
let mouse;
let seDibujo;
let dibujada;

function setup() {
  createCanvas(800,800);
  colorMode(HSB, 255, 100, 100, 255);
  background(100, 5, 95);

  swish = [];
  tupuedes = new Gestor();
  anda = new CurvaCerrada(0, 0, 0, 0);
  mouse = new Dir_y_Vel();
  seDibujo = false;
  dibujada = false;
}

function draw() {
  tupuedes.actualizar();

  mouse.calcularTodo(mouseX, mouseY);

  if (!mouse.noSeMueve()) {
    seDibujo = false;
  }
  if (mouse.noSeMueve() && !seDibujo && (swish.length < 20)) {
   
    if (tupuedes.cuadrante1) {
      swish.push(new CurvaCerrada(random(30, 60), random(80, 100), random(5, 100), map(mouse.ultimaVel(), 0, 10, 10, 255)));
    }
    if (tupuedes.cuadrante2) {
      swish.push(new CurvaCerrada(random(80, 100), random(30, 60), random(5, 100), map(mouse.ultimaVel(), 0, 10, 10, 255)));
    }
    if (tupuedes.cuadrante3) {
      swish.push(new CurvaCerrada(random(80, 100), random(30, 60), random(200, 380), map(mouse.ultimaVel(), 0, 10, 10, 255)));
    }
    if (tupuedes.cuadrante4) {
      swish.push(new CurvaCerrada(random(30, 60), random(80, 100), random(200, 380), map(mouse.ultimaVel(), 0, 10, 10, 255)));
    }

    for (let i=0; i<swish.length; i++){
      if(!swish[i].dibujada){
        swish[i].dibujar();
        swish[i].dibujada = true;
      }
    }
    seDibujo = true;
  }
}
