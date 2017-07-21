import netP5.*;
import oscP5.*;
OscP5 oscP5;
float backgroundColor = 0;
void setup() {
  oscP5 = new OscP5(this, 12000);
}
void draw() {
  background(backgroundColor);
}
void oscEvent(OscMessage theOscMessage) {
  float receivedValue = theOscMessage.get(0).floatValue();
  backgroundColor = map(receivedValue, 0, 1, 0, 255);
}