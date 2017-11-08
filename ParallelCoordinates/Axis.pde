/**
  * This class represents an axis in the graph
  */ 
  
class Axis {
  
  static final color axisColor = #A9A9A9;
  static final int axisTopY = 100;
  static final int axisBottomY = 350;
  int axisX;
  String nutrient;
  
  Axis(String nutrient, int axisX) {
    this.nutrient = nutrient;
    this.axisX = axisX;
  }
  
  void draw() {
    stroke(axisColor);
    strokeWeight(2);
    line(axisX, axisTopY,axisX, axisBottomY);
    fill(axisColor);
    text(nutrient, axisX-30, axisTopY-10);
  }
}