/**
  * This class represents an axis in the graph
  */ 

class Line {
  color lineColor;
  
  Line(Food food) {
   this.food = food; 
  }
  
  void draw() {
    fill(lineColor);
  }
  
}