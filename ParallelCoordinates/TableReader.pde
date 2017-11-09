/**
 * This class parses the table
 */

class TableReader {
  Table table;
  ArrayList<String> VarList;
  
  ArrayList<Item> loadData() {
  table = loadTable("cars-cleaned.tsv");
  ArrayList<Item> itemList = new ArrayList<Item>();
  VarList = new ArrayList<String>();
  ArrayList<String> StringVars = new ArrayList<String>();
  ArrayList<Float> FloatVars = new ArrayList<Float>();
  
  TableRow row0 = table.getRow(0);
       for (int n = 0; n < row0.getColumnCount(); n++) {
         VarList.add(row0.getString(n)); //adds variable names to the variableList arrayList
       }
   TableRow row1 = table.getRow(1);
     for (int n = 2; n < table.getRowCount(); n++) {
       for (int m = 0; m < VarList.size(); m++)
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