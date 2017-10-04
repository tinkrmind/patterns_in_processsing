color a, b, c, d, e;
int size = 10;
float n=0, m=0;
int speed = 120;
color[] colorOrder;

void setup() {
  size(1024, 1024);
  colorMode(RGB, 255, 255, 255);
  stroke(255, 25);
  background(110, 99, 98);
}

void draw() {
 
  a = color(29, 32, 33);
  b = color(110, 99, 98);
  c = color(127, 183, 190);
  d = color(241, 3, 106);
  e = color(245, 249, 233);
  color[] colorOrder = {e, a, c, d};
  //ellipse(return_x(n), return_y(n), 10, 10);
  //ellipse(return_x_1(n), return_y_1(n), 10, 10);
  for (m = 0; m < 15; m=m+1) {
    line(return_x(n+m), return_y(n+m), return_x_1(n+m), return_y_1(n+m));
  }

  if (int(n/speed) >=4)
  {
    save("lines.png");
    while (true);
  }
  stroke(colorOrder[int(n/speed)], 25);

  n=n+0.5;
}

int return_x(float n) {
  return int(sin(n/16)*512+512);
}

int return_y(float n) {
  return int(cos(n/19)*512+512);
}

int return_x_1(float n) {
  return int(sin(n/12)*512+512);
}

int return_y_1(float n) {
  return int(cos(n/15)*512+512);
}