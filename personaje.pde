class Rana {
PImage ranaImagen;
  int posX, posY, d;
  boolean win = false;

  Rana () {
    ranaImagen = loadImage ("rana.png");
    posX = (width/2) - 80;
    posY = height-130;
  } 
  
  void dibujar() {
    image(ranaImagen, posX, posY, 80, 90); 
  }
  
  void saltar() {
    if ((keyCode == UP))
      posY = posY - 70;
      if (posY < 130){
        win = true;
      }
      
    if ((keyCode == DOWN) && (posY < 900))
      posY = posY + 70;
  }
  
  void restart(){
    win = false;
    posX = (width/2) - 24;
    posY = height-130; 
  }
  int Px(){
   return this.posX; 
  }  

  int Py(){
   return this.posY; 
  }  
  boolean ganar(){
    return this.win;
  }
}
