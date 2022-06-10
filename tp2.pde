//https://youtu.be/x6FDu6u1mUw
void setup() {
  size(800, 400);
  smooth();

}

void draw () {
  background (0, 255, 0);
  formas();
}
void formas() {

  if (mouseX > 400) {                 
    fill (random(244));

for (int l=width; l>0; l-=30){
ellipse(width/2, height/2,l,l );
}
}}
