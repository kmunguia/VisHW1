/**
  * This class represents a food in the graph
  */ 
  
class Food {
  int id;
  String name;
  String group;
  float protein, calcium, sodium, fiber, vitamin, potassium, carbohydrate, sugars, fat, water, calories, saturated, monounsat, polyunsat;

  Food(int id) {
    this.id = id;
  }
}