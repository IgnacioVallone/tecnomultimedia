class Car{
  color col;
  int posX;
  int posY;
  int numero;
  float speed;
  float ancho;
  boolean direccion;
  PImage imagen;
  
  Car(int posXFalso, int posYFalso, float speedFalso, boolean direction){
    posX = posXFalso;
    posY = posYFalso;
    speed = speedFalso;
    direccion = direction;
    if (direccion == true){
      imagen = loadImage("autosDerecha/auto1.png");
    }else if(direccion == false){
     numero = int(round(random(0,5)));
    imagen = loadImage("autosIzquierda/auto3.png");
  }
    ancho = 100;
  }
  
  void display(){
    image(imagen, posX, posY, ancho, ancho/2); 
    //rect(posX, posY, 90, 50, 5);
  }
  
  void drive(){
  posX += speed;
  if (direccion == true){
  if(posX > width){
    posX = 0;
   }}else{
   if(posX < -100){
    posX = 1050;
   }
   }
  }
  
  int Px(){
   return posX; 
  }  

  int Py(){
    return posY; 
  }

}
