//regler le probleme des touches pour monter et descendre le canon, clavier accepte pas le pad numerique
Mur mur1, mur2, mur3, mur4, mur5, mur6, mur7, mur8;
Tank tank1,tank2;

PImage solobutton,multibutton,creditsbutton,setupbutton,title,fond;

int vitesse=3;
int mode;
float angleT1 = 0;
float angleT2 = 0;

int speedTank = 2;
int tailleProjectiles = 20;
int vitesseProjectiles = 2;
int ecartTirs = 15;

int tailleTankX = 73;
int tailleTankY = 45;

boolean collision=false;
boolean tankPeutBouger;


//xtank et xtankIntermediaires doivent être identiques
float xTank1 = 500;
float yTank1 = 400;
float xTankIntermediaire1 = 500;
float yTankIntermediaire1 = 400;

float xTank2 = 1000;
float yTank2 = 500;



int largeurEcran=1500;
int hauteurEcran=900;

ArrayList<J1Boulet> J1bouletL = new ArrayList();


boolean Bup = false;
boolean Bdown = false;
boolean Bright = false;
boolean Bleft = false;

boolean touche_z = false;
boolean touche_q = false;
boolean touche_s = false;
boolean touche_d = false;
boolean touche_o = false;
boolean touche_k = false;
boolean touche_l = false;
boolean touche_m = false;

boolean touche_fois = false;
boolean touche_plus = false;
boolean touche_moins = false;

boolean touche_0 = false;
boolean touche_1 = false;
boolean touche_2 = false;
boolean touche_3 = false;
boolean touche_4 = false;
boolean touche_5 = false;
boolean touche_6 = false;
boolean touche_7 = false;
boolean touche_8 = false;
boolean touche_9 = false;


 //hitboxRectangles(x1, y1, x1+w1, y1+h1);
 
float[]tabTank1={xTank1, yTank1, xTank1 + tailleTankX , yTank1 + tailleTankY};      //tank1  

float[]tabTankIntermediaire1={xTankIntermediaire1, yTankIntermediaire1, xTankIntermediaire1 + tailleTankX , yTankIntermediaire1 + tailleTankY};      //tank1  

float[]tabTank2={xTank2, yTank2, xTank2 + tailleTankX , yTank2 + tailleTankY};      //tank2

  
float[]tabMur1={(largeurEcran/9), hauteurEcran/9.6, ((largeurEcran/9)+(largeurEcran/5.6)), (hauteurEcran/9.6)+(hauteurEcran/16)};      //mur1

float[]tabMur2={largeurEcran/9, hauteurEcran/2.2, (largeurEcran/9)+(largeurEcran/5.6), (hauteurEcran/2.2)+(hauteurEcran/16)};          //mur2

float[]tabMur3={largeurEcran/9, hauteurEcran/1.2, (largeurEcran/9)+(largeurEcran/5.6), (hauteurEcran/1.2)+(hauteurEcran/16)};          //mur3

float[]tabMur4={largeurEcran/1.4, hauteurEcran/9.6, (largeurEcran/1.4)+(largeurEcran/5.6), (hauteurEcran/9.6)+(hauteurEcran/16)};      //mur4

float[]tabMur5={largeurEcran/1.4, hauteurEcran/2.2, (largeurEcran/1.4)+(largeurEcran/5.6), (hauteurEcran/2.2)+(hauteurEcran/16)};      //mur5

float[]tabMur6={largeurEcran/1.4, hauteurEcran/1.2, (largeurEcran/1.4)+(largeurEcran/5.6), (hauteurEcran/1.2)+(hauteurEcran/16)};      //mur6

float[]tabMur7={largeurEcran/2.8, hauteurEcran/3.4, (largeurEcran/2.8)+(largeurEcran/3.4), (hauteurEcran/3.4)+(hauteurEcran/16)};      //mur7 

float[]tabMur8={largeurEcran/2.8, hauteurEcran/1.55, (largeurEcran/2.8)+(largeurEcran/3.4), (hauteurEcran/1.55)+(hauteurEcran/16)};    //mur8 



void keyPressed() {
   switch(keyCode){
     case UP : Bup = true; break;
     case DOWN : Bdown = true; break;
     case RIGHT : Bright = true; break;
     case LEFT : Bleft = true; break;
     case 90 : touche_z = true; break;
     case 83 : touche_q = true; break;
     case 81 : touche_s = true; break;
     case 68 : touche_d = true; break;
     case 79 : touche_o = true; break;
     case 75 : touche_k = true; break;
     case 76 : touche_l = true; break;
     case 77 : touche_m = true; break;
     
     case 42 : touche_fois = true; break;
     case 43 : touche_plus = true; break;
     case 45 : touche_moins = true; break;
     
     case 48 : touche_0 = true; break;
     case 49 : touche_1 = true; break;
     case 50 : touche_2 = true; break;
     case 51 : touche_3 = true; break;
     case 52 : touche_4 = true; break;
     case 53 : touche_5 = true; break;
     case 54 : touche_6 = true; break;
     case 55 : touche_7 = true; break;
     case 56 : touche_8 = true; break;
     case 57 : touche_9 = true; break;
     
     
   }
}

void keyReleased(){
  switch(keyCode){
     case UP : Bup = false; break;
     case DOWN : Bdown = false; break;
     case RIGHT : Bright = false; break;
     case LEFT : Bleft = false; break;
     case 90 : touche_z = false; break;
     case 83 : touche_q = false; break;
     case 81 : touche_s = false; break;
     case 68 : touche_d = false; break;
     case 79 : touche_o = false; break;
     case 75 : touche_k = false; break;
     case 76 : touche_l = false; break;
     case 77 : touche_m = false; break;
     
     case 42 : touche_fois = false; break;
     case 43 : touche_plus = false; break;
     case 45 : touche_moins = false; break;
     
     case 48 : touche_0 = false; break;
     case 49 : touche_1 = false; break;
     case 50 : touche_2 = false; break;
     case 51 : touche_3 = false; break;
     case 52 : touche_4 = false; break;
     case 53 : touche_5 = false; break;
     case 54 : touche_6 = false; break;
     case 55 : touche_7 = false; break;
     case 56 : touche_8 = false; break;
     case 57 : touche_9 = false; break;
  }
}