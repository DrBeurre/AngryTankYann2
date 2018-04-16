boolean hitboxRectangles(float xHautGaucheTank, float yHautGaucheTank, float xHautDroiteTank, float yBasGaucheTank, float xHautGaucheMur, float yHautGaucheMur, float xHautDroiteMur, float yBasGaucheMur) {
  
  float hautA = min(yHautGaucheTank, yBasGaucheTank);
  float basA = max(yHautGaucheTank, yBasGaucheTank);
  float gaucheA = min(xHautGaucheTank, xHautDroiteTank);
  float droiteA = max(xHautGaucheTank, xHautDroiteTank);
  float hautB = min(yHautGaucheMur, yBasGaucheMur);
  float basB = max(yHautGaucheMur, yBasGaucheMur);
  float gaucheB = min(xHautGaucheMur, xHautDroiteMur);
  float droiteB = max(xHautGaucheMur, xHautDroiteMur);
 
  return !(basA <= hautB  || basB <= hautA || droiteA <= gaucheB || droiteB <= gaucheA);
}

 void collisionDecors1(){
   
     collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur1[0], tabMur1[1], tabMur1[2], tabMur1[3]);
     
     if(collision == false)
       collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur2[0], tabMur2[1], tabMur2[2], tabMur2[3]);
     
     if(collision == false)
       collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur3[0], tabMur3[1], tabMur3[2], tabMur3[3]);
     
     if(collision == false)
       collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur4[0], tabMur4[1], tabMur4[2], tabMur4[3]);
     
     if(collision == false)
       collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur5[0], tabMur5[1], tabMur5[2], tabMur5[3]);
     
     if(collision == false)
       collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur6[0], tabMur6[1], tabMur6[2], tabMur6[3]);
     
     if(collision == false)
       collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur7[0], tabMur7[1], tabMur7[2], tabMur7[3]);
     
     if(collision == false)
       collision = hitboxRectangles(tabTankIntermediaire1[0], tabTankIntermediaire1[1], tabTankIntermediaire1[2], tabTankIntermediaire1[3], tabMur8[0], tabMur8[1], tabMur8[2], tabMur8[3]);
     
     if(collision == false){
       tankPeutBouger=true;
     }
     else {
       tankPeutBouger=false;
       //Ce sont ces 4 putains de lignes qui posent probleme
       tabTankIntermediaire1[0]=tabTank1[0];
       tabTankIntermediaire1[1]=tabTank1[1];
       tabTankIntermediaire1[2]=tabTank1[2];
       tabTankIntermediaire1[3]=tabTank1[3];
     }
 }