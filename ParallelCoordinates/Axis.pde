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
    text(name, xCoordinate-name.length()*2, id%2 == 0 ? yCoordinateTop-0.05*height : yCoordinateTop-0.07*height);
    text(maxValue, xCoordinate-name.length()*2, id%2 == 0 ? yCoordinateTop-0.02*height : yCoordinateTop-0.04*height);
    
    if((mouseX > (xCoordinate-20)) && (mouseX < (xCoordinate+20)) && 
    (mouseY > (yCoordinateTop - 40)) && (mouseY < yCoordinateTop)) {
      isOver = true;
      mousePressed();
      mouseDragged();
    } else {
      isOver = false;    
      }
   }
   
  void mousePressed() {
   if (isOver && mousePressed){
     locked = true;
      System.out.println("working");
   } else {
      locked = false;
   }
  }
  
   void mouseDragged() {
    if(locked) {
      xCoordinate = mouseX;
    }
   }
}