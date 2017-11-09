/**
 * This class parses the table
 */

class TableReader {
  Table table;
  ArrayList<String> varList;
  HashMap<String,Float> maxMap;
  
  ArrayList<Item> loadData(String filepath) {
    ArrayList<Item> itemList = new ArrayList<Item>();
    maxMap = new HashMap<String,Float>();
    
    table = loadTable(filepath);
    varList = new ArrayList<String>();
    
    TableRow row0 = table.getRow(0);
    TableRow row1 = table.getRow(1);
    for (int n = 0; n < row0.getColumnCount(); n++) {
       varList.add(row0.getString(n)); //adds variable names to the variableList arrayList
       System.out.println("Column" + (n + 1) + ": " + row0.getString(n) + " - "  + row1.getString(n));
       maxMap.put(row0.getString(n),0f);
    }
    for (int n = 2; n < table.getRowCount(); n++) {
       ArrayList<String> stringVars = new ArrayList<String>();
       ArrayList<Float> floatVars = new ArrayList<Float>();
       for (int m = 0; m < varList.size(); m++) {
         if (row1.getString(m).trim().equals("String")) {
           stringVars.add(table.getRow(n).getString(m)); 
           //System.out.print(table.getRow(n).getString(m) + " ");
         } else {
            Float candidate = table.getRow(n).getFloat(m);
            Float curr = maxMap.get(row0.getString(m));
            maxMap.put(row0.getString(m), candidate > curr ? candidate : curr);
            floatVars.add(table.getRow(n).getFloat(m));
         }
       }
       Item item = new Item(stringVars, floatVars);
       itemList.add(item);
       System.out.println();
     }
     return itemList;
  }
  
}