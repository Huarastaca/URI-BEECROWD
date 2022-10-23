
const int Stres= 26;
const int Sdois= 25;
const int out= 27;

int red;
int green;
int blue;
int nf;
int redCor;
int greenCor;
int blueCor;

void calculo_rgb();
void color();


void setup() {

  pinMode(Sdois, OUTPUT);
  pinMode(Stres, OUTPUT);
  pinMode(out, INPUT);
  
  Serial.begin(115200);

}

void loop() {

  calculo_rgb();
  //color();
  delay(500);
  
}


void calculo_rgb()
{
  //Red
  digitalWrite(Sdois, LOW);
  digitalWrite(Stres, LOW);

  //os valores 255 rgb tem que ser assim invertidos
  red = pulseIn(out, LOW);
  Serial.print(" RED = ");
  redCor= map (red, 0 , 1023 , 255 , 0 );
  Serial.print(redCor);
  Serial.print(" | ");
  //delay(500);
  
  //Green
  digitalWrite(Sdois, HIGH);
  digitalWrite(Stres, HIGH);

  
  green = pulseIn(out, LOW);
  Serial.print(" GREEN = ");
  greenCor= map (green, 0 , 1023 , 255 , 0 );
  Serial.print(greenCor);
  Serial.print(" | ");
  //delay(500);
  
  //Blue
  digitalWrite(Sdois, LOW);
  digitalWrite(Stres, HIGH);

  
  blue = pulseIn(out, LOW);
  Serial.print(" BLUE = ");
  blueCor= map (blue, 0 , 1023 , 255 , 0 );
  Serial.print(blueCor);
  Serial.print(" | ");
  //delay(500);
  
//  //"sem filtro"
//  digitalWrite(Sdois, HIGH);
//  digitalWrite(Stres, LOW);
//  digitalWrite(Sdois, HIGH);
//  digitalWrite(Stres, LOW);
//  nf = pulseIn(out, LOW);
//  Serial.print(" NF = ");
//  Serial.print(nf);
//  Serial.print(" | ");
//  delay(500); 

  Serial.println();
}


//
//void color() {
//  if(12 <= red <= 14 && 21 <= green <= 23 && 19 <= blue <= 21){
//    Serial.println("");
//    Serial.print("   PRETO! ");
//    Serial.println("");
//  }
//
//  if(05 <= red <= 07 && 13 <= green <= 15 && 11 <= blue <= 13){
//    Serial.println("");
//    Serial.print("   VERMELHO! ");
//    Serial.println("");
//  } 
//
//  if(10 < red < 12 && 15 < green < 17 && 14 < blue < 16){ 
//    Serial.println("");
//    Serial.print("   VERDE! ");
//    Serial.println("");
//  }
//
//  if(11 < red < 13 && 17 < green < 19 && 12 < blue < 14){
//    Serial.println("");
//    Serial.print("   AZUL! ");
//    Serial.println("");
//  }
//  
//  if(5 < red < 7 && 7 < green < 9 && 6 < blue < 8){
//    Serial.println("");
//    Serial.print("   CINZA!");
//    Serial.println("");
//  }
//
//   if(03 < red < 04 && 03 < green < 04 && 03 < blue < 04){
//    Serial.println("");
//    Serial.print("   BRANCO!");
//    Serial.println("");
//   }

//}