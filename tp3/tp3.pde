//Cáncer Nahuel
//tp3 - comision 1
//https://youtu.be/P1tlsRYe-LY

//variables
int gridSize = 25;               
int initialGridSize = 25;        
float maxDistance = 75;          
PImage referenceImage;           

//funciones del void setup
void setup() {
  size(800, 400);                
  noStroke();                    
  
  referenceImage = loadImage("op art image.jpg");
  referenceImage.resize(width / 2, height);  
}

//funciones del void draw
void draw() {
  background(200);               
  image(referenceImage, 0, 0);
  
    float diagonalLinePosition = mouseX - mouseY;

    for (int x = width / 2; x < width; x += gridSize) {
    for (int y = 0; y < height; y += gridSize) {
      float circleSize = calculateSize(x, y, diagonalLinePosition);    
      float innerSize = calculateInnerSize(x, y, circleSize, diagonalLinePosition); 
      drawCircle(x, y, circleSize, innerSize);    
    }
  }
}

void drawCircle(int x, int y, float size, float innerSize) {
  fill(0);                        
  ellipse(x + gridSize / 2, y + gridSize / 2, size + 10, size + 10);  
  
  fill(255);                      
  ellipse(x + gridSize / 2, y + gridSize / 2, innerSize, innerSize);  
}

float calculateSize(int x, int y, float linePosition) {
  float distance = abs((x - width / 2) - y + linePosition);

  
  if (distance < maxDistance) {
    return gridSize * 1.4; 
  } else {
    return gridSize / 1.3; 
  }
}

float calculateInnerSize(int x, int y, float size, float linePosition) {
  float distance = abs((x - width / 2) - y + linePosition);

  if (distance < maxDistance) {
    return size * 0.2; 
  } else {
    return size * 0.9; 
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    gridSize = initialGridSize;   
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    gridSize += 10;               
  } else if (mouseButton == RIGHT) {
    gridSize = max(10, gridSize - 10); 
  }
}
