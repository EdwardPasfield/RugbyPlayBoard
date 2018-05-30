float[] positionX = new float[16]; //Define xpos as a float
float[] positionY = new float[16]; //Define ypos as a float

float bx = width/2.0; // set bx as float and set it equal to width/2.0
float by = height/2.0;// set by as float and set it equal to height/2.0

// set inetgers
int i =-1;
int pSize = 40;
int Xbound = 635;
int Ybound = 918;
int second = second();
int minute = minute();
int hour = hour();
int f = 0;
//set boolean expressions
boolean overp = false;
boolean locked = false;

// set offsets as float
float xOffset = 0.0; 
float yOffset = 0.0; 


Player[] pArray = new Player[15];
PImage  p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p0; // set all imgs
// set images as an array

void setup() 
{
  size(675, 958); // set size of the application


  //initialize images
  // set the x and y values for each player token
  pArray[0] = new Player(50, 500, "1.png", -0.0, 0.0);
  pArray[1] = new Player(100, 500, "2.png", -0.0, 0.0);
  pArray[2] = new Player(150, 500, "3.png", -0.0, 0.0);
  pArray[3] = new Player(75, 545, "4.png", -0.0, 0.0);
  pArray[4] = new Player(125, 545, "5.png", -0.0, 0.0);
  pArray[5] = new Player(25, 575, "6.png", -0.0, 0.0);
  pArray[6] = new Player(170, 575, "7.png", -0.0, 0.0);
  pArray[7] = new Player(100, 600, "8.png", -0.0, 0.0);
  pArray[8] = new Player(200, 650, "9.png", -0.0, 0.0);
  pArray[9] = new Player(300, 705, "10.png", -0.0, 0.0);
  pArray[10] = new Player(50, 750, "11.png", -0.0, 0.0);
  pArray[11] = new Player(400, 765, "12.png", -0.0, 0.0);
  pArray[12] = new Player(500, 800, "13.png", -0.0, 0.0);
  pArray[13] = new Player(600, 850, "14.png", -0.0, 0.0);
  pArray[14] = new Player(300, 850, "15.png", -0.0, 0.0);

  p0 = loadImage("0.png"); // load the pitch

  p16 = loadImage("ball.png"); // load the ball
 
}

void draw() 
{ 
  
  background(p0);// draw the pitch as a background
  // Time and Date..... However Time is slightly broken.
  text(("Date - "+year()+"/" + month()+"/" + day()),550,15);
  text(second + millis() / 1000 % 60, 640, 30);
  text(minute + millis()/ (1000*60) % 60 + ":", 620, 30);
  text("Time - " + hour + millis() / (1000*60*60) % 24 + ":", 550, 30);
  
// Boundary Control
  for (int l = 0; l <= 14; l++) {
    if (pArray[l].positionX > Xbound){
        pArray[l].positionX = pArray[l].positionX - 50;
        
    }
      if(pArray[l].positionY > Ybound) {
        pArray[l].positionY = pArray[l].positionY - 50;
        setup();
      }
    if(pArray[l].positionX < 0){
      pArray[l].positionX = pArray[l].positionX + 50;
      
     }
     if(pArray[l].positionY < 0) {
        pArray[l].positionY = pArray[l].positionY + 50;
        setup();
      }
  }
  // User Instructions
  textSize(12);
  fill(0, 20, 0);
  text("Press: 1 for Kick Off! 2 for Lineout! 3 for Backs Line/Scrummage! Esc to close.", 10, 15);
  text("Press: Up, Down, Left and Right arrow keys OR Click and Drag for player control.",10,950);
  text("Press: Enter to save an image of the current formation",10,935);
  // Test if the cursor is over the box

  overp = false;
  //--------------------------------------------------------------------------------------------
  //PLayer control using arrow keys
 if(keyPressed == true){
  if (keyCode == UP) {

    pArray[0].update();
    pArray[1].update();
    pArray[2].update();
    pArray[3].update();
    pArray[4].update();
    pArray[5].update();
    pArray[6].update();
    pArray[7].update();
    pArray[8].update();
    pArray[9].update();
    pArray[10].update();
    pArray[11].update();
    pArray[12].update();
    pArray[13].update();
    pArray[14].update();
   }
   if (keyCode == DOWN) {

    pArray[0].updater();
    pArray[1].updater();
    pArray[2].updater();
    pArray[3].updater();
    pArray[4].updater();
    pArray[5].updater();
    pArray[6].updater();
    pArray[7].updater();
    pArray[8].updater();
    pArray[9].updater();
    pArray[10].updater();
    pArray[11].updater();
    pArray[12].updater();
    pArray[13].updater();
    pArray[14].updater();
   }
  if (keyCode == LEFT) {

    pArray[0].upd();
    pArray[1].upd();
    pArray[2].upd();
    pArray[3].upd();
    pArray[4].upd();
    pArray[5].upd();
    pArray[6].upd();
    pArray[7].upd();
    pArray[8].upd();
    pArray[9].upd();
    pArray[10].upd();
    pArray[11].upd();
    pArray[12].upd();
    pArray[13].upd();
    pArray[14].upd();
  }
  if (keyCode == RIGHT) {

    pArray[0].updat();
    pArray[1].updat();
    pArray[2].updat();
    pArray[3].updat();
    pArray[4].updat();
    pArray[5].updat();
    pArray[6].updat();
    pArray[7].updat();
    pArray[8].updat();
    pArray[9].updat();
    pArray[10].updat();
    pArray[11].updat();
    pArray[12].updat();
    pArray[13].updat();
    pArray[14].updat();
  }
 
 }
   
   // Draw the ball
  image(p16, mouseX, mouseY, pSize, pSize);
  
// Draws the Players and allows tinting when player picked up
  for(int k = 0; k <15; k++){
    if(i == k){
      tint(100,100,100);
    }
    else{
      noTint();
    }
    
     image(pArray[k].playerimage, pArray[k].positionX, pArray[k].positionY, pSize, pSize);
  }

  // displays all images that should be moved however only one appears
}
// when the mouse is pressed allow the selection of the player token
void mousePressed() {
  for (int idx = 0; idx <15; idx++) { // for loop which adds one to i each time the loop goes round

    if (mouseX > pArray[idx].positionX-(pSize/2)+10 && mouseX < pArray[idx].positionX+(pSize/2)+10 &&  
      mouseY > pArray[idx].positionY-(pSize/2)+15 && mouseY < (pArray[idx].positionY+pSize/2)+15) {
      //check to see if the mouse is over a player token
      overp = true; // set the boolean expression to true
       i=idx;
        println(i);
      if (overp) { 
        locked = true;     
       } 
         else {
          locked = false;
         }
      xOffset = mouseX-pArray[idx].positionX; 
      yOffset = mouseY-pArray[idx].positionY; 
      break;
    }
  }
}
// allow the players to be dragged once the mouse has been pressed
void mouseDragged() {

  if (locked) { 
    pArray[i].positionX = mouseX-xOffset; 
    pArray[i].positionY = mouseY-yOffset; 
   }
  
}

