color a, b, c, d, e;

void setup() {
  size(1024, 1024);
  colorMode(RGB, 255, 255, 255);
  noStroke();
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

  background(e);

  int size = 32; 
  float fill_percentage = 45;
  for (int j=-64; j<=1024; j = j+64) {  
    for (int i=-64; i<=1024; i = i+56*4) {
      for (int k=0; k<4; k++) {
        //if(2*i+j < 1512){
        //  fill_percentage = 25;
        //}
        //else{
        //  fill_percentage = 55;
        //}
        
        fill(colorOrder[1]);
        //stroke(colorOrder[1]);
        if (random(100) < fill_percentage)
          triangle(i+32+k*56, j+16*k, i+k*56+64, j+16*k, i+32+16+56*k, j+32+16*k);
          
        fill(colorOrder[0]);
        //stroke(colorOrder[0]);
        if (random(100) < fill_percentage)
          triangle(i+k*56, j+16*k, i+k*56+size, j+16*k, i+k*56+size/2, j+size+16*k);
          
        fill(colorOrder[2]);
        //stroke(colorOrder[2]);
        if (random(100) < fill_percentage)
          triangle(i+k*56, j+16*k, i+k*56+32, j+16*k, i+k*56+16, j-32+16*k);
          
        fill(colorOrder[3]);
        //stroke(colorOrder[3]);
        if (random(100) < fill_percentage)
          triangle(i+16+k*56, j+32+16*k, i+16+k*56+32, j+32+16*k, i+k*56+32, j+64+16*k);
      }
    }
  }
  
  save("triangles.png");
}

void draw() {
}