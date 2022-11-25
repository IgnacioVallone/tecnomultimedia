class Fondo {
  int y;
  PImage fotoJuego; 
  PImage fotoInicio;
  PImage fotoCreditos;
  PImage fotoGanaste;
  PImage fotoPerdiste;
  int x;

  Fondo() {
    cargarFotos();
  }

  void dibujar(int etapa) {
        if (etapa == 1){
          image(fotoInicio, 0, 0, width, height);
        }
        else if (etapa == 2){
          image(fotoCreditos, 0, 0, width, height);
        }
        else if (etapa == 3){
          image(fotoJuego, 0, 0, width, height);
        }
        else if (etapa == 4){
          image(fotoGanaste, 0, 0, width, height);
        }
        else if (etapa == 5){
          image(fotoPerdiste, 0, 0, width, height);
        }
  }
  
  void cargarFotos() {
  fotoInicio = loadImage("inicio.png");
  fotoCreditos = loadImage("CREDITOS.png");
  fotoJuego = loadImage("calle.png");
  fotoGanaste = loadImage("ganaste.png");
  fotoPerdiste = loadImage("perdiste.png");
  }
}
