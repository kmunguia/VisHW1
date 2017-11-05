/**
 * This class parses the table
 */

class TableReader {
  
  ArrayList<Food> loadData() {
   Table table = loadTable("nutrients-cleaned.tsv", "header");
   ArrayList<Food> foodList = new ArrayList<Food>();
   
   
   for (int i = 0; i < table.getRowCount(); i++) {
     TableRow row = table.getRow(i);
     
     String id = row.getString("id");
     String name = row.getString("name");
     String group = row.getString("group");
     float protein = row.getFloat("protein (g)");
     float calcium = row.getFloat("calcium (g)");
     float sodium = row.getFloat("sodium (g)");
     float fiber = row.getFloat("fiber (g)");
     float vitaminc = row.getFloat("vitaminc (g)");
     float potassium = row.getFloat("potassium (g)");
     float carbohydrate = row.getFloat("carbohydrate (g)");
     float sugars = row.getFloat("sugars (g)");
     float fat = row.getFloat("fat (g)");
     float water = row.getFloat("water (g)");
     float calories = row.getFloat("calories");
     float saturated = row.getFloat("saturated (g)");
     float monounsat = row.getFloat("monounsat (g)");
     float polyunsat = row.getFloat("polyunsat (g)");

     Food food = new Food(id, name, group, protein, calcium, sodium, fiber, vitaminc, potassium, carbohydrate, sugars, fat, water, calories, saturated, monounsat, polyunsat);
     foodList.add(food);
   }
   return foodList;
   
  }
   
 }