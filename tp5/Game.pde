class Game {
  String estado; 
  String estadoActual;
  PImage inicioImagen, perdioImagen, ganoImagen;
  Background fondo;
  Rana rana;
  Vehiculos vehiculos;
  
  int gameHeight = height;
  int gameWidth = width;
  
  int i;
  
  Game() {
    fondo = new Background();
    rana = new Rana();
    estado = "inicial";
    vehiculos = new Vehiculos();
    cargarImagenes();
  }
  
 void cargarImagenes() {
   inicioImagen = loadImage( "inicio.png");
   perdioImagen = loadImage( "perdio.png");
   ganoImagen = loadImage( "gano.png");
 }

 void colision() {
    for(i=0; i < 4; i++) {
       if(dist(rana.Px(),rana.Py(),  vehiculos.posXp(i),vehiculos.posYp(i)) < 80)
        estado = "perdio";
    }         
  }  

 void ganaste(){
   if(rana.Px() > 1024)
     estado = "gano"; 
   
 }  

  void dibujar() {
    print(estado);
    if(estado == "inicial") {
       image(inicioImagen, 0, 0, gameWidth, gameHeight);

       if(mousePressed) {
         estado = "comenzarJuego";
       }
    } else
    if(estado == "comenzarJuego"){
         fondo.dibujar();
         vehiculos.dibujar();
         rana.dibujar();
         colision();
         ganaste();
    } else
      if(estado == "perdio"){
        image(perdioImagen, 0, 0, gameWidth, gameHeight);
        
         if(mousePressed){
           estado = "inicial";
           rana= new Rana ();
           vehiculos= new Vehiculos();
         }
      } else
         if(estado == "gano"){
           image(ganoImagen, 0, 0, gameWidth, gameHeight);
         }
  }

  void teclado() {
    rana.saltar();
  }
 }
