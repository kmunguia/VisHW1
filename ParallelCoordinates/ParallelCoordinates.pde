ArrayList<Axis> axes;
int axisX = 50;

void setup() {
   size(1400, 850);
   pixelDensity(displayDensity());
   TableReader newTable = new TableReader();
   newTable.loadData();
   String[] nutrientArray = {"protein", "calcium", "sodium", "fiber", "vitaminc", "potassium", "carbohydrate", 
                            "sugars", "fat", "water", "calories", "saturated", "monounsat", "polyunsat"};
   axes = new ArrayList<Axis>();
   for (int i = 0; i < nutrientArray.length; i++) {
      Axis axis = new Axis(nutrientArray[i], axisX);
      axes.add(axis);
      axisX += 100;
   }                      
 }
 
 void scaleAxis() {
   for ()
 }
 
 void draw() {
   background(255);
   for(Axis axis : axes){
     axis.draw();
   }
 }