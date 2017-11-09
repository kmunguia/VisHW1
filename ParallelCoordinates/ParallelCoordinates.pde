ArrayList<Axis> axes;
ArrayList<Item> itemList;
TableReader data;

void setup() {
  size(1400, 800);
  pixelDensity(displayDensity());
  data = new TableReader();
  itemList = data.loadData("cars-cleaned.tsv");
  
   axes = new ArrayList<Axis>();
   
   for (int i = 2; i < data.varList.size(); i++) {
      float pos = ((float)(i-2)/((float)data.varList.size()-3f))*0.8*width + 0.1*width;
      Axis axis = new Axis(data.varList.get(i), pos, i, data.maxMap.get(data.varList.get(i)));
      axes.add(axis);
   }                
 }
 
 void draw() {
   background(255);
   for(Axis axis : axes){
     axis.draw();
   }
   for(Item item : itemList) {
     for(int i = 1; i < axes.size(); i++) {
        Axis axis1 = axes.get(i-1);
        Axis axis2 = axes.get(i);
        float xLeft = axis1.xCoordinate;
        float xRight = axis2.xCoordinate;
        float yLeft = map(item.FloatVars.get(i), 0f, axis1.maxValue, 0f, 0.6*height);
        float yRight = map(item.FloatVars.get(i+1), 0f, axis2.maxValue, 0f, 0.6*height);
        line(xLeft, 0.8*height - yLeft,xRight,0.8*height - yRight);
     }
   }
 }