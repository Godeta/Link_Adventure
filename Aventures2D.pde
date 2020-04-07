 //son
import processing.sound.*; //attention il faut mettre la mise à jour sinon ça ne fonctionne pas !!!
SoundFile epee;
SoundFile zelda;
SoundFile fight;
SoundFile dead;
SoundFile victory;
SoundFile sad;
SoundFile I_da;

//vidéo
import processing.video.*; //attention à bien convertir les vidéos comme on le souhaite et de la bonne taille ^^ 
Movie squalala;
Movie warning;
 
 //image début
 PImage zemain;
 
 //image fin
 PImage linkfin;

 //vie
 PImage coeurF; //full
 PImage coeur2; //demi
 PImage coeurE; //empty
 
 //mort
 PImage death;
 
 //décors
PImage maison;
PImage room2;
PImage out1;
PImage bed;
PImage book1;
PImage book2;
PImage book3;
PImage book4;
PImage bibli1;
PImage bibli2;
PImage bibli3;
PImage sword;
PImage socle;
PImage ocari;

PImage etage; //1er étage
PImage etage2;//après ouverture du coffre

PImage sS; //sous sol

//pnj
PImage pnj; //corps du pnj de dos
PImage pnj_face;
PImage pnj_text;

//link sprites
PImage linkBo;
PImage link_bed;
PImage link_bed1;

PImage linkL1; //link se trouve environ à 20x et 14y de mon image en 50px
PImage linkL2;
PImage linkL3;

PImage linkR1;
PImage linkR2;
PImage linkR3;

PImage linkU1;
PImage linkU2;
PImage linkU3;
PImage linkU4;
PImage linkU5;

PImage linkB1;
PImage linkB2;
PImage linkB3;

PImage linkST;

//attaques
PImage linkLA1; //link se trouve environ à 20x et 14y de mon image en 50px
PImage linkLA2;
PImage linkLA3;
PImage linkLA4;
PImage linkLA5;

PImage linkRA1;
PImage linkRA2;
PImage linkRA3;
PImage linkRA4;
PImage linkRA5;

PImage linkUA1;
PImage linkUA2;
PImage linkUA3;
PImage linkUA4;
PImage linkUA5;

PImage linkBA1;
PImage linkBA2;
PImage linkBA3;
PImage linkBA4;
PImage linkBA5;

//ennemi sprites
PImage evilU1; //15 X et 5 Y bout du chapeau
PImage evilU2;
PImage evilU4;
PImage evilUA1;
PImage evilUA2;

PImage evilL1; 
PImage evilL2;
PImage evilL3;
PImage evilLA1;
PImage evilLA2;

PImage evilR1; 
PImage evilR2;
PImage evilR3;
PImage evilRA1;
PImage evilRA2;

PImage evilB1; //15 X et 5 Y bout du chapeau
PImage evilB2;
PImage evilB4;
PImage evilBA1;
PImage evilBA2;

PImage mirror;
PImage reflet; //avec get

//police
PFont biblipol;

