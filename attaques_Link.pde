void attaques_Link() {
  
  if (att) {
    
    vidTime = vidTime +1; //limiter le temps de l'animation
  cr2 = cr2+16;
  cl2 = cl2+16;
  cu2 = cu2+16;
  cb2 = cb2+16;
  
   //images mouvement attaque à droite
  if (cr2%500 > -1 && cr2%500 < 100 && cr ==-11)
  { 
   // cr = -2; //pour enlever l'image de Link
    image (linkRA1,X999,Y999);

    
  } 
 
  else if (99 < cr2%500 && cr2%500 < 200 && cr ==-11) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
     
image (linkRA2,X999,Y999); 
 
    }
    
    else if (199 < cr2%500 && cr2%500 < 300 && cr ==-11)
  { 
      
  
image (linkRA3,X999,Y999); 

    }
     else if (299 < cr2%500 && cr2%500 < 400 && cr ==-11)
  { 
      
  
image (linkRA4,X999,Y999); 

    }
     else if (399 < cr2%500 && cr2%500 < 500 && cr ==-11)
  { 
image (linkRA5,X999,Y999); 
if (X1-X999 < 13 && X1 - X999 > -13 && Y1 - Y999 <13 && Y1 - Y999 >-13) {
  hurtmob=3;
}

    }
    
    
    //images mouvement attaque à gauche
  if (cl2%500 > -1 && cl2%500 < 100 && cl ==-11)
  {
      
    image (linkLA1,X999,Y999); 
  } 

  else if (99 < cl2%500 && cl2%500 < 200 && cl ==-11) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      
image (linkLA2,X999,Y999); 

    }
    
    else if (199 < cl2%500 && cl2%500 < 300 && cl ==-11)
  { 
     
image (linkLA3,X999,Y999); 
    }
    else if (299 < cl2%500 && cl2%500 < 400 && cl ==-11)
  { 
     
image (linkLA4,X999,Y999); 
    }
    else if (399 < cl2%500 && cl2%500 < 500 && cl ==-11)
  { 
    image (linkLA5,X999,Y999); 
    if (X1-X999 < 13 && X1 - X999 > -13 && Y1 - Y999 <13 && Y1 - Y999 >-13) {
  hurtmob=4;
}
    }
    

    //images mouvement attaque en haut
  if (cu2%500 > -1 && cu2%500 < 100 && cu ==-11)
  {
      
    image (linkUA1,X999,Y999); 
  } 

  else if (99 < cu2%500 && cu2%500 < 200 && cu ==-11) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      
image (linkUA2,X999,Y999); 

    }
    
    else if (199 < cu2%500 && cu2%500 < 300 && cu ==-11)
  { 
     
image (linkUA3,X999,Y999); 
    }
     else if (299 < cu2%500 && cu2%500 < 400 && cu ==-11)
  { 
     
image (linkUA4,X999,Y999); 
    }
     else if (399 < cu2%500 && cu2%500 < 500 && cu ==-11)
  {    
image (linkUA5,X999,Y999); 
if (X1-X999 < 13 && X1 - X999 > -13 && Y1 - Y999 <13 && Y1 - Y999 >-13) {
  hurtmob=2;
}
    }
    
  
     //images mouvement attaque en bas
  if (cb2%500 > -1 && cb2%500 < 100 && cb ==-11)
  {
      
    image (linkBA1,X999,Y999); 
  } 

  else if (99 < cb2%500 && cb2%500 < 200 && cb ==-11) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      
image (linkBA2,X999,Y999); 

    }
    
    else if (199 < cb2%500 && cb2%500 < 300 && cb ==-11)
  { 
     
image (linkBA3,X999,Y999); 
    }
    else if (299 < cb2%500 && cb2%500 < 400 && cb ==-11)
  { 
     
image (linkBA4,X999,Y999); 
    }
    else if (399 < cb2%500 && cb2%500 < 500 && cb ==-11)
  { 
     
image (linkBA5,X999,Y999); 
if (X1-X999 < 13 && X1 - X999 > -13 && Y1 - Y999 <13 && Y1 - Y999 >-13) {
  hurtmob=1;
}
    }
     
   if (vidTime > 30) {
     //pour que Link reste après avoir donné un coup
     if (cl ==-11) {
      cl = 1; 
     }
     if (cu ==-11) {
      cu = 1; 
     }
     if (cb ==-11) {
      cb = 1; 
     }
     if (cr ==-11) {
      cr = 1; 
     }
     //pour arrêter l'attaque et son animation
    att = false;
    cr2 =-1;
    cl2 =-1;
    cu2 =-1;
    cb2=-1;
    vidTime =0;
   }
   
  }
  
  /*if (!att) {
    cl =-1;
    cu = -1;
    cl =-1;
    cb =-1;
    
  }*/
  
}
