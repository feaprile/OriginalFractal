public void setup() {
  size(2000, 1500);
  ellipseMode(CENTER);
  rectMode(CENTER);
  //noLoop();
}
public void draw() {
  frameRate(120);
  background(255);
  myFractal(150, 350, 200);
  myFractal(-150, 350, 200);
  myFractal(450, 350, 200);
  myFractal(-450, 350, 200);
}


public void myFractal(int x, int y, int siz) {
  strokeWeight(5);
  noFill();
  rect(x+mouseX, y-115, siz/7, siz/7); //small line rectangles
  rect(x+mouseX, y-115, siz/7, siz/7); // top

  rect(x+mouseX, y+115, siz/7, siz/7); //small line rectangles
  rect(x+mouseX, y+115, siz/7, siz/7); //bottom

  rect(x+mouseX, y-230, siz/3, siz/5); // big rectangles
  rect(x+mouseX, y-230, siz, siz);     // top

  rect(x+mouseX, y+230, siz/3, siz/5); // big rectangles
  rect(x+mouseX, y+230, siz, siz);     // bottom

  ellipse(x+mouseX, y, siz, siz);
  ellipse(x+mouseX+100, y, siz/3, siz/3); // circles
  ellipse(x+mouseX-100, y, siz/3, siz/3);

  if (siz > 19){ //if siz <= 10 base case
    myFractal(x-siz/1, y, siz/2);
    myFractal(x+siz/1, y, siz/2);
  }
}
