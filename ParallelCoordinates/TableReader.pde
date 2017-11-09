/**
 * This class parses the table
 */

class TableReader {
  
  ArrayList<Item> loadData() {
   Table table = loadTable("nutrients-cleaned.tsv", "header");
   ArrayList<Item> FoodList = new ArrayList<Item>();
   ArrayList<String> VariableList = new ArrayList<String>();
   ArrayList<Float> VarFloatList = new ArrayList<Float>();
   TableRow row1 = table.getRow(1);
       for (int n = 0; n < row1.getColumnCount(); n++) {
         VariableList.add(row1.getString(n)); //adds variable names to the variableList arrayList
       }
   TableRow row2 = table.getRow(2);
     for (int n = 0; n < row2.getColumnCount(); n++) {
         
         
       }
       if (row2.getString(n) == "String") {
         
         VarStringList.add(table.getRow(1).getString(n));
       } else {
           VarFloatList.add(table.getRow(1).getFloat(n));          }
       }
   return foodList;
   
  }
}