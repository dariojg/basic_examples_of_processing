Pallete pallete = new Pallete(); //<>//

void setup() {
  size(640, 480);
  noStroke();
  background(255);
  pallete.drawPallete();
}

void draw() {
  pallete.selectColor();
  fill(pallete.selectedColor);

  if (mousePressed && pallete.selectingColor() == 0) {
    ellipse(mouseX, mouseY, 20, 20);
  }
}

class Pallete {
  ArrayList<PalleteColor> colors = new ArrayList<PalleteColor>();
  color selectedColor;

  Pallete() {
    colors.add(new PalleteColor(20, 20, color(0, 0, 0)));
    colors.add(new PalleteColor(20, 62, color(255, 255, 255)));
    colors.add(new PalleteColor(20, 41, color(0, 255, 0)));
    colors.add(new PalleteColor(20, 62, color(0, 0, 255)));
    colors.add(new PalleteColor(20, 100, color(100, 54, 100)));
    colors.add(new PalleteColor(20, 121, color(100, 20, 130)));
    colors.add(new PalleteColor(20, 142, color(100, 1, 10)));
  }

  void drawPallete() {
    for (int i = 0; i < colors.size(); i++) {
      colors.get(i).drawRect();
    }
  }

  void selectColor() {
    color selected = selectingColor();
    if (selected != 0 && mousePressed) {
      selectedColor = selected;
    }
  }

  color selectingColor() {
    for (int i = 0; i < colors.size(); i++) {
      PalleteColor pColor = colors.get(i);
      if (isHover(pColor)) {
        return pColor.c;
      }
    }
    return 0;
  }

  Boolean isHover(PalleteColor pColor) {
    return (pColor.positionX <= mouseX &&  pColor.positionX + pColor.sizeX >= mouseX) && (pColor.positionY <= mouseY &&  pColor.positionY + pColor.sizeY >= mouseY);
  }
}

class PalleteColor {

  int positionX = 0;
  int positionY = 0;
  int sizeX = 20;
  int sizeY = 20;
  color c = color(1, 1, 1);

  PalleteColor(int posX, int posY, color _color) {
    positionX = posX;
    positionY = posY;
    c = _color;
  }

  void drawRect() {
    fill(c);
    rect(positionX, positionY, sizeX, sizeY);
  }
}
