        void setup()
  {
      noLoop();
      size(500,500);
  }
  void draw()
  {
    background(255,0,0);
    int sum = 0;
    for(int x = 0; x < 460; x += 50 ){
    for(int y = 0; y < 450; y += 50){
     int num = ((int)(Math.random()*6))+1;
     sum = sum + num;
    Die wilburLiu = new Die(x,y,num);
    wilburLiu.show();
  }
}
    textSize(24);
    text("sum : " + sum, 250 ,475);
}
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int inX, inY, inNum;
      
      Die(int x, int y, int num) //constructor
      {
          inX = x;
          inY = y;
          inNum = num;
      }
      void roll()
      {
          //your code here
      }
      void show()
      {
        int diceSize = 50;
        fill(255);
        rect(inX, inY, 50, 50, 10);
     if(inNum%2==1){
      fill(0);
      ellipse((float)(inX + diceSize/2), (float)(inY + diceSize/2), (float)(diceSize/6), (float)(diceSize/6));
      noFill();
    }
    if(inNum>=2){
      fill(0);
      ellipse((float)(inX + diceSize - diceSize/6), (float)(inY + diceSize - diceSize/6), (float)(diceSize/6), (float)(diceSize/6));
      ellipse((float)(inX + diceSize/6), (float)(inY + diceSize/6), (float)(diceSize/6), (float)(diceSize/6));
      noFill();
    }
    if(inNum>=4){
      fill(0);
      ellipse((float)(inX + diceSize - diceSize/6), (float)(inY + diceSize/6), (float)(diceSize/6), (float)(diceSize/6));
      ellipse((float)(inX + diceSize/6), (float)(inY + diceSize - diceSize/6), (float)(diceSize/6), (float)(diceSize/6));
      noFill();
    }
    if(inNum==6){
      fill(0);
      ellipse((float)(inX + diceSize - diceSize/6), (float)(inY + diceSize/2), (float)(diceSize/6), (float)(diceSize/6));
      ellipse((float)(inX + diceSize/6), (float)(inY + diceSize/2), (float)(diceSize/6), (float)(diceSize/6));
      noFill();
    }
      }
  }
