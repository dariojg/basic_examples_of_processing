import controlP5.*;
import processing.serial.*;

Serial port;

ControlP5 cp5; // creo objeto ControlP5
PFont font;

void setup(){

    size(300, 450); // tamaño de ventana
    font = createFont("Calibri light", 20);
    createButtons();  
    
    printArray(Serial.list()); // imprime lista de puertos disponibles
    
    port = new Serial(this, "/dev/ttyUSB0", 9600); // Mac ? ; Linux "dev/tty/USB0" ; Windows COM3; El nombre de puerto se puede obtener cuando iniciamos la interfaz serial con arduino. (tool -> serial monitor en el ide de arduino)
    
}

void draw(){
  background(104, 111, 92); //  background color de la ventane (r, g, b)
  
  fill(160, 160, 130);
  textFont(font);
  text("Led Control", 100, 30); // ("texto", x, y)
}

void createButtons(){
  cp5 =  new ControlP5(this);
  
  cp5.addButton("red")
    .setPosition(100, 50)
    .setSize(100, 60)
    .setFont(font);
    
   cp5.addButton("green")
    .setPosition(100, 150)
    .setSize(100, 60)
    .setFont(font);
    
   cp5.addButton("yellow")
    .setPosition(100, 250)
    .setSize(100, 60)
    .setFont(font);
    
    cp5.addButton("off")
    .setPosition(100, 350)
    .setSize(100, 60)
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
