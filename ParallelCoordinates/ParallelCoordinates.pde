ArrayList<Axis> axes;
ArrayList<Item> itemList;
TableReader data;
int x = 0;
int y = 0;
int newX = 0;
int newY = 0;
void setup() {
  size(1400, 800);
  pixelDensity(displayDensity());
  data = new TableReader();
  itemList = data.loadData("cars-cleaned.tsv");
  
   axes = new ArrayList<Axis>();
   
   for (int i = 1; i < data.varList.size(); i++) {
      float pos = ((float)(i-2)/((float)data.varList.size()-3f))*0.6*width + 0.2*width;
      Axis axis = new Axis(data.varList.get(i), pos, i, data.maxMap.get(data.varList.get(i)));
      axes.add(axis);
   }                
 }
 
 void draw() {
   background(255);
   //for(Axis axis : axes){
     for(int i = 0; i < axes.size(); i++) {
     axes.get(i).draw();
     
     if(axes.get(i).xCoordinate == ((float)(i)/((float)data.varList.size()-3f))*0.6*width + 0.2*width) {
       axes.get(i+1).xCoordinate = ((float)(i-1)/((float)data.varList.size()-3f))*0.6*width + 0.2*width;
     }
   }
   
   Filter filter = new Filter();
   filter.draw();
   
   for(Item item : itemList) {
     for(int i = 1; i < axes.size(); i++) {
        Axis axis1 = axes.get(i-1);
        Axis axis2 = axes.get(i);
        float xLeft = axis1.xCoordinate;
        float xRight = axis2.xCoordinate;
        float yLeft = map(item.FloatVars.get(i-1), 0f, axis1.maxValue, 0f, 0.6*height); // cars
        float yRight = map(item.FloatVars.get(i), 0f, axis2.maxValue, 0f, 0.6*height);
        stroke(item.randInt1, item.randInt2, item.randInt3);
        strokeWeight(0.4);
        line(xLeft, 0.8*height - yLeft,xRight,0.8*height - yRight);
     }
   }
 }
   void mousePressed() {
      x = mouseX;
      y = mouseY;
  }


  void mouseDragged() {
    newX = mouseX-x;
    newY = mouseY-y;
  
    noFill();
    stroke(255,0,0);
    strokeWeight(2);
    rect(x, y, newX, newY);
    }
   