class Figurita3 {
  PImage figurita3;
  boolean mover;
  float x, y;
  Figurita3() {
    figurita3 = loadImage("figurita3.png");
    x=677;
    y=146;
  }
  void Dibujar() {
    image(figurita3, x, y);
  }
  void Funcion() {
    if (mouseX>=730 && mouseX<=885 && mouseY >= 195 && mouseY <=310) {
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
