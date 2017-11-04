/**
 * This class parses the table
 */

class TableReader {
  
  void loadData() {
   Table table = loadTable("nutrients-cleaned", "header");
   
   for (int i = 0; i < table.getRowCount(); i++) {
     TableRow rwo = table.getRow(i);
     
     
     
   }
   
  }
   
 }