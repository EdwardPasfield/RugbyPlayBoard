class Player{
 float positionX, positionY;
 float velY;
 float velX;
 PImage playerimage;

 
  //Player constructor sets variables for position velocity and imagenames
 Player(float posX, float posY, String imagename, float veellY, float veellX){
   positionX = posX;
   positionY = posY;
   velY = veellY;
   velX = veellX;
   playerimage = loadImage(imagename);
   
 }
 
 // set update constructor as to allow movement
 void update(){
   positionY = positionY - velY - 1.4;
   positionX = positionX - velX;
 }
 //set update constructor to allow negative movements
 void updater(){
   positionY = positionY - velY + 1.4;
   positionX = positionX - velX ;
 }
 void upd(){
   positionY = positionY - velY;
   positionX = positionX - velX - 1.4;
 }
 void updat(){
  positionY = positionY - velY;
   positionX = positionX - velX + 1.4;
 }
}