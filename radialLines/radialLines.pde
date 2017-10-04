color a, b, c, d, e;
int size = 10;

void setup() {
  size(1024, 1024);
  colorMode(RGB, 255, 255, 255);
  noStroke();
  background(e);

  //a = color(205, 167, 20);
  //b = color(77, 86, 59);
  //c = color(42, 106, 105);
  //d = color(165, 89, 20);
  //e = color(146, 150, 127);

  a = color(29, 32, 33);
  b = color(110, 99, 98);
  c = color(127, 183, 190);
  d = color(241, 3, 106);
  e = color(245, 249, 233);

  color[] colorOrder = {a, b, c, d, e};

  int n = int(random(4096));

  for (n = 0; n<3600; n=n+1) {
    fill(colorOrder[n%5]);
    triangle(512+random(25), 512+random(25), return_x(n), return_y(n), return_x(n+random(1)+1), return_y(n+random(1)+1));
  }
  
  save("radialLines.png");
}

void draw() {
}

int return_x(float n) {
  return int(cos(n*PI/180)*1024)+512;
}

int return_y(float n) {
  return int(sin(n*PI/180)*1024)+512;
}