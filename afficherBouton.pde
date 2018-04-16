void afficherbouton() {
  if (mouseX<=width/4+175 && mouseX>=width/4-175 && mouseY<=400+80 && mouseY>=400-80) {
    solobutton.resize(363, 176);
    image(solobutton, width/4, 400);
    if ( mousePressed == true&&  mode == 0) {
      mode=1;
    }
  } else {
    solobutton.resize(330, 160);
    image(solobutton, width/4, 400);
  } 

  //=============================================
  if (mouseX<=2.8*width/4+175 && mouseX>=2.8*width/4-175 && mouseY<=400+80 && mouseY>=400-80 ) {
    multibutton.resize(363, 176);
    image(multibutton, 2.8*width/4, 400);
    if ( mousePressed == true&&  mode == 0) {
      mode=2;
    }
  } else {
    multibutton.resize(330, 160);
    image(multibutton, 2.8*width/4, 400);
  }

  //============================================
  if (mouseX<=width/4+175 && mouseX>=width/4-175 && mouseY<=680+80 && mouseY>=680-80) {
    setupbutton.resize(363, 176);
    image(setupbutton, width/4, 680);
    if ( mousePressed == true&&  mode == 0) {
      mode=4;
    }
  } else {
    setupbutton.resize(330, 160);
    image(setupbutton, width/4, 680);
  }

  //======================================
  if (mouseX<=2.8*width/4+175 && mouseX>=2.8*width/4-175 && mouseY<=680+80 && mouseY>=680-80) {
    creditsbutton.resize(363, 176);
    image(creditsbutton, 2.8*width/4, 680);
    if ( mousePressed == true&&  mode == 0) {
      mode=3;
    }
  } else {
    creditsbutton.resize(330, 160);
    image(creditsbutton, 2.8*width/4, 680);
  }
}