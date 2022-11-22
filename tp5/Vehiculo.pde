class Vehiculo {
  float x, y,tam,vel;
  PImage vehiculo;
  
  Vehiculo(int nuevoY) {
    tam = 130;
    x= random(850, 1500);
    y= nuevoY;
    vehiculo = loadImage( "auto.png");
    vel = random(5, 50);
  }

  void dibujar() {
    x = x - random(vel);
    image(vehiculo, x, y, tam, tam-20);
     if(x < -100) {
      x= random(800,1030);
      vel = random(25,30);
    }
  }

  float Px(){
   return x; 
  }  

  float Py(){
    return y; 
  }  
}
