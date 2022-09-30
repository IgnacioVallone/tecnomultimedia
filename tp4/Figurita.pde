class Figurita {
  PImage figurita;
  boolean mover;
  float x, y;
  Figurita () {
    figurita = loadImage("figurita.png");
    x=550;
    y=285;
  }
  void Dibujar() {
    image(figurita, x, y);
  }
  void Funcion() {
    if (mouseX>=550 && mouseX<=730 && mouseY >= 285 && mouseY <=520) {
      mover=true;
    }
    if (mover) {
      x=mouseX;
      y=mouseY;
    }
  }
  void Soltar() {
    mover=false;
  }
}
