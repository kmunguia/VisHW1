void setup() {
   size(1500, 100);
   pixelDensity(displayDensity());
   
   TableReader newTable = new TableReader();
   newTable.loadData();
 }
 

 
 void draw() {
   background(255);
 }