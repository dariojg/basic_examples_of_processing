import controlP5.*;
import processing.serial.*;

Serial port;

ControlP5 cp5; // creo objeto ControlP5
PFont font;

void setup(){

    size(350, 600); // tamaño de ventana
    font = createFont("Calibri light", 20);
    createButtons();  
    
    printArray(Serial.list()); // imprime lista de puertos disponibles
    
    port = new Serial(this, "COM3", 9600); // Mac ? ; Linux "dev/tty/USB0" ; Windows COM3; El nombre de puerto se puede obtener cuando iniciamos la interfaz serial con arduino. (tool -> serial monitor en el ide de arduino)
    
}

void draw(){
  /*
  background(104, 111, 92); //  background color de la ventane (r, g, b)
  
  fill(160, 160, 130);
  textFont(font);
  text("Led Control", 100, 30); // ("texto", x, y)
  */
}

void createButtons(){
  cp5 =  new ControlP5(this);
  int widthButton = 350;
  int heightButton = 150;
  
  cp5.addButton("red")
    .setPosition(0, 0)
    .setSize(widthButton, heightButton)
    .setFont(font)
    .setColorBackground(0xffff0000)
    .setColorForeground(0xffcccccc)
    .setColorLabel(0xffff0000)
    .setColorActive(0xffff0000);
    
   cp5.addButton("green")
    .setPosition(0, heightButton)
    .setSize(widthButton, heightButton)
    .setColorBackground(0xff00FF3C)
    .setColorLabel(0xff00FF3C)
    .setColorActive(0xff00FF3C)
    .setColorForeground(0xffcccccc)
    .setFont(font);
    
   cp5.addButton("yellow")
    .setPosition(0, heightButton * 2)
    .setSize(widthButton, heightButton)
    .setColorBackground(0xffFFF700)
    .setColorLabel(0xffFFF700)
    .setColorActive(0xffFFF700)
    .setColorForeground(0xffcccccc)
    .setFont(font);

    
    cp5.addButton("off")
    .setPosition(0, heightButton * 3)
    .setSize(widthButton, heightButton)
    .setColorBackground(0xff000000)
    .setColorLabel(0xff000000)
    .setColorActive(0xff000000)
    .setColorForeground(0xffcccccc)
    .setFont(font);
}

void red(){  // link con name del button "red"
  port.write('r');
}

void green(){  // link con name del button "green"
  port.write('g');
}

void yellow(){  // link con name del button "yellow"
  port.write('y');
}

void off(){  // link con name del button "off"
  port.write('0');
}
