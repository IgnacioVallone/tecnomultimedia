class Vehiculos {
  
  Vehiculo[] misVehiculos;
  int cantMaxVehiculos = 4;
  int i;
  Vehiculos(){ 
  
  misVehiculos = new Vehiculo[cantMaxVehiculos];   
     for(i = 0; i < cantMaxVehiculos; i++)
      misVehiculos[i] = new Vehiculo((i*115)+60);
    }
    
    void dibujar(){
      this.dibujarVehiculos();      
    }
    
    void dibujarVehiculos() {
      for(i = 0; i < cantMaxVehiculos; i++)
        misVehiculos[i].dibujar();
    }
      
   float posXp(int i) {  
    print(i);
    return misVehiculos[i].Px(); 
   }  
  
  float posYp(int i) {  
    return misVehiculos[i].Py(); 
   }  
   
}  
