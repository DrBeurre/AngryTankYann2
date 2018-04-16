class Tank{
 int vitesse;
 float angleTank;
 float xTank;
 float yTank;
  
  
  //constructeur
 public Tank(int pVitesse, int pAngleTank, int pxTank, int pyTank){
   vitesse = pVitesse;
   angleTank = pAngleTank;
   xTank = pxTank;
   yTank = pyTank;
   
   
 }

 
float positionTankX(){
 return xTank; 
}

float positionTankY(){
 return yTank; 
}
 
 
  
  
  
}