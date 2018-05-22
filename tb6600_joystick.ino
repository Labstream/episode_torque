#include <AccelStepper.h>

int joyPinX = A0;
int joyPinY = A1;
int joyPinB = A2;

int valueX = 0;
int valueY = 0;
int valueB = 0;

int distance = 1500;

// Define a stepper and the pins it will use
AccelStepper stepper(AccelStepper::DRIVER,8,9);

void setup()
{  
  // Change these to suit your stepper if you want
  stepper.setMaxSpeed(2*10*16);
  stepper.setAcceleration(2*10*16);
  stepper.moveTo(distance);
  
  pinMode(joyPinX,   INPUT);
  pinMode(joyPinY,   INPUT);
  pinMode(joyPinB,   INPUT_PULLUP);

  Serial.begin(9600);
}

void loop()
{
    
    valueX = analogRead(joyPinX);
    valueY = analogRead(joyPinY);
    valueB = digitalRead(joyPinB);
        
    if(valueY > 600){ // moved to the right
      stepper.runToNewPosition(stepper.currentPosition()+distance);
    }else if(valueY < 400){
      stepper.runToNewPosition(stepper.currentPosition()-distance);
    }
}
