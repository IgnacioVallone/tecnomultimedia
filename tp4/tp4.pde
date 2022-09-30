//Ignacio Vallone
//Album de figuritas

// imagenes
PImage fondo;
PImage album;
Figurita F1;
Figurita2 F2;
Figurita3 F3;

void setup() {
  size(800, 800);
  F1=new Figurita();
  F2=new Figurita2();
  F3=new Figurita3();
}
void draw() {
  fondo = loadImage("fondo.jpg");
   image(fondo, 0, 0, 800, 800);
    album = loadImage("album.png");
  image(album, 0, 0, 800, 800);
   println(mouseX, mouseY);
  F1.Dibujar();
  F2.Dibujar();
  F3.Dibujar();
  if(F1.mover){
  F2.mover=false;
  F3.mover=false;
  }
    if(F2.mover){
  F1.mover=false;
  F3.mover=false;
  }
  if(F3.mover){
  F2.mover=false;
  F1.mover=false;
  }
   if (mousePressed) {
    F1.Funcion();
    F2.Funcion();
    F3.Funcion();
  }
}
void mousePressed() {
  //llamamos la funcion de juego FuncionAgarrar
}
void mouseReleased() {
  //llamamos la funcion de juego FuncionSoltar
  F1.Soltar();
  F2.Soltar();
  F3.Soltar();
}
