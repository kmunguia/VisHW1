/**
  * This class represents a food (aka a line) in the graph
  */ 
  
class Item {
  String id;
  String name;
  String group;
  float protein, calcium, sodium, fiber, vitaminc, potassium, carbohydrate, sugars, fat, water, calories, saturated, monounsat, polyunsat;

  Food(String id, String name, String group, float protein, float calcium, float sodium, float fiber, float vitaminc, float potassium, float carbohydrate, float sugars, float fat, float water, float calories, float saturated, float monounsat, float polyunsat) {
    this.id = id;
    this.name = name;
    this.group = group;
    this.protein = protein;
    this.calcium = calcium;
    this.sodium = sodium;
    this.vitaminc = vitaminc;
    this.fiber = fiber;
    this.potassium = potassium;
    this.carbohydrate = carbohydrate;
    this.sugars = sugars;
    this.fat = fat;
    this.water = water;
    this.calories = calories;
    this.saturated = saturated;
    this.monounsat = monounsat;
    this.polyunsat = polyunsat;
  }
}