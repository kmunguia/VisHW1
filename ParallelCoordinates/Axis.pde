class Axis {
  final color strokeColor = #A9A9A9;
  float yCoordinateTop = 0.2*height;
  float yCoordinateBottom  = 0.8*height;
  String name;
  float xCoordinate;
  int id;
  Float maxValue; 
  boolean mouseOnAixs;
  
  
  Axis(String name, float xCoordinate, int id, Float maxValue) {
    this.name = name;
    this.xCoordinate = xCoordinate;
    this.id = id;
    this.maxValue = maxValue;
  }
  
  //boolean mouseOnAixs() {
  //  if (mousePressed == true
  //  //&& (mouseX < xCoordinate + 20) && (mouseX > xCoordinate -20)
  //  //&& (mouseY < yCoordinateBottom) && (mouseY > yCoordinateTop)
  //  ) {
  //  mouseOnAixs = true;
  //  }
    
    //return mouseOnAixs;
  //}
  void draw() {
    stroke(strokeColor);
    strokeWeight(2);
    line(xCoordinate, yCoordinateTop, xCoordinate, yCoordinateBottom);
    fill(strokeColor);
    text(name, xCoordinate-name.length()*2, id%2 == 0 ? yCoordinateTop-0.02*height : yCoordinateTop-0.05*height);
    text(maxValue, xCoordinate-name.length()*2, id%2 == 0 ? yCoordinateBottom+0.05*height : yCoordinateBottom+0.02*height);
      
   }
   
   void mouseDragged() {
     
     if ((mouseX > xCoordinate-20) &&
    (mouseX < xCoordinate+20) && (mouseY < yCoordinateBottom) && (mouseY > yCoordinateTop)) {
     //move the axis to 
    
      
    println("yay!");
    } 
   }
  //void update() {
  // while ((mousePressed == true) && (mouseX > xCoordinate-20) &&
  //  (mouseX < xCoordinate+20) && (mouseY < yCoordinateBottom) && (mouseY > yCoordinateTop)) {
  //   //move the axis to 
    
      
  //  println("yay!");
  //  } 
}
  