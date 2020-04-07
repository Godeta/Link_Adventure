void deplacements () {
 
  
  
  if (hurt ==0) { //rajouter hurt ==0 pour que l'on voit Link en rouge
     //link
  
  //images mouvement à droite
  if (cr%300 > -1 && cr%300 < 100)
  { 
    image (linkR1,X999,Y999);
 /*   pushMatrix(); //permet que scale n'influence pas le reste de mon programme !!! Sans ça je serai obligé de tout modifier ;_;
    scale(-1.0, 1.0); // Les valeurs "d'échelle" sont en pourcentage, par exemple scale (2.0) rend l'image 2 fois plus grande !Ici j'ai fait en abscisse -100% et ordonné 100%
    image (linkL1,X999,Y999); 
    popMatrix();*/
    
  } 
 
  else if (99 < cr%300 && cr%300 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
     
image (linkR2,X999,Y999); 
 
    }
    
    else if (199 < cr%300 && cr%300 < 300)
  { 
      
  
image (linkR3,X999,Y999); 

    }
    
    
    //images mouvement à gauche
  if (cl%300 > -1 && cl%300 < 100)
  {
      
    image (linkL1,X999,Y999); 
  } 

  else if (99 < cl%300 && cl%300 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      
image (linkL2,X999,Y999); 

    }
    
    else if (199 < cl%300 && cl%300 < 300)
  { 
     
image (linkL3,X999,Y999); 
    }
    

    //images mouvement en haut
  if (cu%500 > -1 && cu%500 < 100)
  {
      
    image (linkU1,X999,Y999); 
  } 

  else if (99 < cu%500 && cu%500 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      
image (linkU2,X999,Y999); 

    }
    
    else if (199 < cu%500 && cu%500 < 300)
  { 
     
image (linkU3,X999,Y999); 
    }
     else if (299 < cu%500 && cu%500 < 400)
  { 
     
image (linkU4,X999,Y999); 
    }
     else if (399 < cu%500 && cu%500 < 500)
  { 
     
image (linkU5,X999,Y999); 
    }
    
  
     //images mouvement en bas
  if (cb%300 > -1 && cb%300 < 100)
  {
      
    image (linkB1,X999,Y999); 
  } 

  else if (99 < cb%300 && cb%300 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      
image (linkB2,X999,Y999); 

    }
    
    else if (199 < cb%300 && cb%300 < 300)
  { 
     
image (linkB3,X999,Y999); 
    }
  }
    
  //joueur 2
  
  if (ocar) {
  //images mouvement à droite
  if (crJ2%300 > -1 && crJ2%300 < 100)
  { 
    tint(68,37,172);
    image (linkR1,X22,Y22);
 /*   pushMatrix(); //permet que scale n'influence pas le reste de mon programme !!! Sans ça je serai obligé de tout modifier ;_;
    scale(-1.0, 1.0); // Les valeurs "d'échelle" sont en pourcentage, par exemple scale (2.0) rend l'image 2 fois plus grande !Ici j'ai fait en abscisse -100% et ordonné 100%
    image (linkL1,X22,Y22); 
    popMatrix();*/
    
  } 
 
  else if (99 < crJ2%300 && crJ2%300 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
     tint(68,37,172);
image (linkR2,X22,Y22); 
 
    }
    
    else if (199 < crJ2%300 && crJ2%300 < 300)
  { 
      
  tint(68,37,172);
image (linkR3,X22,Y22); 

    }
    
    
    //images mouvement à gauche
  if (clJ2%300 > -1 && clJ2%300 < 100)
  {
      tint(68,37,172);
    image (linkL1,X22,Y22); 
  } 

  else if (99 < clJ2%300 && clJ2%300 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      tint(68,37,172);
image (linkL2,X22,Y22); 

    }
    
    else if (199 < clJ2%300 && clJ2%300 < 300)
  { 
     tint(68,37,172);
image (linkL3,X22,Y22); 
    }
    

    //images mouvement en haut
  if (cuJ2%500 > -1 && cuJ2%500 < 100)
  {
      tint(68,37,172);
    image (linkU1,X22,Y22); 
  } 

  else if (99 < cuJ2%500 && cuJ2%500 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      tint(68,37,172);
image (linkU2,X22,Y22); 

    }
    
    else if (199 < cuJ2%500 && cuJ2%500 < 300)
  { 
     tint(68,37,172);
image (linkU3,X22,Y22); 
    }
     else if (299 < cuJ2%500 && cuJ2%500 < 400)
  { 
     tint(68,37,172);
image (linkU4,X22,Y22); 
    }
     else if (399 < cuJ2%500 && cuJ2%500 < 500)
  { 
     tint(68,37,172);
image (linkU5,X22,Y22); 
    }
    
  
     //images mouvement en bas
  if (cbJ2%300 > -1 && cbJ2%300 < 100)
  {
      tint(68,37,172);
    image (linkB1,X22,Y22); 
  } 

  else if (99 < cbJ2%300 && cbJ2%300 < 200) //99 et pas 100 !!! Sinon il y a un moment sans indication car 100 n'est ni inférieur ou supérieur à lui même et l'image disparaûit, l'animation a donc un blanc
  { 
      tint(68,37,172);
image (linkB2,X22,Y22); 

    }
    
    else if (199 < cbJ2%300 && cbJ2%300 < 300)
  { 
     tint(68,37,172);
image (linkB3,X22,Y22); 
    }
    
    noTint();
  }
  
  }
    
  
    
