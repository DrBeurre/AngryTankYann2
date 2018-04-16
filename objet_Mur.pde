class Mur{
float XMur;
float YMur;
float LongueurMur;
float HauteurMur;
  
  //constructeur
 Mur(float pXMur, float pYMur, float pLongueurMur, float pHauteurMur){
 XMur = pXMur;
 YMur = pYMur;
 LongueurMur = pLongueurMur;
 HauteurMur = pHauteurMur;
 }
 boolean checkCollision(int xTank, int yTank, int tailleX, int tailleY){
   
   return true;
 }

void afficher(){
  rect(XMur,  YMur, LongueurMur, HauteurMur);
}
  
   
 }
 //création   dans le setup