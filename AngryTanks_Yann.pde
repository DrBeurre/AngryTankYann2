
//----------------------------------------------Affichage differents ecrans de transition--------------------------------

/*Mode =0    Avec : Mode 1 Solo    
                    Mode 2 Multi
                    Mode 3 Credits
                    Mode 4 Reglages (Son + image+ fps)
                    Quitter le jeu
                    
  Si cliqué sur multi: Mode 21 Choix des persos
                       Mode 22 FIGHT        + Mode 221 Ecran pause
                       Mode 23 Reglages 
                       
  A la fin du fight(Mode 222): Mode 22 Rejouer
                              Mode 21 Choix des persos
                              Mode 0  Revenir a l'ecran d'acceuil
 */                     
 
 
void ecranAcceuil(){             //Mode 0

  image(fond,width/2,height/2,1500,900);
  afficherbouton();
  image(title,750,130,400,300);
}

void ecranCredits(){             //Mode 3
   
}

void ecranReglages(){            //Mode 4
   
}

void ecranChoixMulti(){          //Mode 2
  
}

void ecranChoixPersosMulti(){    //Mode 21
  
}

void modeCombatMulti(){          //Mode 22
  background(255);
  
  bougerTankIntermediaire();
  collisionDecors1();   //a finir
  bougerTank();
  bougerCanon();
  ajoutProjectiles();
  collisionBordEcran();
 // collisionProjectilesDecors();
  affichage();
}

void ecranReglagesMulti(){       //Mode 23
  
}

void ecranPauseMulti(){      //Mode 222
  
}

void ecranFinCombatMulti(){      //Mode 222
  
}




//-------------------------------------------------------Differentes fonctions--------------------------------------------




 void bougerTankIntermediaire(){
   //----------------------------Rectangle intermediaire pour detecter la colision-------------------------
   if(tankPeutBouger==true){
    if(touche_z){
      yTankIntermediaire1 = yTankIntermediaire1 - vitesse;
    }
    if(touche_q){
      yTankIntermediaire1 = yTankIntermediaire1 + vitesse;
    }
    if(touche_s){
      xTankIntermediaire1 = xTankIntermediaire1 - vitesse;
    }
    if(touche_d){
      xTankIntermediaire1 = xTankIntermediaire1 + vitesse;
    }
    
    tabTankIntermediaire1[0]=xTankIntermediaire1;
    tabTankIntermediaire1[1]=yTankIntermediaire1;
    tabTankIntermediaire1[2]=xTankIntermediaire1 + tailleTankX;
    tabTankIntermediaire1[3]=yTankIntermediaire1 + tailleTankY;
    
/*    if(Bup){
      yTank2 = yTank2 - vitesse;
    }
    if(Bdown){
      yTank2 = yTank2 + vitesse;
    }
    if(Bleft){
      xTank2 = xTank2 - vitesse;
    }
    if(Bright){
      xTank2 = xTank2 + vitesse;
    }   
   */ 
   
   
 
 /*   
    if(touche_z){
      yTank1 = yTank1 - vitesse;
    }
    if(touche_q){
      yTank1 = yTank1 + vitesse;
    }
    if(touche_s){
      xTank1 = xTank1 - vitesse;
    }
    if(touche_d){
      xTank1 = xTank1 + vitesse;
    }
    
    if(Bup){
      yTank2 = yTank2 - vitesse;
    }
    if(Bdown){
      yTank2 = yTank2 + vitesse;
    }
    if(Bleft){
      xTank2 = xTank2 - vitesse;
    }
    if(Bright){
      xTank2 = xTank2 + vitesse;
    }   
    tabTank1[0]=xTank1;
    tabTank1[1]=yTank1;
    tabTank1[2]=xTank1 + tailleTankX;
    tabTank1[3]=yTank1 + tailleTankY;
    
    tabTankIntermediaire1[0]=xTankIntermediaire1;
    tabTankIntermediaire1[1]=yTankIntermediaire1;
    tabTankIntermediaire1[2]=xTankIntermediaire1 + tailleTankX;
    tabTankIntermediaire1[3]=yTankIntermediaire1 + tailleTankY;
    
    tabTank2[0]=xTank2;
    tabTank2[1]=yTank2;
    tabTank2[2]=xTank2 + tailleTankX;
    tabTank2[3]=yTank2 + tailleTankY;
*/
   }
}




void bougerCanon(){
  if(touche_o)   angleT1 -= 0.03;
  if(touche_l)   angleT1 += 0.03; 
  
  if(touche_moins)   angleT2 -= 0.03;
  if(touche_plus)   angleT2 += 0.03; 
}


  
void ajoutProjectiles(){
   
   /*if(touche_k && frameCount % ecartTirs == 0){   //tire si la touche k est pressee et a un delai d'attente
     
     listeXprojectilesT1.add(xTank1);              //ajout de la composante des proj sur X
     listeYprojectilesT1.add(yTank1);              //sur Y
    }
   
   for(int i=0 ; i<listeXprojectilesT1.size();i++){        //Fait bouger les projectiles
      
     listeXprojectilesT1.set(i,listeXprojectilesT1.get(i)+vitesseProjectiles);
     listeYprojectilesT1.set(i,listeYprojectilesT1.get(i)+vitesseProjectiles);
   }
   */
}
  
