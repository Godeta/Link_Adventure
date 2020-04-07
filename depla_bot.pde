void depla_bot() {

//ennemi
//je place mouv ici pour que l'animation fonctionne bien
  if (mouv >2) {
  //images mouvement en haut
  if (cm%300 > -1 && cm%300 < 50 && Y1 - Y999 >5 )
  {
      
    image (evilU1,X1,Y1); 
    mouv = 4;
  } 

  else if (49 < cm%300 && cm%300 < 150 && Y1 - Y999 >5  ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour cm et donc j'ai %300
  { 
      
image (evilU2,X1,Y1); 
mouv = 4;
    }
    
    else if (149 < cm%300 && cm%300 < 200 && Y1 - Y999 >5  )
  { 
     
image (evilU1,X1,Y1); 
mouv = 4;
    }
     else if (199 < cm%300 && cm%300 < 300 && Y1 - Y999 >5  )
  { 
     
image (evilU4,X1,Y1); 
mouv = 4;
    }
   
     //images mouvement en bas
  if (cm%300 > -1 && cm%300 < 50 && Y1 - Y999 <-5  )
  {
      
    image (evilB1,X1,Y1); 
    mouv =5;
  } 

  else if (49 < cm%300 && cm%300 < 150 && Y1 - Y999 <-5  ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour cm et donc j'ai %300
  { 
      
image (evilB2,X1,Y1); 
mouv =5;
    }
    
    else if (149 < cm%300 && cm%300 < 200 && Y1 - Y999 <-5  )
  { 
     
image (evilB1,X1,Y1); 
mouv =5;
    }
     else if (199 < cm%300 && cm%300 < 300 && Y1 - Y999 <-5  )
  { 
     
image (evilB4,X1,Y1); 
mouv =5;
    }
   
  }
  
  if (mouv <4) {
   //images mouvement à droite
    if (cm%300 > -1 && cm%300 < 100 && X1 - X999 <-5   )
  {
      
    image (evilR1,X1,Y1); 
    mouv =2;
  } 

  else if (99 < cm%300 && cm%300 < 150 && X1 - X999 <-5   ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour cm et donc j'ai %300
  { 
      
image (evilR2,X1,Y1); 
mouv =2;
    }
    
    else if (149 < cm%300 && cm%300 < 250 && X1 - X999 <-5  )
  { 
     
image (evilR3,X1,Y1); 
mouv =2;
    }
     else if (249 < cm%300 && cm%300 < 300 && X1 - X999 <-5  )
  { 
     
image (evilR2,X1,Y1); 
mouv =2;
    }

   
    // images mouvement à gauche
    if (cm%300 > -1 && cm%300 < 100 && X1 - X999 >5  )
  {
      
    image (evilL1,X1,Y1); 
    mouv =1;
  } 

  else if (99 < cm%300 && cm%300 < 150 && X1 - X999 >5  ) // 2 fois U1 donc j'ai réduit à un intervalle de 50 pour cm et donc j'ai %300
  { 
      
image (evilL2,X1,Y1); 
mouv =1;
    }
    
    else if (149 < cm%300 && cm%300 < 250 && X1 - X999 >5  )
  { 
     
image (evilL3,X1,Y1); 
mouv =1;
    }
     else if (249 < cm%300 && cm%300 < 300 && X1 - X999 >5  )
  { 
     
image (evilL2,X1,Y1); 
mouv =1;
    }
    
  }
    }
