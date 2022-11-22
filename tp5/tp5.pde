Game game;

void setup() {
  size(1024, 768);
  game = new Game();
}

void draw() {
  game.dibujar();
}

void keyPressed( ){
  game.teclado();
}
