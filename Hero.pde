class Hero {



  int w;
  int h;
  float x_pos;
  float y_pos;
  float speed = 20.0;
  float fall_speed=0.5;
  color hero_c;
  color good_c = color(0, 255, 0);
  color bad_c = color(255, 0, 0);

  int answ_count = 0;
  int answ_long = 1;
  boolean bad = false;
  boolean good = false;





  Hero(int ix_pos, int iy_pos, int iw, int ih, color ihero_c) {
    w = iw;
    h = ih;
    x_pos = ix_pos;
    y_pos = iy_pos;
    hero_c = ihero_c;
  }




  boolean KP(char k) {

    if (key == k) {
      x_pos+=speed;
      good = true;
      return true;
    }
    if (x_pos>0)x_pos-=speed;
    bad = true;
    return false;
  }



  void display() {
    if(x_pos<0)x_pos=0;
    if (good) {
      fill(good_c);
      answ_count++;
      if (answ_count>answ_long) {
        good=false;
        answ_count=0;
      }
    }


    if (bad) {
      fill(bad_c);
      answ_count++;
      if (answ_count>answ_long) {
        bad=false;
        answ_count=0;
      }
    }
    if(!bad && !good)fill(hero_c);
    
    rect(x_pos, y_pos, w, h);
    if (x_pos>0) {
      x_pos-=fall_speed;
    }
  }
}

























//void KR(){
//  if(keyCode == 37);
//  if(keyCode == 39);
//}
