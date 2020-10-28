int disp_pin[7];  

void define_segment_pins(int a, int b, int c, int d, int e, int f, int g)
{  
  disp_pin[0] = a;
  disp_pin[1] = b;
  disp_pin[2] = c;
  disp_pin[3] = d;
  disp_pin[4] = e;
  disp_pin[5] = f;
  disp_pin[6] = g;
}

void display_number(int num) 
{
  switch(num)
  {
    case 0:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 0);
    digitalWrite(disp_pin[5], 0);
    digitalWrite(disp_pin[6], 1); 
    break;
    
    case 1:
    digitalWrite(disp_pin[0], 1); 
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 1);
    digitalWrite(disp_pin[4], 1);
    digitalWrite(disp_pin[5], 1);
    digitalWrite(disp_pin[6], 1);
    break;
    
    case 2:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 1);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 0);
    digitalWrite(disp_pin[5], 1);
    digitalWrite(disp_pin[6], 0);
    break;
    
    case 3:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 1);
    digitalWrite(disp_pin[5], 1);
    digitalWrite(disp_pin[6], 0);
    break;
    
    case 4:
    digitalWrite(disp_pin[0], 1);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 1);
    digitalWrite(disp_pin[4], 1);
    digitalWrite(disp_pin[5], 0);
    digitalWrite(disp_pin[6], 0);
    break;
    
    case 5:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 1);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 1);
    digitalWrite(disp_pin[5], 0);
    digitalWrite(disp_pin[6], 0);
    break;
    
    case 6:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 1);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 0);
    digitalWrite(disp_pin[5], 0);
    digitalWrite(disp_pin[6], 0);
    break;
    
    case 7:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 1);
    digitalWrite(disp_pin[4], 1);
    digitalWrite(disp_pin[5], 1);
    digitalWrite(disp_pin[6], 1);
    break;
    
    case 8:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 0);
    digitalWrite(disp_pin[5], 0);
    digitalWrite(disp_pin[6], 0);
    break;
    
    case 9:
    digitalWrite(disp_pin[0], 0);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 1);
    digitalWrite(disp_pin[5], 0);
    digitalWrite(disp_pin[6], 0);
    break;
    
    default:
    digitalWrite(disp_pin[0], 1);
    digitalWrite(disp_pin[1], 0);
    digitalWrite(disp_pin[2], 0);
    digitalWrite(disp_pin[3], 0);
    digitalWrite(disp_pin[4], 0);
    digitalWrite(disp_pin[5], 1);
    digitalWrite(disp_pin[6], 0);
    break;
  }
}

void setup() {
  pinMode(6, OUTPUT); 
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  define_segment_pins(6,7,8,9,10,11,12); 
}

void loop() {
  int i;
  for(i = 0; i<=9; i++)
  {
    display_number(i);
    delay(1000);
  }
}
