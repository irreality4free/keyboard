
Hero myHero;

PFont f; 
int ch_num=9;
char[] rand_ch=new char[ch_num];

color myHero_c = color(0, 0, 255);

char current_char;


int str_len = 20;
int level=2;

String game_str="";
void gen_string(){
  for (int i =0; i<str_len;i++){
    ch_char();
    game_str+=current_char;
  }
}


void gen_new(){
 
    ch_char();
    game_str+=current_char;
  
}

void setup() {
  size(640, 480);
  myHero = new Hero(20, 200, 70, 70, myHero_c);
  rand_ch[0] = ' ';
  rand_ch[1] = 'j';
  rand_ch[2] = 'f';
  rand_ch[3] = 'd';
  rand_ch[4] = 'k';
  rand_ch[5] = 's';
  rand_ch[6] = 'l';
  rand_ch[7] = 'a';
  rand_ch[8] = ';';
  rand_ch[9] = 'g';
  rand_ch[10] = 'h';
  
  
  rand_ch[11] = 'r';
  rand_ch[12] = 'u';
  rand_ch[13] = 'e';
  rand_ch[14] = 'i';
  rand_ch[15] = 'w';
  rand_ch[16] = 'o';
  rand_ch[17] = 'q';
  rand_ch[18] = 'p';
  rand_ch[17] = 't';
  rand_ch[18] = 'y';
  
  
  rand_ch[11] = 'v';
  rand_ch[12] = 'm';
  rand_ch[13] = 'c';
  rand_ch[14] = ',';
  rand_ch[15] = 'x';
  rand_ch[16] = '.';
  rand_ch[17] = 'z';
  rand_ch[18] = '/';
  rand_ch[17] = 'b';
  rand_ch[18] = 'n';

  f = createFont("Arial",50,true); // STEP 2 Create Font
  ch_char();
  gen_string();
}
void ch_char(){
  //print(Math.round(random(1)));
 current_char=rand_ch[int(Math.round(random(level)))] ;
}


void drawText(String message, float fontXPos, float fontYPos, int charSpacing){
  for (int i = 0; i < message.length(); i++) {
    fill(255);
    text(message.charAt(i),fontXPos,fontYPos);
    fontXPos += charSpacing;
  } 
}






void draw() {
  background(0);
  fill(color(255,120,120)); 
  
rect(550, 0, 90, 480);
  myHero.display();
    textFont(f,100);
  
  // fill(255);                         // STEP 4 Specify font color 
  //text(game_str,myHero.x_pos+18,myHero.y_pos+50); 
  
  drawText(game_str,myHero.x_pos+18,myHero.y_pos+70,70);
  if(myHero.x_pos>550){
   level++;
   myHero.x_pos=0;
  }
}

void keyPressed() {
  char c1 = game_str.charAt(0);
  game_str = game_str.substring(1, game_str.length());
myHero.KP(c1);
gen_new();
}
//void keyReleased(){
//  myHero.KR();
//}
