import netP5.*;
import oscP5.*;
OscP5 oscP5;
NetAddress destination;
void setup() {
  oscP5 = new OscP5(this, 9000);
  destination = new NetAddress("127.0.0.1", 6448);
}
void draw() {
  background(255);
  OscMessage aMessage = new OscMessage("/wek/inputs");
  stroke(0);
  line(mouseX, 0, mouseX, height);
  aMessage.add((float)mouseX);
  oscP5.send(aMessage, destination);
}