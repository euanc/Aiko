#include <AikoEvents.h>

using namespace Aiko;

void count() {
  static int i = 0;
  Serial.println(++i);
}

void hello() {
  Serial.println("Hello!");
}

void goodbye() {
  Serial.println("Goodbye!");
}

void setup() {
  Serial.begin(9600);
  Events.registerHandler(100, count);
  Events.registerHandler(200, hello);
  Events.registerHandler(300, goodbye);
}

void loop() {
  Events.loop(); 
}
