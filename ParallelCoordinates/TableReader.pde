/**
 * This class parses the table
 */

class TableReader {
  
  ArrayList<Item> loadData() {
   Table table = loadTable("nutrients-cleaned.tsv");
   ArrayList<Item> itemList = new ArrayList<Item>();
   ArrayList<String> VariableList = new ArrayList<String>();
   ArrayList<String> StringVars = new ArrayList<String>();
   ArrayList<Float> FloatVars = new ArrayList<Float>();
   TableRow row0 = table.getRow(0);
       for (int n = 0; n < row0.getColumnCount(); n++) {
         VariableList.add(row0.getString(n)); //adds variable names to the variableList arrayList
       }
   TableRow row1 = table.getRow(1);
     for (int n = 2; n < table.getRowCount(); n++) {
       for (int m = 0; m < VariableList.size(); m++)
       if (row1.getString(m) == "String") {
         StringVars.add(table.getRow(n).getString(m));
         
       } else {
          table.getRow(n).getFloat(m);
          FloatVars.add(table.getRow(n).getFloat(m));
         }
      Item item = new Item(StringVars, FloatVars);
      itemList.add(item);
     }
   return itemList;
   
  }
}