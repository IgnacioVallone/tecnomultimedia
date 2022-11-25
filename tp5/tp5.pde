//https://youtu.be/v3Ow-tfnkWw
import ddf.minim.*;

Minim minim;
AudioPlayer player;
Juego juego;

void setup(){
  minim = new Minim(this);
 player = minim.loadFile("musica.wav");
 size(1100, 1040);
 juego = new Juego();
}

void draw(){
  if (player.isPlaying()) {
    text("presione una tecla para activar", 10, 20);
  } else{
    text("presione una tecla para desactivar", 10, 20);
  }
  juego.dibujar();
}

void keyPressed(){
  if ((keyCode == ENTER)){
    if(player.isPlaying()) {
    player.pause();
    } else {
    player.play();
  }}
  juego.teclado();
}
