void collisionBordEcran() {
    if (tabTank1[0] > largeurEcran-tailleTankX-10) {
      tabTank1[0] = largeurEcran-tailleTankX-10;
      tabTankIntermediaire1[0] = largeurEcran-tailleTankX-10;
    }
    if (tabTank1[0] < 10) {
      tabTank1[0] = 10;
      tabTankIntermediaire1[0] = 10;
    }
    if (tabTank1[1] > hauteurEcran-tailleTankY-10) {
      tabTank1[1] = hauteurEcran-tailleTankY-10;
      tabTankIntermediaire1[1] = hauteurEcran-tailleTankY-10;
    }
    if (tabTank1[1] < 10) {
      tabTank1[1] = 10;
      tabTankIntermediaire1[1] = 10;
    } 
    
    
    
     if (tabTank2[0] > largeurEcran-tailleTankX-10) {
      tabTank2[0] = largeurEcran-tailleTankX-10;
    }
    if (tabTank2[0] < 10) {
      tabTank2[0] = 10;
    }
    if (tabTank2[1] > hauteurEcran-tailleTankY-10) {
      tabTank2[1] = hauteurEcran-tailleTankY-10;
    }
    if (tabTank2[1] < 10) {
      tabTank2[1] = 10;
    } 
  }
  