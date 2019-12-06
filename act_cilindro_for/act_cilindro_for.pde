//efecto cilindro
int alto;
float anchoCelda = 1;
int cantFilas = 10;
boolean blanco = true;

void setup(){
size(1920, 1080);
alto = height/cantFilas;
}
void draw(){
background(0);
for (int i= 0; i<width; i+= anchoCelda) {
  blanco = !blanco;
  for (int j=0; j<cantFilas; j ++) {
    float distan = dist(i, j, width/2, j);
    anchoCelda = map(distan, 0, width/2, alto,2);
    if (blanco) {
      fill(#FFFEE3);
    } else {
      fill(0);
    }
    rect( i, j*alto, anchoCelda, alto );
    blanco = !blanco;
  }
}
}
