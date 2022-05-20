 int estado;

PImage Batman1, Batman3;

float posX, posY;

PFont letra;

void setup() {

  estado=0;

  size (500, 500);
 
  Batman1=loadImage("Batman1.png");
  Batman1.resize(500, 500);

  Batman3=loadImage("Batman3");
  //Batman3.resize(500, 500);

  letra=loadFont("LeelawadeeUI-Bold-48.vlw");
  textFont(letra);
}

void draw() {
  background(0);
  //primer pantalla donde hay que hacer click para avanzar
  if ( estado==0 ) {
    background(0, 0, 0);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Click para Comenzar", width/2, height/2);
  }
  
  else if (estado==1) {
    //image(Portada1, 0, 0);
    fill(243, 252, 0);
    textSize(80);
    textAlign(LEFT);
    text("The Batman", posX, 100);

    posX=posX-5;
    if ( posX < -550 ) {
      estado = 2;
      posX=width;
    }
  }
  
  else if (estado==2) {
    background(0);
    image(Batman1, 0, 0);

    fill(255);
    textSize(30);
    text("Dirigida por Matt Reeves", 60, 450-posY);
    textSize(20);
    text("Producida por Dylan Clark", 110, 500-posY);
    text("Musicalizada por Michael Giacchino", 110, 535-posY);
    text("Fotografia Greig Fraser", 110, 560-posY);
    text("Vestuario hecho por Jacqueline Durran", 110, 585-posY);
    text("Ayudante de dirección Oscar Sanchez", 110, 610-posY);
    text("Idea y Guión David Canovas", 110, 635-posY);
    text("Asistente de producción Max Dill", 110, 660-posY);
    text("Efectos especiales Pete Zilk ", 110, 685-posY);
    text("Supervisor Matt Plank", 110, 710-posY );
    text("Escenografía Will Pink", 110, 735-posY);
    posY=posY+2;
    if (posY>1000) {
      estado=3;
      posY=height;
    }
  }
  
  else if (estado==3) {
    image(Batman3, 0, 0 );
    textSize(30);
    String s="";
    text(s, 50, 800-posY, 260, 280);
    text("Elenco", 210, 800-posY);
    textSize(18);
    text("Robert Pattinson", 190, 850-posY); 
    text("Zoe Kravitz", 190, 875-posY);
    text("Paul Dano", 190, 900-posY);
    text("Colin Farrell", 190, 925-posY);
    text("Jeffrey Wright", 190, 950-posY);
    text("Andy Serkis", 190, 975-posY);
    text("John Turturro", 190, 1000-posY);
    text("Ben Affleck", 190, 1025-posY);
    text("Barry Keoghan", 190, 1050-posY);
    text("Peter Sarsgaard", 190, 1100-posY);
    text("Max Carver", 190, 1125-posY);
    text("Jayme Lawson", 190, 1150-posY);
    text("Jay Lycurgo", 190, 1175-posY);
    text("Alex Ferns", 190, 1200-posY);
    text("Charlie Carver", 190, 1225-posY);
    text("Rupert Penry", 190, 1250-posY);
    text("Luke Roberts", 190, 1275-posY);
    text("Elena Saurel", 190, 1300-posY);
    text("Iana Saliuk", 190, 1325-posY);




    posY=posY+2;
    if (posY>1400) {
      estado=4;
      posY=height;
    }
  } 
  
 else if (estado==4) {
    

    fill(255);
    textSize(32);
    String s="";
    text(s, 50, +posY, 240, 280);
    text("Actores de Doblaje", 140, +posY);
    textSize(28);
    text("Gimeno Manuel", 140, 50+posY);
    textSize(28);
    text("Cano Gloria", 140, 100+posY);
    textSize(28);
    text("Di Blasi Carlos", 140, 150+posY);
    textSize(28);
    text("Bernal Juan Antonio", 140, 200+posY);
    textSize(28);
    text("Ramirez Jose", 140, 250+posY);
    textSize(28);
    text("Hernandez Alexis", 140, 300+posY);
    textSize(28);
    text("Ruiz Miguel Ángel", 140, 350+posY);


    posY=posY-2;  
    if (posY<-500) {
      estado=5;
      posY=height;
    }
  }
  //Pantalla final
  else if (estado==5) {
    background(0);
    textSize(20);
    text("MUCHAS GRACIAS POR VER", 110, 150);
  }
}



//esto lo uso para poder dar click al principio de y que empiezen a pasar los creditos 

void mousePressed() {
  println("click: "+ estado);
  if ( estado==0 ) {
    estado=1;
    posX=width+800;
  } else if ( estado==1 ) {
  }
}         
