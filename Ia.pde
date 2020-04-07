void Ia() {
  cm = cm+4;
  slow = slow +1;
  botanim = botanim +1;
  //pour que le mob suive le personnage
 // if (slow%100 > 55) { //le mob poursuit le personnage très vite mais uniquement lorsque slow%100 > 55 donc 45% du temps 
    if (slow%100 > 25 && slow%100 < 50 || slow%100 > 75) { //le mob le poursuit de manière plus fluide
    
    //attention le sens du code va changer légèrement le comportement de l'ia, si je met aller à gauche en premier le bot fera toujours des déplacement horizontaux avant d'avancer à la verticale seulement si il est aligné à mon perso
  if (X1-X999 > 5 && mouv<4 ) { //grâce à mouv si il choisit d'aller à gauche il ne peut pas aller en haut ou en bas en même temps
    X1 = X1-1;
   // mouv = 1; //finalement je place ça dans les déplacements du bot pour que tout fonctionne bien
  }
  if (X1 - X999 < -5 && mouv<4) {
    X1 = X1+1;
   // mouv = 2;
  }
  if (Y1 - Y999 >5 && mouv >2 ) {
    Y1 = Y1 -1;
  //  mouv =4;
  }
  if (Y1 - Y999 <-5 && mouv >2) {
    Y1 = Y1 +1;
  //  mouv =5;
  }

  
  
  }
  //si le mob est à proximité du personnage
  if (X1-X999 < 7 && X1 - X999 > -7 && Y1 - Y999 <7 && Y1 - Y999 >-7) {
  // text("Le mob est à proximité !",10,110);

// ATTENTION !!! L'IA privilégie les attaques selon l'ordre du code :/
  
   //images mouvement en bas
  if (botanim%100 > -1 && botanim%100 < 50 && Y1 - Y999 <0 && mouv >2)
  {
      
    image (evilBA1,X1,Y1); 
    mouv = 5;
  } 

  else if (49 < botanim%100 && botanim%100 < 100 && Y1 - Y999<0 && mouv >2 ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour botanim et donc j'ai %300
  { 
      
image (evilBA2,X1,Y1);
mouv = 5;
hurt = 2; //pour avoir une boucle d'instructions qui s'enclenchent
  }
  
  
   //images mouvement à gauche
  if (botanim%100 > -1 && botanim%100 < 50 && X1 - X999 <0 && mouv <4)
  {
      
    image (evilRA1,X1,Y1); 
    mouv = 1;
  } 

  else if (49 < botanim%100 && botanim%100 < 100 && X1 - X999 <0 && mouv <4 ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour botanim et donc j'ai %300
  { 
      
image (evilRA2,X1,Y1);
mouv = 1;
hurt = 4; //gauche
  }
   //images mouvement à droite
  if (botanim%100 > -1 && botanim%100 < 50 && X1 - X999 >-1 && X1 - X999 <6 && mouv <4 )
  {
      
    image (evilLA1,X1,Y1); 
    mouv = 2;
  } 

  else if (49 < botanim%100 && botanim%100 < 100 && X1 - X999 >-1 && X1 - X999 <6 && mouv <4 ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour botanim et donc j'ai %300
  { 
      
image (evilLA2,X1,Y1);
mouv = 2;
hurt = 3; //droite
  }
  
  //images mouvement en haut
  if (botanim%100 > -1 && botanim%100 < 50 && Y1 - Y999 >-1 && Y1 - Y999 <6 && mouv >2)
  {
      
    image (evilUA1,X1,Y1); 
    mouv = 4;
  } 

  else if (49 < botanim%100 && botanim%100 < 100 && Y1 - Y999 >-1 && Y1 - Y999 <6 && mouv >2 ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour botanim et donc j'ai %300
  { 
      
image (evilUA2,X1,Y1);
mouv = 4;
hurt = 1; //pour avoir une boucle d'instructions qui s'enclenchent
/*tint(205,0,0);
image(linkB1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
Y999 = Y999 -15; //recul
Y1 = Y1 +5;*/
}
  
  }
  
}