//variables
boolean debut = false; //écran Zelda en attendant que le son charge
boolean warn = false; //pour warning, éviter que la vidéo ne se lance à chaque fois
boolean taken = false; //si l'épée a été prise
boolean att = false; //lorsque une attaque est déclarée
boolean ida = false; //I da shall du pnj
boolean ocar =false; //activation de l'ocarina
boolean zPressed = false; //pour que l'on puisse contrôler le deuxième joueur en même temps que le premier
boolean sPressed = false;
boolean qPressed = false;
boolean dPressed = false;
int warntime; //warning time
int cr; // vitesse du déplacement d'image à droite
int cu; //vitesse du déplacement d'image en haut 
int cl; //vitesse du déplacement d'image en à gauche 
int cb; //vitesse du déplacement d'image en bas 
int cr2; //pareil mais pour les attaques de Link
int cu2;
int cl2;
int cb2;
int crJ2; //vitesse du déplacement des images du deuxième perso
int cuJ2;
int clJ2;
int cbJ2;
int crAJ2; //pareil mais pour les attaques du deuxième perso
int cuAJ2;
int clAJ2;
int cbAJ2;
int X999; //abscisse link
int Y999; //ordonné link
int X22 =100;//abscisse J2
int Y22=60; //ordonné J2
int linkphase; //pour les tours
int tlink; //temps avant une action (utilisé pour la sortie du lit et l'ouverture de la bibliothèque
int trans; //variable pour la transition entre les sorties
int bovar =1; //vazriable bibliothèque
int X1 = 40; //abscisse mob
int Y1 = 50; //ordonné mob
int cm = -1; // vitesse déplacement images du mob
int slow; //vitesse de déplacement du mob
int takeSW; //si l'épée a été prise 
int vidTime; //temps avant de passer à la suite du programme après la vidéo. Aussi utilisé pour hurt et les attaques de Link !
int vidTime2; // utilisé pourhurtmob et l'obtention de l'ocarina !
int botanim; // tourne en boucle pour que les attaques du mob aient une animation
int hurt; //lorsque link prend un coup
int mouv; //mouvement du bot
int health; // vie de Link
int hurtmob;// lorsque le mob prend un coup
int viemob;// santé du mob

