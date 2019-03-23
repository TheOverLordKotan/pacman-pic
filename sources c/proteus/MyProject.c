int i;
      char text10[]={" DEIVID, LEO, JOSUE, ING DE SOFTWARE!"};
      int iii;
int pos;
int dp=1;
int dy=2;
int cuen;
int pas;
int ale;
int pun;
int cntr;
int npe;
   int posx = 1;
   int posy = 1;
   int xsls = 15;
   int posxi = 47 ;
int st;
int rnd;
int aux;
char sc[7];
char *text, *text1;
ANSEL;
ANSELH;

  int kpi;
// Keypad module connections
// Keypad module connections
char keypadPort at PORTB;
// End Keypad module connections

// LCD Module connections
sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;

sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;
// End LCD module connections

// LCD Pin direction
sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;

sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;
// End of LCD Pin direction


//////////////////////////////////////////////-----sprites generados/----//////////////////////////////////////////

////dinosaurio completo
const char character1[] = {7,23,22,31,14,10,15,0};

void CustomChar1(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}


////dinosaurio sin pata izquierda
const char character2[] = {7,23,22,31,14,2,3,0};

void CustomChar2(char pos_row, char pos_char) {

  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) //Lcd_Chr_CP(character2[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}


////dinosaurio sin pata derecha
const char character3[] = {7,23,22,31,14,8,12,0};

void CustomChar3(char pos_row, char pos_char) {

  char i;
    Lcd_Cmd(64);
    for (i = 0; i<=7; i++) //Lcd_Chr_CP(character3[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 0);
}

///cactus grande
const char character4[] = {6,22,22,30,30,6,6,31};

void CustomChar4(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(72);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 1);
}

///cactus chico
const char character5[] = {0,0,12,13,15,12,12,31};

void CustomChar5(char pos_row, char pos_char) {
  char i;

    Lcd_Cmd(80);

    for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 2);
}
////// sol 1
const char character6[] = {29,28,25,2,20,0,0,0};

void CustomChar6(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(88);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 3);
}

////sol 2
const char character7[] = {28,29,24,2,8,0,0,0};

void CustomChar7(char pos_row, char pos_char) {
  char i;
    Lcd_Cmd(88);
    for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
    Lcd_Cmd(_LCD_RETURN_HOME);
    Lcd_Chr(pos_row, pos_char, 3);
}
void vel_juego(){
//----------------------------------------------velocidad del juego-----------------------------------------------------------------------
 if (pun<=10){                                     //velocidad del ciclo
 delay_ms(200);                                  ////va aumentabndo la velocidad mientas aunmemnta la puntuacion "pun"
 }
 if (pun>10 && pun<20){
 delay_ms(150);
 }
 if (pun>=20 && pun<30){
 delay_ms(80);
 }
 if (pun>=30 && pun<50){
 delay_ms(70);
 }
 if (pun>=50 && pun<100){
 delay_ms(60);
 }
 if (pun<100){
  delay_ms(50);
 }
}

////////-------------------------------funcion de sonidos------------------------------------/////

void sonido_pun(){
 PWM1_Init(800);
 PWM1_Start();
 PWM1_Set_Duty(128);

}

void sonido_fin(){
 PWM1_Init(500);
 PWM1_Start();
 PWM1_Set_Duty(64);
}

