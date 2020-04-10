
size(640, 480);

for(int i = 0; i < 100; i++){
  fill(0, 0); // color, transparency 
  ellipse(320, 240-i, 10+i*2, 10+i*2); // x, y, width, height
}

for(int i = 0; i < 100; i++){
  fill(0, 0); // color, transparency 
  ellipse(320-i, 240, 10+i*2, 10+i*2); // x, y, width, height
}

for(int i = 0; i < 100; i++){
  fill(0, 0); // color, transparency 
  ellipse(320, 240+i, 10+i*2, 10+i*2); // x, y, width, height
}

for(int i = 0; i < 100; i++){
  fill(0, 0); // color, transparency 
  ellipse(320+i, 240, 10+i*2, 10+i*2); // x, y, width, height
}
