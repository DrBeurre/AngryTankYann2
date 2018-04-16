class J1Boulet{
  PVector locationProjectile,vitesseProjectile ; 
  
    public J1Boulet( float xTank1 , float yTank1 , int vitesseProjectiles , float angleT1  ){
      locationProjectile = new PVector(xTank1, yTank1);
      vitesseProjectile = new PVector((vitesseProjectiles*cos((angleT1)* 0.0174533)),(vitesseProjectiles*sin((angleT1)* 0.0174533)));
      
    }
    
    public void update(){
        // vitesseProjectile.add(accelerationProjectile);
         locationProjectile.add(vitesseProjectile);
         
        fill(#862F2F);
        
        ellipse(locationProjectile.x,locationProjectile.y,tailleProjectiles,tailleProjectiles);
        fill(255);
      
    }
}

/*  boolean edge(){
    if(locationProjectile.y > hauteurSol-tailleProjectile) {      
      vitesseProjectile.y = 0;
      vitesseProjectile.x = 0;
      accelerationProjectile.y = 0;
      accelerationProjectile.x = 0;
      
      return true;
    }
    return false;
  }

*/