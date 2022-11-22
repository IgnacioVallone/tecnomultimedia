class Background {
  PImage mapa; 
  int x, y;
  String nombreMapa = "campo.png";

  Background() {
    x= width;
    y= height;
    mapa = loadImage(nombreMapa);
  }

  void dibujar() {
        mapa = loadImage(nombreMapa);
        image(mapa, 0, 0, x, y);
  }
}
