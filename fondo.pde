class Fondo {

  Fondo() {}

  void dibujar(int etapa) {
        if (etapa == 1){
          image(loadImage("inicio.png"), 0, 0, width, height);
        }
        else if (etapa == 2){
          image(loadImage("CREDITOS.png"), 0, 0, width, height);
        }
        else if (etapa == 3){
          image(loadImage("calle.png"), 0, 0, width, height);
        }
        else if (etapa == 4){
          image(loadImage("ganaste.png"), 0, 0, width, height);
        }
        else if (etapa == 5){
          image(loadImage("perdiste.png"), 0, 0, width, height);
        }
   }
 }
