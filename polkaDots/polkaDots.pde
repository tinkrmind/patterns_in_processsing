color a, b, c, d, e;
int size = 10;
float max = 35.0;

void setup() {
  size(1024, 1024);
  colorMode(RGB, 255, 255, 255);
  noStroke();
  background(0);

  a = color(29, 32, 33);
  b = color(110, 99, 98);
  c = color(127, 183, 190);
  d = color(241, 3, 106);
  e = color(245, 249, 233);

  color[] colorOrder = {b, e, c, d};
  
  float x = pow(1024, 1/max);
  println(x);
  
  for (int n = int(max); n>=0; n--) {
    print(n);
    print(' ');
    
    int size = int(pow(x, n));
    println(size);
    
    fill(colorOrder[n%4], 150);
    rect(0, 0, size, size);
    fill(colorOrder[(n)%4], 150);
    ellipse(size/2, size/2, size, size);
  }
}