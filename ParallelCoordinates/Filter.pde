class Filter{
  int x = 0;
  int y = 0;
  int newX = 0;
  int newY = 0;
  
  Filter(){
    //this.x =x;
    //this.y=y;
    //this.newX= newX;
    //this.newY = newY;
  }
  void draw(){
     noFill();
     stroke(255,0,0);
     strokeWeight(2);
     //rect(x,y,newX,newY);
    mousePressed();
     //if(mousePressed){
     // System.out.println("mouse is pressed");
     // x=mouseX;
     // y=mouseY;
     mouseDragged();
    //}
  }
  void mousePressed() {
    x = mouseX;
    y = mouseY;
  }


  void mouseDragged() {
    newX = mouseX-x;
    newY = mouseY-y;
    rect(x, y, newX, newY);
    }
  
}