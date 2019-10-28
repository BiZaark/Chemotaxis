Bacteria [] Travis;
 void setup()   
 {     
 size(1000,1000);
 frameRate(500);
 Travis = new Bacteria[10];
 for(int i = 0; i < Travis.length; i++){
  Travis[i] = new Bacteria();
 }
 }   
 void draw()   
 {    
 	background(0,0,0);
  for(int i = 0; i < Travis.length; i++){
  Travis[i].show();
  Travis[i].walk();
 }
 }  
class Bacteria    
 {     
 	int myX, myY;
  Bacteria()
 
  {
 
  
    myX = (int)(Math.random()*850);
    myY = (int)(Math.random()*700);
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*3)-1;
    
    myY = myY + (int)(Math.random()*10)-2;
  //if(myX > 0){
    //myX = (int)(Math.random()*850);}
  
  if(myX > 1000){
    myX = (int)(Math.random()*1001);}
  
  //if(myY > 0){
    //myY = (int)(Math.random()*850);}
  
  if(myY > 1000){
    myY = (int)(Math.random()*1001);}
 }    
  void show(){
    //face
    stroke(0,0,0);
    fill(255,255,0);
    ellipse(myX,myY,200,200);
    //left eye
    stroke(255,255,255);
    fill(255,255,255);
    ellipse(myX-30,myY-30,50,50);
    //right eye
    stroke(255,255,255);
    fill(255,255,255);
    ellipse(myX+30,myY-30,50,50);
    //right pupil
    stroke(0,0,0);
    fill(0,0,0);
    ellipse(myX+30,myY-30,4,4);
    //left pupil
    stroke(0,0,0);
    fill(0,0,0);
    ellipse(myX-30,myY-30,4,4);
    //left eyebrow
    stroke(0,0,0);
    noFill();
    arc(myX-30,myY-30,60,60,PI+.8,4.5);
    //right eyebrow
    stroke(0,0,0);
    noFill();
    arc(myX+30,myY-30,60,60,5,5.5);
    //right eyeliner
    stroke(255,182,192);
    noFill();
    arc(myX+24,myY-30,50,50,.6,1.2);
    //left eyeliner
    stroke(255,182,192);
    noFill();
    arc(myX-24,myY-30,50,50,2,2.5);
    //mouth
    stroke(0);
    fill(255);
    beginShape();
    vertex(myX,myY+18);
    vertex(myX+40,myY+18);
    vertex(myX+70,myY-15);
    vertex(myX+69,myY-30);
    vertex(myX+80,myY-5);
   
    vertex(myX+50,myY+60);
    vertex(myX-50,myY+60);
    
    vertex(myX-80,myY-5);
    vertex(myX-69,myY-30);
    vertex(myX-70,myY-15);
    vertex(myX-40,myY+18);
    vertex(myX+18,myY+18);
    endShape();
    //right dimple
    stroke(0,0,0);
    noFill();
    arc(myX+69,myY-26,18,18,4,5.5);
    //left dimple
    stroke(0,0,0);
    noFill();
    arc(myX-69,myY-26,18,18,4,5.5);
    //teeth
    beginShape();
    vertex(myX,myY+18);
    vertex(myX,myY+60);
    endShape();
      beginShape();
    vertex(myX+20,myY+18);
    vertex(myX+20,myY+60);
    endShape();
      beginShape();
    vertex(myX+38,myY+18);
    vertex(myX+38,myY+60);
    endShape();
      beginShape();
    vertex(myX-20,myY+18);
    vertex(myX-20,myY+60);
    endShape();
      beginShape();
    vertex(myX-38,myY+18);
    vertex(myX-38,myY+60);
    endShape();
      beginShape();
    vertex(myX+50,myY+8);
    vertex(myX+55,myY+47);
    endShape();
     beginShape();
    vertex(myX-50,myY+8);
    vertex(myX-55,myY+47);
    endShape();
     beginShape();
    vertex(myX+64,myY-9);
    vertex(myX+73,myY+10);
    endShape();
         beginShape();
    vertex(myX-64,myY-9);
    vertex(myX-73,myY+10);
    endShape();
         beginShape();
    vertex(myX-77,myY-13);
    vertex(myX-38,myY+45);
    endShape();
     beginShape();
    vertex(myX+77,myY-13);
    vertex(myX+38,myY+45);
    endShape();
    beginShape();
     vertex(myX+38,myY+45);
    vertex(myX-38,myY+45);
    endShape();
    beginShape();
     vertex(myX,myY-5);
    vertex(myX+5,myY+5);
    endShape();  
    beginShape();
     vertex(myX+5,myY+5);
    vertex(myX-10,myY+5);
    endShape();  
}
  }
