class Axis {
  final color strokeColor = #A9A9A9;
  float yCoordinateTop = 0.2*height;
  float yCoordinateBottom  = 0.8*height;
  String name;
  float xCoordinate;
  int id;
  Float maxValue; 
  boolean isOver= false;
  boolean locked = false;
  
  Axis(String name, float xCoordinate, int id, Float maxValue) {
    this.name = name;
    this.xCoordinate = xCoordinate;
    this.id = id;
    this.maxValue = maxValue;
  }

  void draw() {
    stroke(strokeColor);
    strokeWeight(2);
    line(xCoordinate, yCoordinateTop, xCoordinate, yCoordinateBottom);
    fill(strokeColor);
    text(name, xCoordinate-name.length()*2, id%2 == 0 ? yCoordinateTop-0.02*height : yCoordinateTop-0.05*height);
    text(maxValue, xCoordinate-name.length()*2, id%2 == 0 ? yCoordinateBottom+0.05*height : yCoordinateBottom+0.02*height);
    
    if((mouseX > (xCoordinate-name.length()*2)) && (mouseX < (xCoordinate+name.length()*2)) && 
    (mouseY > (id%2 == 0 ? yCoordinateTop-0.02*height : yCoordinateTop-0.05*height)) && 
    (mouseY < ((id%2 == 0 ? yCoordinateTop-0.02*height : yCoordinateTop-0.05*height)+15))) {
      isOver = true;
    } else {
      isOver = false;    
      }
    mousePressed();
    mouseDragged();
   }
   
   float mousePressed() {
   if (isOver){
     locked = true;
      System.out.println("working");
   } else {
      locked = false;
     }
   float difX = mouseX-xCoordinate-name.length()*2;
   return difX;
  }
  
   void mouseDragged() {
    if(locked) {
      xCoordinate = mouseX-mousePressed();
    }
   }
}