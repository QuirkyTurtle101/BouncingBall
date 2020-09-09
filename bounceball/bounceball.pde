int sizeX = 1920;
int sizeY = 1080;

float rectSizeX = 800;
float rectSizeY = 800;
int ballSize = 10;
float ballX;
float ballY;
int speedBase = 3;
int xSpeed = speedBase;
int ySpeed = speedBase;

void settings(){
  fullScreen();
  size(sizeX, sizeY);
  
  //ballX = sizeX/2+random(-150, 150);
  //ballY = sizeY/2+random(-150, 150);
  
  ballX = sizeX/2+250;
  ballY = sizeY/2-100;
}

void draw(){
  //we see if we're done, and exit if we do
  if(rectSizeX < 0 || rectSizeY < 0){
    print("That's All Folks!");
    exit();
  }
  
  clear();
  
  rectMode(CENTER);
  ellipseMode(RADIUS);
  rect(sizeX/2, sizeY/2, rectSizeX, rectSizeY);
  circle(ballX, ballY, ballSize);
  
  if(ballX >= (sizeX/2)+(rectSizeX/2)-ballSize ||ballX <= (sizeX/2)-(rectSizeX/2)+ballSize){
    xSpeed *= -1;
    ballX += xSpeed*(0.1/speedBase);
    
    //this code makes the rect decrease in size on ball hits - uncomment this and comment the main rect size reduction code for that
    //rectSizeX -= 1;
    //rectSizeY -=1;
  }
  
  if(ballY >= (sizeY/2)+(rectSizeY/2)-ballSize || ballY <= (sizeY/2)-(rectSizeY/2)+ballSize){
    ySpeed *= -1;
    ballY += ySpeed*(0.1/speedBase);
    
    //this code makes the rect decrease in size on ball hits - uncomment this and comment the main rect size reduction code for that
    //rectSizeY -= 1;
    //rectSizeX -=1;
  }
  
  rectSizeX -= 0.1;
  rectSizeY -= 0.1;
  
  ballX += xSpeed;
  ballY += ySpeed;
}
