//Expresión Digital II - UDD - 2016.
//Maite Iturriaga Batlle.
//s06t00maite.

float x, y, amt;
int vel = 5;
int vel1 = 4;
int diam = 50;
color c1, c2, c3;

void setup() {
  size(400, 400);
  x = diam;
  y = height / 2;

  c1 = color (255, 255, 0); //Amarillo
  c2 = color (255, 0, 255); //Fucsia
  c3= color (0, 255, 255);//Cian
}

void draw() {
  amt = map(x, 0, width, 0, 1);
  c3 = lerpColor(c1, c2, amt);
  background(255);                              //Para que se vuelva a dibujar fondo
  lineas();
  x += vel;                                     //De izquierda a derecha movimiento
  y += vel1;
  //x -= 20;                                    //Por el 20 va más rápido y de derecha a izquierda
  //x += 20;                                    //Por el 20 va más rápido y de izquierda a derecha

  //¿Qué tengo que hacer para que la elipse aparezca al lado izquierdo, cuando llega alfinal?
  //if (x > width) {                            //Si es que x llega al final 
  //x = 0;                                      //Comienza desde el otro lado nuevamente
  //}

  //¿Qué tengo que hace para que la elipse se devuelva?
  if (x > width - diam / 2 || x < diam / 2) { 
    vel *= - 1;
  }
  if (y > height - diam / 2 || y < diam / 2) { 
    vel1 *= - 1;
  }
  
}
void lineas(){
  fill(c3);
  strokeWeight(3);
  // todo iene queir en funcion de valores generales mate mate mate mate
  line( x, y, x + 4, y); //Línea(a)
  line( x, y, x, y - 4); //Línea(b)
  line( x - 4, y + 4, x - 4, y + 8);//Línea(c)
  line(x, y, x - 4, y + 4); //Línea(d)
  println("maite te gané!");
}