void setup () {
  size(1200,675);
  surface.setResizable(true); //autorise le changement de la taille de la fenêtre
    textFont(loadFont("Salina-48.vlw"),30); 
    text("Chargement des images...",width/2-200,height/2);
    
 pnj = loadImage ("img/pnj.png");
 pnj_face = loadImage ("img/pnj_face.png");
 pnj_text = loadImage ("img/pnj_text.png");
 pnj_text.resize(150,80);
 pnj_face.resize(45,45);
 pnj.resize(30,30);
 
 death = loadImage ("img/death2.jpg");
 linkB1 = loadImage ("img/linkB1.png");
 linkB2 = loadImage ("img/linkB2.png");
 linkB3 = loadImage ("img/linkB3.png");
 
 linkU1 = loadImage ("img/linkU1.png");
 linkU2 = loadImage ("img/linkU2.png");
 linkU3 = loadImage ("img/linkU3.png");
 linkU4 = loadImage ("img/linkU4.png");
 linkU5 = loadImage ("img/linkU5.png");
 
 linkL1 = loadImage ("img/linkL1.png");
 linkL2 = loadImage ("img/linkL2.png");
 linkL3 = loadImage ("img/linkL3.png");
 
 linkR1 = loadImage ("img/linkR1.png");
 linkR2 = loadImage ("img/linkR2.png");
 linkR3 = loadImage ("img/linkR3.png");
 
 linkRA1 = loadImage ("img/linkRA1.png");
 linkRA2 = loadImage ("img/linkRA2.png");
 linkRA3 = loadImage ("img/linkRA3.png");
 linkRA4 = loadImage ("img/linkRA4.png");
 linkRA5 = loadImage ("img/linkRA5.png");

 linkLA1 = loadImage ("img/linkLA1.png");
 linkLA2 = loadImage ("img/linkLA2.png");
 linkLA3 = loadImage ("img/linkLA3.png");
 linkLA4 = loadImage ("img/linkLA4.png");
 linkLA5 = loadImage ("img/linkLA5.png");
 
 linkUA1 = loadImage ("img/linkUA1.png");
 linkUA2 = loadImage ("img/linkUA2.png");
 linkUA3 = loadImage ("img/linkUA3.png");
 linkUA4 = loadImage ("img/linkUA4.png");
 linkUA5 = loadImage ("img/linkUA5.png");
 
 linkBA1 = loadImage ("img/linkBA1.png");
 linkBA2 = loadImage ("img/linkBA2.png");
 linkBA3 = loadImage ("img/linkBA3.png");
 linkBA4 = loadImage ("img/linkBA4.png");
 linkBA5 = loadImage ("img/linkBA5.png");

 linkST = loadImage("img/linkST.png");
 
 evilU1 = loadImage("img/evilU1-3.png");
 evilU2 = loadImage("img/evilU2.png");
 evilU4 = loadImage("img/evilU4.png");
 evilUA1 = loadImage("img/evilUA1.png");
 evilUA2 = loadImage("img/evilUA2.png");
 
 evilL1 = loadImage("img/evilL1.png");
 evilL2 = loadImage("img/evilL2-4.png");
 evilL3 = loadImage("img/evilL3.png");
 evilLA1 = loadImage("img/evilLA1.png");
 evilLA2 = loadImage("img/evilLA2.png");
 
 evilR1 = loadImage("img/evilR1.png");
 evilR2 = loadImage("img/evilR2-4.png");
 evilR3 = loadImage("img/evilR3.png");
 evilRA1 = loadImage("img/evilRA1.png");
 evilRA2 = loadImage("img/evilRA2.png");
 
 evilB1 = loadImage("img/evilB1-3.png");
 evilB2 = loadImage("img/evilB2.png");
 evilB4 = loadImage("img/evilB4.png");
 evilBA1 = loadImage("img/evilBA1.png");
 evilBA2 = loadImage("img/evilBA2.png");
 
  
 coeurF =loadImage("img/coeurF.png");
 coeur2 =loadImage("img/coeur2.png");
 coeurE =loadImage("img/coeurE.png");
 coeurF.resize (20,10);
 coeur2.resize (20,10);
 coeurE.resize (20,10);

 
 bed = loadImage ("img/bed.png");
 link_bed = loadImage ("img/link_bed.png");
 link_bed1 = loadImage ("img/link_bed2.png");
 linkBo = loadImage ("img/link_book.png");
 book1 = loadImage("img/book1.png");
 book2 = loadImage("img/book2.png");
 book3 = loadImage("img/book3.png");
 book4 = loadImage("img/book4.png");
 bibli1 = loadImage("img/french_wewantyou.png");
 bibli2 = loadImage("img/cover.jpg");
 bibli3 = loadImage("img/lafayette_action.png");
 bibli1.resize(1200,600);
 bibli2.resize(600,600);
 bibli3.resize(1200,600);
 
 zemain = loadImage("img/zemain.jpg");
 linkfin = loadImage("img/link_fin.jpg");
 
 maison = loadImage ("img/maison.png");
 room2 = loadImage("img/room2.png");
 etage = loadImage("img/etage.png");
 etage2 = loadImage("img/etage2.png");
 out1 = loadImage("img/out1.png");
 sS = loadImage ("img/cellar_floor.png");
 mirror = loadImage("img/mirror2.png");
 
 sword = loadImage("img/sword_socle.png");
 socle = loadImage("img/socle.png");
 
 biblipol = loadFont("SFMoviePoster-48.vlw"); //cela nécessite un dossier dans le fichier
 
 X999 = 50;
 Y999 = 75;
//les images s'affichent en fonction de la valeur des c donc je les règle à -1 pour qu'il n'y ai que celle qui m'intéresse qui apparaisse au début du programme
 cr = -1; 
 cu = -1;
 cl = -1;
 cb = -1;
 cr2 = -1; 
 cu2 = -1;
 cl2 = -1;
 cb2 = -1;
 
 // charge un fichier son du dossier data de processing 
  epee = new SoundFile(this, "Success.wav");
  fight = new SoundFile(this, "Majoras_Mask_Boss Theme.mp3");
  dead = new SoundFile(this, "zelda-death-sound.wav");
  victory = new SoundFile(this, "victory.mp3");
  sad = new SoundFile(this,"sad_piano.mp3");
  I_da = new SoundFile(this,"i_da_shall.wav");
  // vidéo
  squalala = new Movie(this, "Zelda_squalala.mov");
  warning = new Movie(this, "apparition_mob2.mov");
  
  image(zemain,0,0);
  /*fill(255);
  text("Appuis sur s pour arrêter la musique",500,550);*/
  
}

