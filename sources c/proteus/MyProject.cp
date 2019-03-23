#line 1 "C:/Users/user/Downloads/keypad interfacing with pic/keypad interfacing with pic/MyProject.c"
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


char keypadPort at PORTB;



sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;

sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;



sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;

sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;






const char character1[] = {7,23,22,31,14,10,15,0};

void CustomChar1(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}



const char character2[] = {7,23,22,31,14,2,3,0};

void CustomChar2(char pos_row, char pos_char) {

 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++)
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}



const char character3[] = {7,23,22,31,14,8,12,0};

void CustomChar3(char pos_row, char pos_char) {

 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++)
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}


const char character4[] = {6,22,22,30,30,6,6,31};

void CustomChar4(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(72);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 1);
}


const char character5[] = {0,0,12,13,15,12,12,31};

void CustomChar5(char pos_row, char pos_char) {
 char i;

 Lcd_Cmd(80);

 for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 2);
}

const char character6[] = {29,28,25,2,20,0,0,0};

void CustomChar6(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(88);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 3);
}


const char character7[] = {28,29,24,2,8,0,0,0};

void CustomChar7(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(88);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 3);
}
void vel_juego(){

 if (pun<=10){
 delay_ms(200);
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
 sonido_pun();
 }
 st++;

 if (st>4){
 st=0;
 }
 break;
 case 53:
 pas=0;
 st=0;
 break;


 case 52:
 pas =3;
 break;
 case 54:
 pas =2;
 break;
 default:
 pas =18;
 break;
 }
 switch(pas){
 case 1:

 dp = 0;
 CustomChar2(dp,dy); CustomChar7(1,1); break;
 case 0:
 dp = 1;

 CustomChar3(dp,dy); CustomChar6(1,1); break;
 case 2:
 dy =dy -1;
 CustomChar2(dp,dy); CustomChar7(1,1); break;
 case 3:
 dy =dy +1;
 CustomChar2(dp,dy); CustomChar7(1,1); break;
 default: pas=18;
 CustomChar2(dp,dy); CustomChar7(1,1); break;
 }





 if (rnd>=0 && rnd<10){

 CustomChar4(2,cuen);

vel_juego();



 if (cuen==2 && dp==1){
 pun=pun++;
 sonido_pun;
 }


 cuen--;
 text="Ups!!! U.U       ";
 sonido_fin;
 if (cuen==2 && dp==2){
 sonido_fin();
 delay_ms(500);
 sonido_stop();
 lcd_out(1,1,text);
 delay_ms(1000);
 lcd_out(2,1, "P=");
 lcd_out(2,3,sc);
 delay_ms(4000);
 }

 if (cuen==0){
 cuen=19;


 srand(rnd+aux);
 rnd=(rand()/1000);


 }

 lcd_cmd(_LCD_CLEAR);
 }



}
void menu(int kpiss){

 cuen=19;
 kpi=0;
 pun=0;
 rnd=1;

 switch (kpiss)
 {

 case 12:
 do {
 Lcd_out(1,1,"Presdsa");
 kpiss = Keypad_Key_Click();
 }while (!kpiss);
 switch (kpiss)
 {
 case 1:
 kpi = 52;
 Lcd_out(1,1,"Presiona boton..");
 CustomChar1(2,1);
 lcd_out(2,2,"<{RUN!!RUN!!}");
 break;
 case 2:
 kpi = 52;
 break;
 }

 do
 kpi = Keypad_Key_Click();
 while (!kpi);
 switch (kpi)
 {
 case 1:
 kpi = 55;
 aux=aux++;
 break;
 }



 while (1){





 sonido_stop();
 lcd_out(1,5, "L=");
 inttostr(pun, sc);
 lcd_out(1,8, sc);




 do {
 sonido_stop1(18);
 kpi = Keypad_Key_Click();

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


}
 break;
 default:

 kpi = 47;
 while(1)

 {

for(iii=0;iii<2;iii++)

 {

Lcd_Out(1,1,text10);

Lcd_Cmd(_LCD_SHIFT_RIGHT);

delay_ms(200);




 }

Lcd_Cmd(_LCD_CURSOR_OFF);

Lcd_Cmd(_LCD_RETURN_HOME);


}

 break;
 case 12:
 lcd_cmd(_LCD_CLEAR);
 lcd_out(2,1, "Elija...");
 delay_ms(1500);
 }




}

void main() {


 kpi = 0;


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


 do {

 npe = Keypad_Key_Click();
 }while (!npe);
 switch (npe)
 {
 case 3:
 npe = 12;
 menu(npe);
 break;
 case 7:
 npe = 13;
 menu(npe);
 break;
 case 16:
 npe = 16;
 menu(npe);
 break;
 case 11:
 npe = 11;
 menu(npe);
 break;
 }
}
