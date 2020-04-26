  
char option;

int greenLed = 13;
int redLed = 12;
int yellowLed = 11;
 
void setup(){
  Serial.begin(9600);
  pinMode(greenLed, OUTPUT); 
  pinMode(redLed, OUTPUT);
  pinMode(yellowLed, OUTPUT);
}
 
void loop(){

 // Si existe datos disponibles los leemos
  if (Serial.available() > 0){  // solo cuando recibe datos
   
    //leemos la opcion enviada
    option = Serial.read();
        
    if(option == 'g') {
      digitalWrite(greenLed, HIGH);
      Serial.println("Green ON");
    }
    if(option == 'r') {
      digitalWrite(redLed, HIGH);
      Serial.println("Red ON");
    }
    if(option == 'y'){ 
      digitalWrite(yellowLed, HIGH);
      Serial.println("Yellow ON");
    }

    if(option == '0'){ //  Apaga todos los leds
      digitalWrite(greenLed, LOW);
      digitalWrite(redLed, LOW);
      digitalWrite(yellowLed, LOW);
      Serial.println("All Off");
    }
  }
  
}