void draw () {
  
 // println(cm%100);
   println(mouseX);
  println(mouseY);
 // println(bovar);
  //println(tlink);
  //println(cb);
  /*println(X999);
  println (Y999);*/
 /* println(X1);
  println(Y1);*/
  /*println (linkphase);
  println(ocar);*/
  
 /* println (X1);
  println(slow%100);*/
  /*println(hurt);
  println(cb);
  println(cu);*/
  
  /*println(cu);
  println(cu2%500);
  println(att);*/
  
  if (linkphase <4) {// sinon l'image de la maison est toujours derrière !
 image(maison,0,0);
  }
 /*image (linkRA1,100,100); //Attention les images n'étaient pas correctes !!!
 image (linkRA2,50,100);
 image (linkRA3,100,80);
 image (linkRA4,120,100);*/
 
 
   //bibliothèque, tout en dessous sinon elle est cachée par la maison 
 if (bovar ==1) {
  book1.resize(0,27);
    image(book1,176,20);
    
  }
    
    if (bovar ==2) {
      book2.resize(0,27);
    image(book2,176,20);
    tlink = tlink+2;
    if (tlink > 100) {
      bovar =3;
    }
    }
    
    if (bovar ==3) {
      book3.resize(0,27);
    image(book3,176,20);
    tlink = tlink+2;
    if (tlink > 200) {
      bovar =4;
    }
    }
    
    if (bovar ==4) {
      book4.resize(0,27);
    image(book4,176,20);
    tlink = tlink+2;
    if (tlink > 400) {
      tlink =0;
    }
    }
    
 if (!debut) { // chargement du son
   
   zelda = new SoundFile(this, "zelda_song2.mp3");
   zelda.loop();
   debut = true;
 }
 
 if (debut) {
  
  if (linkphase ==0) {
    surface.setSize(239,162); //recadrer la fenêtre
    
    fill(0); //A partir d'ici c'est tout ce qui paramètre mon texte
 PFont polica;
polica = loadFont("Caladea-Italic-48.vlw"); //cela nécessite un dossier dans le fichier
textFont(polica,13); 
text("Presse e pour commencer ton aventure !",10,110);
  image (link_bed, 30,20);
  }
  
  if (linkphase==1) {
   
    
    image (link_bed1, 30,20);
    tlink = tlink+1; //pour laisser du temps avant que link ne se lève
    if (tlink > 25) {
      linkphase=2;
      cb =1; //attention cela se répète donc si je le met dans la phase 2 son fantôme revient
    }
  }
  if (linkphase==2) {
    if ( cb ==-1 && cr ==-1 && cl ==-1 && cu == -1) { // pour éviter que mon personnage ne disparaisse à chaque fois que j'appuie sur une autre touche attention si je ne met pas cu<1 alors cu n'augmentera plus lorsque je clique sur flèche du haut
    cu =100;
  }
    
    image (bed, 30,20);
     
     if (X999 > 164 && X999 < 175 && Y999 < 19){
 fill(0,255,0); //A partir d'ici c'est tout ce qui paramètre mon texte
 PFont poli;
poli = loadFont("Salina-48.vlw"); //cela nécessite un dossier dans le fichier
    textFont(poli,13); 
text("Il y a un levier caché...",120,65);
text(" Appuyer sur O ?",130,80);
     }
    if (X999 > 154 && X999 < 165 && Y999 < 19){//lorsque Link est devant la bibliothèque de gauche
      fill(0,0,255);
       PFont poli;
poli = loadFont("Salina-48.vlw"); //cela nécessite un dossier dans le fichier
    textFont(poli,13); 
      text("Presse l pour regarder les",100,65);
      text("documents de la bibliothèque",95,80);
  }
  
  }
  
  if (linkphase ==4) {
    zelda.stop();
    if (!warn) { //false
    background(0);
    warning.play();
    linkphase =39;
    surface.setSize(768,575);
    }
        
      if (warntime > 300) {
        warn = true;
      }
      
   
    if (warn) { //si la vidéo a été déclenché une fois alors on passe au sous sol directement
      fight.loop(); // attention il ne doit être déclenché qu'une fois
      linkphase =40;
    }   
  }
  
 
  
  if (linkphase ==40) { //sous-sol
   if ( cb ==-1 && cr ==-1 && cl ==-1 && cu == -1) { // pour éviter que mon personnage ne disparaisse à chaque fois que j'appuie sur une autre touche attention si je ne met pas cu<1 alors cu n'augmentera plus lorsque je clique sur flèche du haut
    cu =100;
  }
  
    image(sS,0,0);
    surface.setSize(239,218); // change la taille de la fenêtre
    depla_bot();
    Ia();
     mouv =3; //reset la variable pour que le bot puisse choisir d'aller en bas, à droite ou à gauche, à mettre après déplacements du bot
     if (viemob >5){//si le mob prend >5 coups
       //rajouter animation mort du mob
       fight.stop();
       victory.play();
       linkphase=41;
     }
  }
  
  if (linkphase==41) { //sous sol après la mort du mob
      if ( cb ==-1 && cr ==-1 && cl ==-1 && cu < 1) { // pour éviter que mon personnage ne disparaisse à chaque fois que j'appuie sur une autre touche attention si je ne met pas cu<1 alors cu n'augmentera plus lorsque je clique sur flèche du haut
    cu =100;
  }
  
    image(sS,0,0);
    surface.setSize(239,218); // change la taille de la fenêtre
    //image(evilU1,X1,Y1);
   
  }
  
  
  
  if (linkphase ==5) { //2ème pièce
    image(room2,0,0);
    surface.setSize(242,161); // change la taille de la fenêtre
    image(mirror,181,11,20,30);
    reflet = linkB1.get(0,mouseX,50,mouseY); //prend une partie de l'image chargée, elle est de 50*50
    tint(255,150);//opacité
    image(reflet,167,0);
    noTint();
  }
  
  if (linkphase == 11) { //étage 1
    surface.setSize(239,160);
    image(etage,0,0);
    if (X999 <31 && Y999 <16) {//lorsque l'on est à l'étage devant le coffre
    fill(0);
    text("Presse o pour ouvrir le coffre.",35,100);
    } 
  }
  
  if (linkphase ==12) { //étage après avoir ouvert le coffre et découverte de l'ocarina
    image(etage2,0,0);
    strokeWeight (3);
    line (55,95,55,height-1);
    /*line(1,95,width-3,95);
    line(1,95,3,height-3);
    line(width-3,95,width-3,height-3);
    line(1,height-3,width-3,height-3);*/
    fill(255);
    rect(0,95,width-3,height-96,7);//le 7 met une courbure au rectangle
    //noFill();
    line (10+50,95,10+50,height-1);
    //noStroke();
    image(ocari,10,100);
    fill(0);
     PFont bla;
bla = loadFont("ReemKufi-Regular-48.vlw"); //cela nécessite un dossier dans le fichier
textFont(bla,13); 
    text("Vous venez de découvrir",65,115);
    text(" l'ocarina ! Appuis sur 'z' pour",60,135);
    text(" appeler un deuxième joueur !",62,155);
    vidTime2 = vidTime2 +1;
   
    if (vidTime2 >300) {
     vidTime2 =0;
     linkphase=13;     
    }
    
  }
  
  if (linkphase ==13) { //étage après avoir ouvert le coffre et découvert l'ocarina
    image(etage2,0,0);
     if ( cb ==-1 && cr ==-1 && cl ==-1 && cu == -1) { // pour éviter que mon personnage ne disparaisse à chaque fois que j'appuie sur une autre touche attention si je ne met pas cu<1 alors cu n'augmentera plus lorsque je clique sur flèche du haut
    cu =100;
  }
    
  }
  
  if (linkphase ==6) { //dehors
     surface.setSize(222,176);
    image (out1,0,0);
    
    if (takeSW ==0) { //épée sur le socle
    image (sword,50,100);
    if(X999 > 40 && X999 < 60 && Y999 > 60) {
       fill(255,30,40); //A partir d'ici c'est tout ce qui paramètre mon texte
 PFont poli;
poli = loadFont("Caladea-Italic-48.vlw"); //cela nécessite un dossier dans le fichier
    textFont(poli,13); 
text("Retirer l'épée du socle ?",50,95);
text ("(appuyez sur a)",60,110);
    }
    }
    if (takeSW ==1) { //link brandit l'épée
      image (socle,50,100);
      image(linkST,X999,Y999);
      cb =-2;
      trans = trans +1; //pour que l'on voit un peu Link brandir l'épée
   if (trans >1 && trans <3) { //pour ne jouer le son qu'une fois
      epee.play(); //musique
   }
      
      if (trans > 50) {
       
        takeSW=2;
        taken = true; //l'épée a été prise, Link peut attaquer
        trans = 0;
        cb =1; //à mettre à la fin de la transition sinon cb reste toujours à 1
        
      }
    }
    
    if (takeSW ==2 ){ //l'épée a été prise
      image (socle,50,100);
      
    }
    
    if (viemob <5){
      image(pnj,97,150);
    }
    
  }
  
  if (linkphase ==15) {
    
    zelda.stop();
    background(0);
    squalala.play(); //lance la vidéo
    linkphase = 16;
    surface.setSize(638,360);
    
    
  }
  
  //placé ici pour enlever l'image de link lorsqu'il attaque
  if (att == true && cr> -1) {
    cr =-2;
  }
   if (att == true && cl> -1) {
    cl =-2;
  }
   if (att ==true && cu> -1) {
    cu =-2;
  }
   if (att ==true && cb> -1) {
    cb =-2;
  }
  
  if (qPressed){
   clJ2 = clJ2+20 ; //vitesse du changement d'images
      X22=X22-1; 
  }
  if (dPressed){
   crJ2 = crJ2+20 ; //vitesse du changement d'images
      X22=X22+1; 
  }
  if (zPressed){
   cuJ2 = cuJ2+20 ; //vitesse du changement d'images
      Y22=Y22-1; 
  }
  if (sPressed){
   cbJ2 = cbJ2+20 ; //vitesse du changement d'images
      Y22=Y22+1; 
  }
  
  health(); //pour que la vie soit visible par dessus les décors
  interactions();
  deplacements();
  if(ocar) {
   /* fill(200,200,0);
   rect(10,100,200,150); */
  }
  
  if (taken) { //si l'épée a été saisie
    attaques_Link(); //Link peut attaquer
  }
  

   if (linkphase ==39) { // placé ici pour que la vidéo soit par dessus Link
    
        image(warning, 0, 0);
      warntime = warntime +1;
        if (warntime >300) {
          fight.loop();
         linkphase =40; 
        }
  }
  
  if (linkphase ==16) { // pas nécessaire mais rend le tout plus propre, sinon image de link et image de la maison
    image(squalala, 0, 0); //affiche la vidéo si on a bien fait void movie event m.read !!!
    vidTime = vidTime +1;
    if (vidTime > 300) {
      linkphase = 20;
    }
  }
  
  if (linkphase ==20) {
   surface.setSize(1280,720);
    image(linkfin,0,0);
    //texte de fin
    fill(255);
    PFont finish;
finish = loadFont("SFMoviePoster-48.vlw"); //cela nécessite un dossier dans le fichier
textFont(finish,50); 
    text("Et Link s'envola pour de nouvelles aventures.",200,310);
  }
   
  if (linkphase ==100) {
    
   // 
    health = 30;//si je met noLoop directement mon image n'a pas le temps de charger ;_;
    
  }
  
  
  
  if (linkphase ==50) { //après avoir inspecté l'étagère
  surface.setSize(1200,700); //taille de l'image + un peu de marge en dessous
  background(100,100,50);
  image(bibli1,0,0);//affiche
  textFont(biblipol,30);
  fill(0,0,255);
  text("C'est une vieille affiche de propagande pour l'armée",200,630);
  fill(0);
  text("Utilise la flèche droite pour voir l'image suivante.",200,665);
    
  }
  
  if (linkphase==51){
    surface.setSize(600,700);
    image(bibli2,0,0);//cover
    textFont(biblipol,25);
    fill(0,0,255);
    text("C'est l'afiche d'une comedie racontant le déroulement de la guerre.",10,630);
    textFont(biblipol,30);
    fill(0);
    text("Utilise la flèche droite pour voir l'image suivante.",15,665);
  }
  
  if (linkphase ==52){
    surface.setSize(1200,700);
    image(bibli3,0,0);//Lafayette
    textFont(biblipol,30);
    fill(0,0,255);
    text("Une peinture de Lafayette un héros durant la guerre.",220,630);
    fill(0);
    text("Presse r pour fermer l'image",330,665);
  }
  
  if (linkphase ==60) { //après avoir ouvert le coffre
  
    linkphase =12;
  }
  
  
 }
}