void collisionProjectilesDecors(){
  
}


  
 //<>// //<>// //<>//


 //<>// //<>// //<>// //<>//
 
void bougerTank(){
  if(tankPeutBouger==true){
    tabTank1[0]=tabTankIntermediaire1[0];
    tabTank1[1]=tabTankIntermediaire1[1];
    tabTank1[2]=tabTankIntermediaire1[2];
    tabTank1[3]=tabTankIntermediaire1[3];
    xTank1=tabTank1[0];
    yTank1=tabTank1[1];
  }
}
 
 
 
void affichage(){
    pushMatrix();
      fill(0);
      mur1.afficher();    
      mur2.afficher();
      mur3.afficher();
      mur4.afficher();
      mur5.afficher();
      mur6.afficher();
      mur7.afficher();
      mur8.afficher();
  popMatrix();
  
      fill(0);
      stroke(0);
      rectMode(CORNER);
      rect(tabTank1[0],tabTank1[1],tailleTankX,tailleTankY);
      
      fill(0);
      stroke(0);
      rectMode(CORNER);
      rect(xTank2,yTank2,tailleTankX,tailleTankY);
      
     // affichageDecors1();
      
      pushMatrix();
      stroke(0);
      strokeWeight(4); 
      translate(tabTank1[0]+(tailleTankX/2), tabTank1[1]+(tailleTankY/2));    //point d'origine du canon
      rotate(angleT1);
      line(0,0, 80,0);
      popMatrix();
      
      pushMatrix();
      stroke(0);
      strokeWeight(4); 
      translate(xTank2+(tailleTankX/2), yTank2+(tailleTankY/2));    //point d'origine du canon
      rotate(angleT2);
      line(0,0, 80,0);
      popMatrix();
      
       if(touche_k){
        J1bouletL.add(new J1Boulet(xTank1+(tailleTankX/2), yTank1+(tailleTankY/2), vitesseProjectiles, angleT1));
       }
        for (int i = 0 ; i < J1bouletL.size() ; i++)
        {
        J1bouletL.get(i).update();
        //if(J1bouletL.get(i).edge())
        //    J1bouletL.remove(i);
  }
      
      /*pushMatrix();
      translate(tabTank1[0]+(tailleTankX/2), tabTank1[1]+(tailleTankY/2));    //point d'origine du canon
      rotate(angleT1-PI/4);
      for (int i = 0 ;i < listeXprojectilesT1.size() ; i++){
        fill(255,0,0);
        ellipse(listeXprojectilesT1.get(i),listeYprojectilesT1.get(i) , tailleProjectiles , tailleProjectiles);
      }
       popMatrix();
       
       pushMatrix();
      translate(xTank2+(tailleTankX/2), yTank1+(tailleTankY/2));    //point d'origine du canon
      rotate(angleT2-PI/4);
      for (int i = 0 ;i < listeXprojectilesT2.size() ; i++){
        fill(255,0,0);
        ellipse(listeXprojectilesT2.get(i),listeYprojectilesT2.get(i) , tailleProjectiles , tailleProjectiles);
      }
       popMatrix();
       */
}

void setup() {
  size(1500,900);
  imageMode(CENTER);
  mode=22;
  
  tank1 = new Tank(3,0,500,400);
  tank2 = new Tank(3,180,900,500);
  
  mur1 = new Mur(1500/9, 900/9.6, 1500/5.6, 900/16);
  mur2 = new Mur(largeurEcran/9, hauteurEcran/2.2, largeurEcran/5.6, hauteurEcran/16);
  mur3 = new Mur(largeurEcran/9, hauteurEcran/1.2, largeurEcran/5.6, hauteurEcran/16);
  mur4 = new Mur(largeurEcran/1.4, hauteurEcran/9.6, largeurEcran/5.6, hauteurEcran/16);
  mur5 = new Mur(largeurEcran/1.4, hauteurEcran/2.2, largeurEcran/5.6, hauteurEcran/16);
  mur6 = new Mur(largeurEcran/1.4, hauteurEcran/1.2, largeurEcran/5.6, hauteurEcran/16);
  mur7 = new Mur(largeurEcran/2.8, hauteurEcran/3.4, largeurEcran/3.4, hauteurEcran/16);
  mur8 = new Mur(largeurEcran/2.8, hauteurEcran/1.55, largeurEcran/3.4, hauteurEcran/16);
  
  
  solobutton= loadImage("Solo.png");
  multibutton= loadImage("Multi.png");
  creditsbutton= loadImage("Credits.png");
  setupbutton= loadImage("Setup.png");
  title=loadImage("Title.png");
  fond=loadImage("Fond.jpg");
}

void draw() {
  if(mode==0)  ecranAcceuil();
  if(mode==22) modeCombatMulti();
  
 
}