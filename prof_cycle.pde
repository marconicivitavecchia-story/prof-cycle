//Pianta albero;

static int numeroPiante = 10;
Pianta[] listaPiante = new Pianta[numeroPiante];

class Pianta {
  PShape forma;
  float x, y;
  float dimensione;
  
  Pianta(float x, float y, float dimensione) {
    
    // Use createShape
    forma = createShape(SPHERE,dimensione);
    
    // OR loadShape
    //forma = loadShape("albero.obj");
    //forma.scale(dimensione/2);
    //forma.rotateX(radians(180));
    //forma.rotateY(radians(random(0,360)));
    
    
    forma.setFill(#2FA010);
    this.x = x;
    this.y = y;
  }
  
  void disegna() {
    shape(forma,x,y);
  }
}

void setup() {
  fullScreen(P3D);
  noStroke();
  
  for (int index = 0; index < numeroPiante; index++) {
    listaPiante[index] = new Pianta(random(0,width),random(0,height), random(20,50));
  }
  //listaPiante[0] = new Pianta(random(0,width),random(0,height), 20);
  //listaPiante[1] = new Pianta(random(0,width),random(0,height), 30);
  //listaPiante[2] = new Pianta(random(0,width),random(0,height), 50);
  
}

void draw() {
  background(#00FF00);
  lights();
  for (Pianta p: listaPiante) {
    p.disegna();  
  }
  //listaPiante[0].disegna();
  //listaPiante[1].disegna();
  //listaPiante[2].disegna();
  
}
