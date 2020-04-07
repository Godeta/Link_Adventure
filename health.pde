void health() {
  if (health == 0 || health ==1) {
     image (coeurF,20,10);
     image (coeurF,40,10);
     image (coeurF,60,10);
   }
   if (health > 1) {
     image (coeur2,20,10);
     image (coeurF,40,10);
     image (coeurF,60,10);
   }
   if (health > 3) {
     image (coeurE,20,10);
     image (coeurF,40,10);
     image (coeurF,60,10);
   }
   if (health > 5) {
     image (coeurE,20,10);
     image (coeur2,40,10);
     image (coeurF,60,10);
   }
   if (health > 7) {
     image (coeurE,20,10);
     image (coeurE,40,10);
     image (coeurF,60,10);
   }
   if (health > 9) {
     image (coeurE,20,10);
     image (coeurE,40,10);
     image (coeur2,60,10);
   }
   if (health > 11) {
     image (coeurE,20,10);
     image (coeurE,40,10);
     image (coeurE,60,10);
     dead.play();
   }
   
   if (health > 12) {
     linkphase = 100;
     fight.stop();
     surface.setSize(630,630);
     image(death,0,0);
   }
   
   if (health ==30) {
     sad.play();
     noLoop();
   }
  
}
