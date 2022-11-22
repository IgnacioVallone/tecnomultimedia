class Rana {
PImage ranaImagen;
  int posX, posY, d; 

  Rana () {
    ranaImagen = loadImage ("rana.png");
    posX = 20;
    posY = 80;
  } 
  
  void dibujar() {
    image(ranaImagen, posX, posY, 80, 90); 
  }
  
  void saltar() {
    if ((keyCode == UP) && (posY > 80))
      posY = posY - 105;
      
    if ((keyCode == DOWN) && (posY < 300))
      posY = posY + 105;
                
    if((keyCode == LEFT) && (posX > 1))
      posX = posX - 5; 
    
    if((keyCode == RIGHT) &&(posX < 750))
      posX = posX + 5; 
  }

  int Px(){
   return this.posX; 
  }  

  int Py(){
   return this.posY; 
  }  
}