void sonido_stop(){
 pwm1_stop();

}
 void sonido_stop1(int kpis){
               switch (kpis)
    {

        case 56:
        pas=1;
           if (st==0){
       sonido_pun();      ///reproduice sonido de salto
      }
   st++;
             /////st es un contador auxiliar del tiempo que ha estado arriba el dinosaurio
   if (st>4){       ////si ha estado arriba por mas de tres ciclos automaticamente baja y el contador st vuelve a cero
    st=0;
   }
           break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
             case 53:
             pas=0;
                          st=0;
          break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal


                   case 52:
                          pas =3;
          break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
                             case 54:
                          pas =2;
          break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
          default:
                      pas =18;
          break;
    }
 switch(pas){
        case 1:

             dp = 0;
             CustomChar2(dp,dy);  CustomChar7(1,1); break;        ///dependiend de la variable pas es esl sprite del dinosaurio que se muestra
        case 0:
              dp = 1;
             //dy =dy +1;
        CustomChar3(dp,dy);  CustomChar6(1,1); break;
        case 2: 
             dy =dy -1;
        CustomChar2(dp,dy);  CustomChar7(1,1); break;
        case 3: 
         dy =dy +1;
        CustomChar2(dp,dy);  CustomChar7(1,1); break;
         default:  pas=18; 
           CustomChar2(dp,dy);  CustomChar7(1,1);  break;
 }

 ////////////////// ////////////////////////////////////////////////////////////////////////////////////
 //////////////////------------------------un  cactus--------------------------------------------///////
 ////////////////////////////////////////////////////////////////////////////////////////////////////

 if (rnd>=0 && rnd<10){
///------------------comienza el juego------------------------------------------------------------------------------------------
 CustomChar4(2,cuen);              ////imprime un cactus

vel_juego();                       ///llama a la funcion de la velocidad de juego

//-----------------------------------------aumenta la puntuacion -----------------------------------------------------------

 if (cuen==2 && dp==1){              ////si el dinosaurio coincide en posicion con el cactus pero esta arriba
  pun=pun++;
  sonido_pun;                        //// aumenta la puntiacion en 1
 }

//--------------------------------------------Condicion de fin de juego---------------------------------------------
  cuen--;                           /////cuenta regresiva del desplazamiento de los cactus, va desde 19 hasta 0
 text="Ups!!! U.U       ";           /////mensaje de colision
 sonido_fin;
 if (cuen==2 && dp==2){            /////si coinciden el dinosaurio y el cactus en la misma posicion el juego termina
  sonido_fin();                       ///Reproduce sonido
  delay_ms(500);
  sonido_stop();
  lcd_out(1,1,text);
  delay_ms(1000);
  lcd_out(2,1, "P=");                ////presenta la puntuacion obtenida por 4 segundos
  lcd_out(2,3,sc);
  delay_ms(4000);                ///y se resetea el pic despues de un segundo
 }

 if (cuen==0){                   /// si la cuenta del desplazamiento llego a cero vuleve a su valor inicial 19
  cuen=19;
 //-----------------------------------------genera nuero aleatorio---------------------------------------------------

  srand(rnd+aux);        //  establece el numero inicial del valor pseudo aleatorio
  rnd=(rand()/1000);  // genera el numero pseudo aleatorio y lo divide entre 1000 para obtener solo dos digitos enteros
  ////el numero anterior detemina que conjunto de cactus aparecera en el siguiente comienzo del ciclo (1, 2 o tres cactus)

  }
//------------------------------------------limpia el display---------------------------------------------------------
  lcd_cmd(_LCD_CLEAR);
  }///fin del primer if(imprime un solo cactus)



}
void menu(int kpiss){

  cuen=19;
  kpi=0;                               ///inicia la cuenta de desplazamiento en 19
  pun=0;                                   // inicia la puntuacion en 0
  rnd=1;

  switch (kpiss)
    {

      case 12:
              do  {
              Lcd_out(1,1,"Presdsa");
      kpiss = Keypad_Key_Click(); // Store key code in kpi variable
    }while (!kpiss);
  switch (kpiss)
    {
      case 1:
           kpi = 52;
           Lcd_out(1,1,"Presiona boton..");
          CustomChar1(2,1);
           lcd_out(2,2,"<{RUN!!RUN!!}");
           break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
      case 2:
           kpi = 52;
           break; // 4
    }

            do
      kpi = Keypad_Key_Click(); // Store key code in kpi variable
    while (!kpi);
  switch (kpi)
    {
      case 1:
           kpi = 55;
            aux=aux++;
           break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
    }



    while (1){


//---------------------------------ciclo principal------------------------------------------------------------------------------


  sonido_stop();
  lcd_out(1,5, "L=");               ////miestra la cantidad de cactus saltados
  inttostr(pun, sc);             /////convierte la puntuacion en str
  lcd_out(1,8, sc);              //// imprime la puntuacion




  do  {
      sonido_stop1(18);
      kpi = Keypad_Key_Click(); // Store key code in kpi variable

  }while (!kpi);
        if (kpi == 5) {
         sonido_stop1(56);
      }
      if (kpi==6) {
         sonido_stop1(53);
      }
      if (kpi==2) {
         sonido_stop1(54);
      }
      if (kpi==10) {
          sonido_stop1(52);
      }
            if (kpi==8) {
          dy= 2;
      dp=2;
      }


} ///fin de while
           break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
      default:

      kpi = 47;
   while(1)

      {

for(iii=0;iii<2;iii++)

      {

Lcd_Out(1,1,text10);                                        // Write text in first row, first column

Lcd_Cmd(_LCD_SHIFT_RIGHT);                 // Move text to the right 14 times

delay_ms(200);                                 //shifting speed




      }

Lcd_Cmd(_LCD_CURSOR_OFF);                                // Cursor off

Lcd_Cmd(_LCD_RETURN_HOME);                           // returning to home position


}

      break; // /
      case  12:
    lcd_cmd(_LCD_CLEAR);
     lcd_out(2,1, "Elija...");
  delay_ms(1500);
    }




}

void main() {


    kpi = 0; // Reset key code variable

//--------------------------------------condiciones de inicio---------------------------------------------------------------
   trisd=0x07;
   Lcd_Init();
  _Lcd_turn_on;
   Lcd_Cmd(_LCD_CURSOR_OFF);
  _LCD_CLEAR;
        npe = 11;
    npe = 0; 
                               lcd_out(1,1, "Holaaaa");
  delay_ms(20);
  lcd_out(2,1, "A.init juego");
  delay_ms(30);
    lcd_cmd(_LCD_CLEAR);
  lcd_out(1,1, "b. creditos");
  delay_ms(40);
    // Reset key code variable
    // Wait for key to be pressed and released                                      ///////////////////presentacion--------------
    do  {
     //menu(npe);
      npe = Keypad_Key_Click(); // Store key code in kpi variable
   }while (!npe);
      switch (npe)
    {
      case 3:
          npe = 12;
           menu(npe);
           break; // 4
      case 7:
          npe = 13;
           menu(npe);
           break; // 4
                 case 16:
           npe = 16;
                     menu(npe);
           break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
        case 11:
           npe = 11;
                     menu(npe);
                      break;
    }
} /// fin de main