void keyPressed() {
   if (keyCode == LEFT ) {
       cl = cl+20 ; //vitesse du changement d'images
      X999=X999-2;
    }
   else if (key == 'k' || key =='K' || key =='o' || key =='z' || key =='q' || key =='d' || key =='s') { //si on appuis sur k cr reste cr et ne redevient pas -1
     
   }
    else {cl =-1; }
    
    if (keyCode == RIGHT ) {
      cr = cr+20 ;
      X999=X999+2; //car inversion avec scale
    }
   /*else if (key =='k' || key =='K') {
     
    }*/
   else if (key == 'k' || key =='K' || key =='o' || key =='z' || key =='q' || key =='d' || key =='s') { //permet que Link ne disparaisse pas lorsque j'appuis sur o
     
   }
    else { cr =-1;}
    
    if (keyCode == UP) {
      cu = cu +15;
      Y999=Y999-2;
    }
   else if (key == 'k' || key =='K' || key =='o' || key =='z' || key =='q' || key =='d' || key =='s') {
     
   }
    else {cu =-1;}
 
    if (keyCode == DOWN ) { //&& Y999 >1 && Y999 < 698 il y avait cette limite mais elle est inutile 
     cb = cb +15;
      Y999=Y999+2;
    }
    else if (key == 'k' || key =='K' || key =='o' || key =='z' || key =='q' || key =='d' || key =='s') {
     
   }
    else {cb =-1;}
    
    if (key == 'e' || key =='E') {
      linkphase =1;
    }
    if (key == 'o' || key =='O' ) { //bibli
      if (X999 > 164 && X999 < 175 && Y999 < 19) {
      bovar =2;  
      }
    }  
    if (key =='a' || key == 'A'){
      if (X999 > 40 && X999 < 60 && Y999 > 60) {
        takeSW = 1;
    }
    }
    if (key == 'k' || key =='K') {
     
      if (cr >-1) {
        cr =-11;
      }
      if (cl >-1) {
        cl =-11;
      }
      if (cu >-1) {
        cu =-11;
      }
      if (cb >-1) {
        cb =-11;
      }
       att = true;
      //cr = -2;// mis dans déplacements pour enlever l'image de Link
    }
    if (linkphase ==11 && X999 <31 && Y999 <16) {//lorsque l'on est à l'étage devant le coffre
      if (key =='o' || key =='O'){
      linkphase=12;
      ocari=loadImage("img/ocarina.png");
      ocari.resize(50,40);
    }
  }
    
    if (linkphase ==2 && X999 > 154 && X999 < 165 && Y999 < 19){
     
     if (key =='l' || key == 'L'){//lire
       linkphase=50;
     }
    }
    
    if (linkphase ==51 && keyCode == RIGHT ) {//à placer avant comme ça le programme refait un tour avant de vérifier si keyCode == Right, sinon il enchaîne les 2
     linkphase =52; 
    }
    if (linkphase ==50 && keyCode == RIGHT ) {//changer d'image
     linkphase =51; 
    }
    
    if (linkphase==52 && key =='r') {//quitter l'image
    surface.setSize(239,162);
      linkphase =2;
    }
    
    if (key =='z' && linkphase ==13 && ocar ==false || key =='Z' && linkphase ==13 && ocar ==false) {
     ocar =true; //activation de l'ocarina donc apparition du deuxième joueur

    }
    
    if (ocar) {//si on l'ocarina a été activé
     
     if (key =='q' || key =='Q' ) {
     /*  clJ2 = clJ2+20 ; //vitesse du changement d'images
      X22=X22-2; */
      qPressed =true;   
    }
    
   else if (key == 'k' || key =='K' || key =='o' || keyCode==UP || keyCode==RIGHT ||keyCode==DOWN ||keyCode==LEFT ) { //si on appuis sur k cr reste cr et ne redevient pas -1
     
   }
    else {clJ2 =-1; }
    
    if (key =='d' || key =='D' ) {
      dPressed=true;
    }
   /*else if (key =='k' || key =='K') {
     
    }*/
   else if (key == 'k' || key =='K' || key =='o' || keyCode==UP || keyCode==RIGHT ||keyCode==DOWN ||keyCode==LEFT ) { //permet que Link ne disparaisse pas lorsque j'appuis sur o ou k
     
   }
    else { crJ2 =-1;}
    
    if (key  =='z' || key =='Z') {    
      zPressed =true;
    }
   else if (key == 'k' || key =='K' || key =='o' || keyCode==UP || keyCode==RIGHT ||keyCode==DOWN ||keyCode==LEFT ) {
     
   }
    else {cuJ2 =-1;}
 
    if (key =='s' || key =='S' ) { 
      sPressed =true;
    }
    else if (key == 'k' || key =='K' || key =='o' || keyCode==UP || keyCode==RIGHT ||keyCode==DOWN ||keyCode==LEFT ) {
     
   }
    else {cbJ2 =-1;}
     
    }
    
    //trucs utiles pour le programmeur
    if (key == 's' && ocar==false) { //arrêter la musique
       zelda.stop();
       fight.stop();
    }
    if (int(key) == 32) { //touche espace change de phase
      linkphase =40; //sous sol
    }
    if (int(key) == 10) { //touche entrer
     linkphase =41; //sous sol sans le mob
    }
    if (int(key) == 8) { //backspace
      linkphase =6; //dehors
    }
    if (key =='t') {//se donner l'épée
     taken = true; 
    }
    if (key=='M'){
      linkphase =11; //étage
    }
    
    if (key =='z' &&linkphase==41) {//déplacer le mob
      Y1 = Y1 -2;
    }
    if (key =='q' &&linkphase==41){
      X1 = X1-2;
    }
    if (key=='d' &&linkphase==41){
      X1 = X1+2;
    }
    if (key=='s' &&linkphase==41){
      Y1 = Y1+2;
    }
    
    
}

void keyReleased() {//sinon le joueur 2 reste en condition true après avoir appuyé sur une touche
  if (key=='z'||key=='Z') {
    zPressed = false;
  }
  else if (key=='s'||key=='S') {
    sPressed = false;
  }
  else if (key=='d'||key=='D') {
    dPressed = false;
  }
  else if (key=='q'||key=='Q') {
    qPressed = false;
  }
}

void movieEvent(Movie m) { //essentiel pour afficher la vidéo
m.read(); 

}
