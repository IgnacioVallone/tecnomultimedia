class Juego{
int num = 6;
int i;
Rana rana;
PImage inicio;
Car [] arrayCars = new Car [num];
Autos autos;
Fondo fondo;
int etapa;

 Juego(){
  etapa = 1;
  fondo = new Fondo();
  rana= new Rana();
  autos = new Autos(num);
  inicio = loadImage("calle.jpg");
}

void dibujar(){
  fondo.dibujar(etapa);
  if (etapa == 1){
    if(mousePressed){
      etapa = 2;
    }
    }
  else if (etapa == 2){
    if(mousePressed){
      etapa = 3;
    }
    }
  else if (etapa == 3){
    autos.dibujar();
    rana.dibujar();
    colision();
    if (rana.ganar() == true){
      etapa = 4;
    }
  }
  else if (etapa == 4){
    if(mousePressed){
      restart();
      etapa = 1;
    }
  }
  else if (etapa == 5){
    if(mousePressed){
      restart();
      etapa = 1;
    }
  }
}

void restart(){
  rana.restart();
}

void colision() {
    for(i=0; i < num; i++) {
       if(dist(rana.Px(),rana.Py(),  autos.Px(i), autos.Py(i)) < 45){
        etapa = 5;
        dibujar();
       }
    }    
  }
void teclado() {
    rana.saltar();
  }
}
