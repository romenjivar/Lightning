int startX = (int)(Math.random()*600);
int startY = 95;
int endX = (int)(Math.random()*600);
int endY = 95;
boolean mPress = false;

void setup(){
size(600,600);
strokeWeight(3);
background(0);
}

void draw(){
 background(0);

   
 // if(mPress == true){
    createLightning();
 // }
 // else{
  // mPress = false;
  //}
  createClouds();
  axies();
  //createLightning();
  if(startX>=135 && startX<=260 && startY>500){
   createBrokenHouse();
  }
  else{
   createHouse(); 
  }
  noLoop();
  
}

void axies(){
  noStroke();
 line(mouseX, mouseY, mouseX, mouseY);
fill(255,255,255);
text(mouseX + ", "+mouseY,20,20); 
}
void mousePressed()
{
  //mPress = true;
  startX = (int)(Math.random()*600);
  startY = 95;
  endX = (int)(Math.random()*600);
  endY = 95;
  redraw();
}

void createLightning(){
  stroke(227,217,23);
  strokeWeight(10);
  while(endY<600){
    endY = startY + (int)(Math.random()*30);
    endX = startX + (int)(Math.random()*31)-15;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    fill(0,0,0,15);
    rect(-7,-7,615,615);
  }
    
    //if(startY>605){
     //mPress = false; 
     //mousePressed(); 
    //}
}

void createClouds(){
  noStroke();
  fill(125,125,125);
 ellipse(0,50,300,160); 
 ellipse(190,50,250,125);
 ellipse(350,50,225,150);
 ellipse(550,50,325,170);
}

void createHouse(){
  noStroke();
 fill(255,0,0);
 rect(135,500,125,100);
 fill(65,45,0);
 rect(145,550,30,50);
 fill(70,200,200);
 rect(200,520,50,50);
}

void createBrokenHouse(){
  noStroke();
  fill(65,45,0);
  rect(180,550,30,50);
  fill(255,0,0);
  triangle(75,600,100,560,130,600);
  triangle(110,600,140,570,170,600);
  triangle(130,600,170,550,200,600);
  triangle(190,600,220,560,250,600);
  triangle(230,600,260,550,300,600);
  
  
}
