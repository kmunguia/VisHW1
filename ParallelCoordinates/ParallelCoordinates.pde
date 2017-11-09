ArrayList<Axis> axes;
int axisX = 50;

void setup() {
   size(1400, 850);
   pixelDensity(displayDensity());
   TableReader data = new TableReader();
   data.loadData();
   
   ArrayList<String> VariableList = data.VarList;
   
   axes = new ArrayList<Axis>();
   for (int i = 0; i < data.VarList.size(); i++) {
      Axis axis = new Axis(VariableList.get(i), axisX);
      axes.add(axis);
      axisX += 100;
   }                      
 }
 
 void scaleAxis() {
   for (dddddddssssssss)git p
   for (int i = 0; i < item.FloatVars.size();  {
   
   }
 }
 
 void draw() {
   background(255);
   for(Axis axis : axes){
     axis.draw();
   }
 }