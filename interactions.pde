void interactions() {
  //si Link prend un coup
  if (hurt ==1) { //coup bas
   vidTime = vidTime +1;
    if (vidTime > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurt = 0;
      health = health +1; //ici pour augmenter health de 1 et pas de 15
      vidTime =0;
    }
    tint(205,0,0);
image(linkB1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
Y999 = Y999 -2; //recul

  }
  
  if (hurt == 2) {// coup haut
     vidTime = vidTime +1;
    if (vidTime > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurt = 0;
      health = health +1;
      vidTime =0;
    }
    tint(205,0,0);
image(linkU1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
Y999 = Y999 +2; //recul
  }
  if (hurt == 3) {// coup droite
     vidTime = vidTime +1;
    if (vidTime > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurt = 0;
      health = health +1;
      vidTime =0;
    }
    tint(205,0,0);
image(linkR1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
X999 = X999 -2; //recul
  }
  if (hurt == 4) {// coup gauche
      vidTime = vidTime +1;
    if (vidTime > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurt = 0;
      health = health +1;
      vidTime =0;
    }
    tint(205,0,0);
image(linkL1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
X999 = X999 +2; //recul
  }
  
  //si spear moblin prend un coup
  if (hurtmob ==1) { //coup bas
   vidTime2 = vidTime2 +1;
    if (vidTime2 > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurtmob = 0;
      viemob = viemob +1; //ici pour augmenter health de 1 et pas de 15
      vidTime2 =0;
    }
    tint(205,0,0);
image(evilU1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
Y1 = Y1 -2; //recul
  }
     //si spear moblin prend un coup
  if (hurtmob ==2) { //coup haut
   vidTime2 = vidTime2 +1;
    if (vidTime2 > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurtmob = 0;
      viemob = viemob +1; //ici pour augmenter health de 1 et pas de 15
      vidTime2 =0;
    }
   tint(205,0,0);
image(evilB1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
Y1 = Y1 +2; //recul 
  }
  if (hurtmob ==3) { //coup droite
   vidTime2 = vidTime2 +1;
    if (vidTime2 > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurtmob = 0;
      viemob = viemob +1; //ici pour augmenter health de 1 et pas de 15
      vidTime2 =0;
    }
   tint(205,0,0);
image(evilL1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
X1 = X1 +2; //recul 
  }
     //si spear moblin prend un coup
  if (hurtmob ==4) { //coup gauche
   vidTime2 = vidTime2 +1;
    if (vidTime2 > 15) { //15 est donc à la fois le temps de l'animation + le nombre de pixels de déplacement 
      hurtmob = 0;
      viemob = viemob +1; //ici pour augmenter health de 1 et pas de 15
      vidTime2 =0;
    }
    tint(205,0,0);
image(evilR1,X999,Y999);
noTint();//sinon toutes les images sont teintes de rouge
X1 = X1 -2; //recul

  }
  
  
  if (linkphase < 4) { //si link est dans la maison
  
  //rectangle de ma pièce
    if (X999 < 31-20 ) { //31 abscisse de la maison mais link est à 20 pixels de mon image en 50px
      X999 = 30-20;
    }
    if (X999 > 181) {
      X999 = 180;
  }
      if (Y999 < 16) {
        Y999 = 15;
      }
      if(Y999 > 94) {
       Y999 = 93; 
      }
      
      //lit
      if (X999 > 44 && X999 < 80 && Y999 <59 && Y999 > 55) {
        Y999 = 60;
      }
      if (X999 > 35 && X999 < 50 && Y999 > 15 && Y999 < 58) {
        X999 = 34;
      }
      if (X999 < 79 && X999 > 60 && Y999 > 15 && Y999 <58){
        X999 = 80;
      }
      
      //truc derrière le lit
      if (X999 > 24 && X999 < 92 && Y999 < 19) {
        Y999 = 20;
      }
      //côté droit de l'hôtel
      if (Y999 > 14 && Y999 < 65 && X999 < 108 && X999 > 100) {
        X999 = 109;
      }
      if (Y999 < 67 && Y999 > 55 && X999 < 100 && X999 > 83) {
        Y999 = 68;
      }
      if (Y999 < 51 && Y999 > 23 && X999 > 88 && X999 < 100) {
        X999 = 87;
      }
      
      //coté gauche
      if (Y999 < 67 && Y999 > 55 && X999 < 31 && X999 > 8) {
        Y999 = 68;
      }
      if (Y999 < 51 && Y999 > 23 && X999 < 24) {
        X999 = 25;
      }
      if (Y999 < 58 && Y999 > 52 && X999 < 28 && X999 > 24) {
        Y999 = 51;
      }
      
      
       //sortie de la première pièce
      if (Y999 < 82 && Y999 > 71 && X999 > 179) 
      {
         trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,239,162);
  
 if (trans > 255) {
    
    trans = 0;
    cl =1; //pour que link soit dos à la sortie
    cr =-1; //car pour sortir on allait vers la droite
     X999 =180;
    Y999 =63; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =5;
  }
      }
  
  //sortie au sous sol
   if (Y999 < 18 && X999 > 162 && X999 < 173 && bovar ==4) 
      {
         trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,239,162);
  
  if (trans > 255 ) {
    cm = 0; //pour que le mob apparaisse
    trans = 0;
     X999 =94;
    Y999 =105; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =4; //sous sol
  }
     }
     
    } 
   
   //sous-sol
   if (linkphase ==40 || linkphase ==41) {//comme ça les interactions fonctionnent même après la mort du mob
    //rectangle de la pièce 
     if (Y999 > 130) {
       Y999 = 129;
     }
     if (X999 <-13) {
      X999 = -12; 
     }
     if (X999 > 202) {
       X999 = 201;
     }
     if (Y999 < 23) {
       Y999 = 22;
     }
     //armoire à droite
     if (X999 >176 && Y999 >93) {
      X999 =175; 
     }
     if (X999 >182 && Y999 >85 && Y999 < 90) {
       Y999 = 84;
     }
     //armoire tonneaux en haut
     if (X999 >134 && Y999 <41) {
      Y999 =40; 
     }
     if (Y999 <38 && X999 >129){
       X999 = 128;
     }
     //côté des escaliers
     if (Y999 <104 && X999 <128 && X999 >124){
      X999 =129; 
     }
     if (Y999 <104 && X999 >60 && X999 <70){
      X999 =59; 
     }
     //pour le mob
     if (Y1 <104 && X1 <128 && X1 >124){
      X1 =129; 
     }
     if (Y1 <104 && X1 >60 && X1 <70){
      X1 =59; 
     }
     //devant des escaliers
     if (Y999 <102 && X999>64 && X999 <84){
      Y999 =103;
     }
     if (Y999 <102 && X999>105 && X999 <120){
      Y999 =103;
     }
     if (Y1<102 && X1 >64 && X1 <120){ //pour le mob 
      Y1 =103; 
     }
     //partie gauche
     if (X999 <70 && Y999 <32){
      Y999 =31; 
     }
     
     //retour 1ère pièce
     if (X999 >92 && X999 < 105 && Y999 < 84) {
             trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,width,height);
     }
 if (trans > 255) {
   fight.stop(); //arrêter la musique du combat
  cb =1;
  cu = -1;
  cm =-1; //Pour que le mob disparaisse
   trans = 0;
     X999 =166;
    Y999 =20; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =2;
    zelda.loop();
    surface.setSize(239,162);
  }
     
   }
   
   // 2ème pièce
   if (linkphase == 5) {
     
     //rectangle de la pièce
     if (X999 > 178 && Y999 >68) {
      X999 = 177; 
     }
     if (X999 > 178 && Y999 <54) {
      X999 = 177; 
     }
     if (X999 > 76 && Y999 <7) {
      Y999 = 8; 
     }
     if (X999 < 57 && Y999 <7) {
      Y999 = 8; 
     }
     if (X999 <15) {
      X999 =16; 
     }
     if (X999 > 105 && Y999 >96) {
      Y999 = 95; 
     }
     if (X999 < 94 && Y999 >96) {
      Y999 = 95; 
     }
     
     
     //sortie de la maison
      if (Y999 > 94 && X999 > 93 && X999 < 106) 
      {
         trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,width,height);
  
 if (trans > 255) {
    
    trans = 0;
    
     X999 =88;
    Y999 =57; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =6;
  }
      }
      
      //pour monter à l'étage
      if (X999 > 59 && X999 <77 && Y999 < 8){
          trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,width,height);
  
 if (trans > 255) {
    cb =1; 
    cu =-1; // pour entrer le perso monte mais en sortant il est de dos
    trans = 0;
     X999 =66;
    Y999 =11; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =11;
  }
      }
      
      //retour 1ère pièce
      if (X999 > 182 && Y999 > 57 && Y999 < 66) {
           trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,width,height);
  
 if (trans > 255) {
    cl =1; 
    cr =-1; // pour entrer le perso va à droite mais en sortant il est de dos
    trans = 0;
     X999 =177;
    Y999 =75; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =2;
  }
      }
      
   }
   
   //dehors
   if (linkphase ==6) {
     
     //pnj
     if (viemob <5) {
      //le pnj bloque le chemin
       if (Y999 > 125 && X999 >68 && X999 <97 ) {
   Y999 =124;
 }
  //image du dialogue
 if (X999 >68 && X999 <97 && Y999 >122){
      image (pnj_text,30,80);
      image(pnj_face,20,135);
      if (!ida) {
       I_da.play(); //son I da shall
       ida = true; //boolean pour que l'action ne se répète pas
      }
 }
 else {
   ida = false; //permet de faire en sorte que lorsque je quitte le dialogue avec le pnj il redira "i da shall" qua&nd je lui parlerai
 }
     }
     //retour 2ème pièce
     if (X999 > 83 && X999 < 93 && Y999 < 55) {
             trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,width,height);
     }
 if (trans > 255) {
    trans = 0;
     X999 =98;
    Y999 =93; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =5;
  }
  
  //socle
  if (X999 >27 && X999 < 42 && Y999 > 73 && Y999 < 80)
  {
    Y999 = 72;
  }
  if (X999 >39 && X999 < 47 && Y999 > 76 && Y999 < 92) {
    X999 = 48;
  }
  if (X999 >23 && X999 < 28 && Y999 > 76 && Y999 < 92) {
    X999 = 22;
  }
  if (X999 >27 && X999 < 42 && Y999 > 80 && Y999 < 94)
  {
    Y999 = 94;
  }
  
  //contours zone
  if (X999 <-3 )
  {
    X999 = -2;
  }
  if (X999 <62 && Y999 > 123)
  {
    Y999 = 122;
  }
   if (X999 >116 && Y999 > 110)
  {
    Y999 = 109;
  }
  if (X999 >162 )
  {
    X999 = 162;
  }
  if (Y999 <53) {
   Y999 = 54; 
  }
  
  //tas de troncs d'arbres
  if (Y999 < 68 && X999 <30 ) {
    Y999 = 69;
  }
  
  if (Y999 <64 && X999 <33  ) {
    X999 =34;
  }
  
  //craquelures
  if (X999>56 && Y999>102 && X999 <61) {
    X999 =55;
  }
  if (X999<72 && Y999>102 && X999 >65) {
    X999 =72;
  }
  if (X999>94 && Y999>102 && X999 <99) {
    X999 =93;
  }
  if (X999<116 && Y999>102 && X999 >102) {
    X999 =117;
  }
 
 //sortie 
 if (Y999 > 150 ) {
   linkphase =15;
 }
   
   
   }
   if (linkphase ==11 || linkphase ==12 || linkphase==13 ) {//étage et étage après l'ouverture du coffre
   
   //rectangle de la pièce
   if (X999 >177){
    X999 =176; 
   }
   if (Y999 >93){
    Y999 =92; 
   }
   if (X999<15){
    X999 =16; 
   }
   if (X999 > 72 && Y999 <5) {
      Y999 = 6; 
     }
     if (X999 <63  && Y999 <5) {
      Y999 = 6; 
     }
     
     //coffre
     if (X999 <30 && Y999 <13){
       Y999 =14;
     }
     if (X999 <36 && Y999 <14 && X999 >30){
      X999 =37; 
     }
     //vase
     if(X999 <33 && Y999 >84){
       X999 =34;
     } 
     if (Y999 >78 && X999 <27){
      Y999 =77; 
     }
   
     // retour 2ème pièce
     if (X999 > 63 && X999 <73 && Y999 < 7) {
         trans = trans +6;
    fill(0,0,0,trans);  
  rect (0,0,width,height);
     }
 if (trans > 255) {
  cb =1;
  cu = -1;
   trans = 0;
     X999 =66;
    Y999 =10; //mettre tout ici, position du perso, réinitialiation de la variable etc pour que ça ne se répète pas en boucle !!!
    linkphase =5;
  }
   }
   
  
}
