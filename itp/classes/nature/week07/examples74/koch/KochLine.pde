//a nice little class that holds the information for a line segment
//includes methods to calculate midpoints along the line according to the Koch algorithm

class KochLine {
  
  //two points,
  //a is the "left" point and 
  //b is the "right point
  Point a,b;
  
  KochLine(Point a_, Point b_) {
     a = a_.copy();
     b = b_.copy();
  }
  
  void render() {
    stroke(255);
    line(a.x,a.y,b.x,b.y);
  }
  
  Point start() {
    return a.copy();
  }
  
  Point end() {
    return b.copy();
  }
      
  //this is easy, just 1/3 of the way
  Point kochleft()
  {
    float x = a.x + (b.x - a.x) / 3f;
    float y = a.y + (b.y - a.y) / 3f;
    return new Point(x,y);
  }    
  
  //more complicated, have to use a little trig to figure out where this point is!
  Point kochmiddle()
  {
    float x = a.x + 0.5f * (b.x - a.x) + (sin(radians(60))*(b.y-a.y)) / 3;
    float y = a.y + 0.5f * (b.y - a.y) - (sin(radians(60))*(b.x-a.x)) / 3;
    return new Point(x,y);
  }    
  
  //easy, just 2/3 of the way
  Point kochright()
  {
    float x = a.x + 2*(b.x - a.x) / 3f;
    float y = a.y + 2*(b.y - a.y) / 3f;
    return new Point(x,y);
  }    
   

}
