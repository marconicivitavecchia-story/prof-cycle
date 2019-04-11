class Pianta {
  PShape forma;
  float x, y;
  float dimensione;

  Pianta() {
    dimensione = random(30, 80);
    //forma = createShape(SPHERE, dimensione);
    forma = loadShape("albero.obj");
    forma.scale(dimensione);
    forma.rotateX(radians(180));
    forma.rotateY(radians(random(-45,45)));
    
    forma.setFill(#28C61E);
    x = random(0, width);
    y = random(0, height);
  }
  void semina() {
    shape(forma, x, y);
  }
}

Pianta[] querce;

void setup() {
  fullScreen(P3D);
  noStroke();
  
  querce = new Pianta[100];
  for(int index = 0; index < 100; index++){
    querce[index] = new Pianta();
  }
}
void draw() {
  background(#00FF00);
  lights();
  for (Pianta q: querce) {
    q.semina();
  }
}
