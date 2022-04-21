void setup(){
  size(500,500); 
  background(177);
  fill(255,0,0);
  rect(100,300,300,100);
  fill(255);
  fill(18,244,250);
  quad(175,200,325,200,325,300,175,300); //ventanilla
  fill(1);
  ellipse(160,400,80,80); //rueda 1
  ellipse(340,400,80,80); //rueda 2
  rect(0,440,500,500);
  line(370,300,370,240); //antena
  fill(226,255,13);
  rect(100,300,30,20); //luz 1
  rect(370,300,30,20); //luz 2
  line(250,200,250,400);
  fill(0,0,255);
  triangle(365,240,370,230,375,240); //punta de la antena
  fill(255);
  ellipse(160,400,60,60); //llanta 1
  ellipse(340,400,60,60); //llanta 2


} 

  
void draw(){ 
  println(mouseX);
  println(mouseY);
  
}
