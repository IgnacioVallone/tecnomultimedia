class Autos{
  Car[] misAutos;
  int maxAutos;
  int i;
  int separador;
  int direccion;
  
  Autos(int cantAutos){
    separador = 164;
    maxAutos = cantAutos;
    misAutos = new Car [maxAutos];
    for(i = 0; i < maxAutos; i++){
    direccion = round(random(1, 11) % 2);
    if (direccion == 0){
      misAutos[i] = new Car( 1150, separador, random(-25, -8), false);
    }else{
    misAutos[i] = new Car(10, separador, random(8, 25), true);
    }
    separador += (height-250)/maxAutos;
  }
  }
  
  void dibujar(){
    for(i = 0; i < maxAutos; i++){
       misAutos[i].drive(); 
       misAutos[i].display(); 
    }
  }
  int autosC(){
   return maxAutos; 
  }
  
  int Px(int i) {  
    return misAutos[i].Px(); 
   } 
   
  int Py(int i) {  
    return misAutos[i].Py(); 
   } 
}
