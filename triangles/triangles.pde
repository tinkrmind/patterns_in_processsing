color a, b, c, d, e;

void setup() {
  size(1024, 1024);
  colorMode(RGB, 255, 255, 255);
  noStroke();
  background(a);

  a = color(29, 32, 33);
  b = color(110, 99, 98);
  c = color(127, 183, 190);
  d = color(241, 3, 106);
  e = color(245, 249, 233);

  color[] colorOrder = {b, e, c, d};
  fill(colorOrder[0]);
  triangle(0, 0, 1024, 1024, 1024, 0);
  
  fill(colorOrder[1]);
  triangle(0, 0, 512, 512, 1024, 0);

  fill(colorOrder[2]);
  triangle(0, 0, 512, 512, 512, 0);

  fill(colorOrder[3]);
  triangle(0, 0, 256, 256, 512, 0);

  save("triangles.jpg");
}