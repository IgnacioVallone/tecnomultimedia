 class Juego{
int num = 6;
int i;
float posicionXboton;
float posicionYboton;
float largoBoton;
float altoBoton;

Rana rana;
PImage inicio;
Car [] arrayCars = new Car [num];
Autos autos;
Fondo fondo;
int etapa;

 Juego(){
   fill(254);
  etapa = 1;
  fondo = new Fondo();
  rana= new Rana();
  autos = new Autos(num);
  inicio = loadImage("calle.jpg");
}

void dibujar(){
  fondo.dibujar(etapa);
  if (etapa == 1){
     posicionXboton = 650;
     posicionYboton = 808;
     largoBoton = 440;
     altoBoton = 228;
    image(loadImage("botonEmpezar.png"), posicionXboton, posicionYboton, largoBoton, altoBoton);
    if(mousePressed){
      if (mouseX > posicionXboton && mouseX < posicionXboton+largoBoton && mouseY > posicionYboton && mouseY < posicionYboton + altoBoton){
      etapa = 2;
      }
    }
    }
  else if (etapa == 2){
    posicionXboton = 300;
    posicionYboton = 850;
    largoBoton = 300;
    altoBoton = 150;
    image(loadImage("botonSiguiente.png"), posicionXboton, posicionYboton, largoBoton, altoBoton);
    if(mousePressed){
      if (mouseX > posicionXboton && mouseX < posicionXboton+largoBoton && mouseY > posicionYboton && mouseY < posicionYboton + altoBoton){
      etapa = 3;
      }
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
    posicionXboton = 200;
    image(loadImage("botonSiguiente.png"), posicionXboton, posicionYboton, largoBoton, altoBoton);
    if(mousePressed){
      if (mouseX > posicionXboton && mouseX < posicionXboton+largoBoton && mouseY > posicionYboton && mouseY < posicionYboton + altoBoton){
      restart();
      etapa = 1;
      }
    }
  }
  else if (etapa == 5){
    posicionXboton = 200;
    image(loadImage("botonSiguiente.png"), posicionXboton, posicionYboton, largoBoton, altoBoton);
    if(mousePressed){
      if (mouseX > posicionXboton && mouseX < posicionXboton+largoBoton && mouseY > posicionYboton && mouseY < posicionYboton + altoBoton){
      restart();
      etapa = 1;
      }
      
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
