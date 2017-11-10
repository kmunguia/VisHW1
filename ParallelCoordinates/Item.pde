/**
  * This class represents a food (aka a line) in the graph
  */ 
  
class Item {
  float randInt1 = random(0, 255);
  float randInt2 = random(0, 255);
  float randInt3 = random(0, 255);
  ArrayList<String> StringVars;
  ArrayList<Float> FloatVars;

  Item(ArrayList<String> StringVars, ArrayList<Float> FloatVars) {
    this.StringVars = StringVars;
    this.FloatVars = FloatVars;
  }
}