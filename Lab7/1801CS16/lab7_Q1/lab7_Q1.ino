int bcd_pins[4];  

void bcd_control_pins(int a, int b, int c, int d) 
{  
  bcd_pins[0] = a;  
  bcd_pins[1] = b;
  bcd_pins[2] = c;
  bcd_pins[3] = d;
}

void display_number(int num)  
{
    int tmp=num;
    for(int i=0;i<=3;i++)
    {
      digitalWrite(bcd_pins[i],tmp%2);
      tmp /= 2;
    }  
}

void setup() {
  pinMode(8, OUTPUT);   
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  bcd_control_pins(11,10,9,8); 
}

void loop() {
  int i;  
  for(i = 0; i<=9; i++)
  {
    display_number(i);
    delay(1000);
  }
}
 
