size(1600, 1000);
background(255);
int mazeWidth = 40;

translate(mazeWidth/2,mazeWidth/2);
for (int y = 0; y < height-mazeWidth; y += mazeWidth) {
  for (int x = 0; x < width-mazeWidth; x += mazeWidth) {
    if (random(1) > 0.5) {
      stroke(0);
      line(x, y, x+mazeWidth, y+mazeWidth);
    } 
//    else if(random(1) < 0.8){
//      stroke(0, 64);
//      line(x, y+mazeWidth, x+mazeWidth, y);
//    }
    else{
      stroke(0, 64);
      line(x, y+mazeWidth, x+mazeWidth, y);
    }
  }
}
saveFrame("images/maze-##.png");
