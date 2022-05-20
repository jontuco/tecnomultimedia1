 
  boolean DEBUG = true;
  PFont titulo;
  PFont nombre;
  PImage protas;
  PImage puerta;
  PImage draagon;
  PImage portada;
  int contador;
  int mago;
  int tiempo;
  int estado;
  int arriba;
  int dx;
  
void setup(){
 
  titulo =loadFont("tipo1.vlw");
  nombre =loadFont("nommbre.vlw");
  protas=loadImage("protas.jpg");
  puerta =loadImage("puerta.png");
  draagon =loadImage("draagon.png");
  portada =loadImage("portada.jpg");

  size(400,400);
  background(82,60,19);
  
 
  mago=0;
  tiempo=0;
  estado=0;
  arriba=0;
  dx=0;
  }

void draw(){
  
  if(contador<500){
  
  background(0);
  image(portada,0,0,400,400);
  pushStyle();
  strokeWeight(3); 
  rectMode(CENTER);
  fill(30,11,64,225);
  rect(200,contador+25,325,200,225);
  textFont(titulo);
  popStyle();
  textSize(70);
  text("    disputa\n de poder",75,contador);
  fill(169,33,33);
  
  contador=frameCount;
  
  }else { 
     
  background(255);
  rect(400,400-contador,800,60,250);
  image(protas,0,0,400,400);
  textFont(nombre);
  text("foucault el mago conocido como lingua decipt",600-mago+4,70);
  text("discèpolo el aprendìz de la magia insurrecta",1700-mago+4,318);
  
   mago=frameCount;
   contador=frameCount;

  if(contador>2700 & estado==0){
    
  background(0);  
  image(puerta,0,0,400,400);
  textSize(30);
  fill(57,227,225);
  text("toca para conocer",50,50);
  text("     al enemigo",50,100);

  }if(contador>2700 & estado==1){
  
  fill(169,33,33);
  image(draagon,0,0,400,400);
  pushStyle();
  text("draco",100,400-tiempo);
  text("el guardiàn de",10,470-tiempo); 
  text("la moral",80,540-tiempo);
  popStyle();
  
  tiempo++;

  }if(tiempo>550){

  background(0);
  fill(169,33,33);
  text("proximamente...",-100+arriba,200);
  fill(169,33,33);
  
  text("directora: Jon",0,700-arriba);
  text("musica: Platòn",0,750-arriba);
  
  arriba++;
  dx=dx*3; }}
  
  println(tiempo);
  println(frameCount);
  println(mouseX,mouseY);}

void mousePressed() {
 
  println("click:"+estado);
  
  if(estado==0){
    estado = 1;
    
  }else if(estado==1) {}
  }
