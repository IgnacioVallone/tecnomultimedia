class Figurita2 {
  PImage figurita2;
  boolean mover;
  float x, y;
  Figurita2() {
    figurita2 =loadImage("figurita2.png");
    x=770;
    y=360;
  }
  void Dibujar() {
    image(figurita2, x, y);
  }
  void Funcion() {
    if (mouseX>=770 && mouseX<=975 && mouseY >= 360 && mouseY <=750) {
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