// when the mouse is released, drop the player token
void mouseReleased() {
  locked = false;
  i =-1;
  
}
void keyPressed() {
   if (keyCode == ENTER){    
     saveFrame("Formation"+f+".png");
     f = f+1;
   }
   
  //Set positions for set plays
  if (key == '1') {
    pArray[0]= new Player(340, 570, "1.png", -0.0, 0.0);
    pArray[1]= new Player(480, 570, "2.png", -0.0, 0.0);
    pArray[2]= new Player(600, 570, "3.png", -0.0, 0.0);
    pArray[3]= new Player(400, 610, "4.png", -0.0, 0.0);
    pArray[4]= new Player(540, 610, "5.png", -0.0, 0.0);
    pArray[5]= new Player(310, 675, "6.png", -0.0, 0.0);
    pArray[6]= new Player(600, 675, "7.png", -0.0, 0.0);
    pArray[7]= new Player(470, 675, "8.png", -0.0, 0.0);
    pArray[8]= new Player(400, 765, "9.png", -0.0, 0.0);
    pArray[9]= new Player(300, 785, "10.png", -0.0, 0.0);
    pArray[10]= new Player(80, 700, "11.png", -0.0, 0.0);
    pArray[11]= new Player(200, 600, "12.png", -0.0, 0.0);
    pArray[12]= new Player(150, 800, "13.png", -0.0, 0.0);
    pArray[13]= new Player(550, 800, "14.png", -0.0, 0.0);
    pArray[14]= new Player(300, 850, "15.png", -0.0, 0.0);
  }
  if (key == '2') {
    pArray[0]= new Player(45, 425, "1.png", -0.0, 0.0);
    pArray[1]= new Player(0, 400, "2.png", -0.0, 0.0);
    pArray[2]= new Player(135, 425, "3.png", -0.0, 0.0);
    pArray[3]= new Player(90, 425, "4.png", -0.0, 0.0);
    pArray[4]= new Player(180, 425, "5.png", -0.0, 0.0);
    pArray[5]= new Player(225, 425, "6.png", -0.0, 0.0);
    pArray[6]= new Player(315, 425, "7.png", -0.0, 0.0);
    pArray[7]= new Player(270, 425, "8.png", -0.0, 0.0);
    pArray[8]= new Player(200, 500, "9.png", -0.0, 0.0);
    pArray[9]=  new Player(300, 575, "10.png", -0.0, 0.0);
    pArray[10]= new Player(50, 625, "11.png", -0.0, 0.0);
    pArray[11]= new Player(400, 650, "12.png", -0.0, 0.0);
    pArray[12]= new Player(500, 725, "13.png", -0.0, 0.0);
    pArray[13]= new Player(600, 800, "14.png", -0.0, 0.0);
    pArray[14]= new Player(340, 850, "15.png", -0.0, 0.0);
  }
  if (key == '3') {
    pArray[0]= new Player(50, 500, "1.png", -0.0, 0.0);
    pArray[1]= new Player(100, 500, "2.png", -0.0, 0.0);
    pArray[2]= new Player(150, 500, "3.png", -0.0, 0.0);
    pArray[3]= new Player(75, 545, "4.png", -0.0, 0.0);
    pArray[4]= new Player(125, 545, "5.png", -0.0, 0.0);
    pArray[5]= new Player(25, 575, "6.png", -0.0, 0.0);
    pArray[6]= new Player(170, 575, "7.png", -0.0, 0.0);
    pArray[7]= new Player(100, 600, "8.png", -0.0, 0.0);
    pArray[8]= new Player(200, 650, "9.png", -0.0, 0.0);
    pArray[9]=  new Player(300, 705, "10.png", -0.0, 0.0);
    pArray[10]= new Player(50, 750, "11.png", -0.0, 0.0);
    pArray[11]= new Player(400, 765, "12.png", -0.0, 0.0);
    pArray[12]= new Player(500, 800, "13.png", -0.0, 0.0);
    pArray[13]= new Player(600, 850, "14.png", -0.0, 0.0);
    pArray[14]= new Player(300, 850, "15.png", -0.0, 0.0);
  }
 
}