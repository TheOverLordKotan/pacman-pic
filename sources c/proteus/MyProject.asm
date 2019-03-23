
_CustomChar1:

;MyProject.c,57 :: 		void CustomChar1(char pos_row, char pos_char) {
;MyProject.c,59 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,60 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
	CLRF       CustomChar1_i_L0+0
L_CustomChar10:
	MOVF       CustomChar1_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar11
	MOVF       CustomChar1_i_L0+0, 0
	ADDLW      _character1+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character1+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar1_i_L0+0, 1
	GOTO       L_CustomChar10
L_CustomChar11:
;MyProject.c,61 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,62 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_CustomChar1_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar1_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,63 :: 		}
L_end_CustomChar1:
	RETURN
; end of _CustomChar1

_CustomChar2:

;MyProject.c,69 :: 		void CustomChar2(char pos_row, char pos_char) {
;MyProject.c,72 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,73 :: 		for (i = 0; i<=7; i++) //Lcd_Chr_CP(character2[i]);
	CLRF       CustomChar2_i_L0+0
L_CustomChar23:
	MOVF       CustomChar2_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar24
;MyProject.c,74 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,73 :: 		for (i = 0; i<=7; i++) //Lcd_Chr_CP(character2[i]);
	INCF       CustomChar2_i_L0+0, 1
;MyProject.c,74 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	GOTO       L_CustomChar23
L_CustomChar24:
;MyProject.c,75 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_CustomChar2_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar2_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,76 :: 		}
L_end_CustomChar2:
	RETURN
; end of _CustomChar2

_CustomChar3:

;MyProject.c,82 :: 		void CustomChar3(char pos_row, char pos_char) {
;MyProject.c,85 :: 		Lcd_Cmd(64);
	MOVLW      64
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,86 :: 		for (i = 0; i<=7; i++) //Lcd_Chr_CP(character3[i]);
	CLRF       CustomChar3_i_L0+0
L_CustomChar36:
	MOVF       CustomChar3_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar37
;MyProject.c,87 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,86 :: 		for (i = 0; i<=7; i++) //Lcd_Chr_CP(character3[i]);
	INCF       CustomChar3_i_L0+0, 1
;MyProject.c,87 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	GOTO       L_CustomChar36
L_CustomChar37:
;MyProject.c,88 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF       FARG_CustomChar3_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar3_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	CLRF       FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,89 :: 		}
L_end_CustomChar3:
	RETURN
; end of _CustomChar3

_CustomChar4:

;MyProject.c,94 :: 		void CustomChar4(char pos_row, char pos_char) {
;MyProject.c,96 :: 		Lcd_Cmd(72);
	MOVLW      72
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,97 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
	CLRF       CustomChar4_i_L0+0
L_CustomChar49:
	MOVF       CustomChar4_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar410
	MOVF       CustomChar4_i_L0+0, 0
	ADDLW      _character4+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character4+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar4_i_L0+0, 1
	GOTO       L_CustomChar49
L_CustomChar410:
;MyProject.c,98 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,99 :: 		Lcd_Chr(pos_row, pos_char, 1);
	MOVF       FARG_CustomChar4_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar4_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,100 :: 		}
L_end_CustomChar4:
	RETURN
; end of _CustomChar4

_CustomChar5:

;MyProject.c,105 :: 		void CustomChar5(char pos_row, char pos_char) {
;MyProject.c,108 :: 		Lcd_Cmd(80);
	MOVLW      80
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,110 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
	CLRF       CustomChar5_i_L0+0
L_CustomChar512:
	MOVF       CustomChar5_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar513
	MOVF       CustomChar5_i_L0+0, 0
	ADDLW      _character5+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character5+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar5_i_L0+0, 1
	GOTO       L_CustomChar512
L_CustomChar513:
;MyProject.c,111 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,112 :: 		Lcd_Chr(pos_row, pos_char, 2);
	MOVF       FARG_CustomChar5_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar5_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,113 :: 		}
L_end_CustomChar5:
	RETURN
; end of _CustomChar5

_CustomChar6:

;MyProject.c,117 :: 		void CustomChar6(char pos_row, char pos_char) {
;MyProject.c,119 :: 		Lcd_Cmd(88);
	MOVLW      88
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,120 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
	CLRF       CustomChar6_i_L0+0
L_CustomChar615:
	MOVF       CustomChar6_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar616
	MOVF       CustomChar6_i_L0+0, 0
	ADDLW      _character6+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character6+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar6_i_L0+0, 1
	GOTO       L_CustomChar615
L_CustomChar616:
;MyProject.c,121 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,122 :: 		Lcd_Chr(pos_row, pos_char, 3);
	MOVF       FARG_CustomChar6_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar6_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,123 :: 		}
L_end_CustomChar6:
	RETURN
; end of _CustomChar6

_CustomChar7:

;MyProject.c,128 :: 		void CustomChar7(char pos_row, char pos_char) {
;MyProject.c,130 :: 		Lcd_Cmd(88);
	MOVLW      88
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,131 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
	CLRF       CustomChar7_i_L0+0
L_CustomChar718:
	MOVF       CustomChar7_i_L0+0, 0
	SUBLW      7
	BTFSS      STATUS+0, 0
	GOTO       L_CustomChar719
	MOVF       CustomChar7_i_L0+0, 0
	ADDLW      _character7+0
	MOVWF      R0+0
	MOVLW      hi_addr(_character7+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
	INCF       CustomChar7_i_L0+0, 1
	GOTO       L_CustomChar718
L_CustomChar719:
;MyProject.c,132 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,133 :: 		Lcd_Chr(pos_row, pos_char, 3);
	MOVF       FARG_CustomChar7_pos_row+0, 0
	MOVWF      FARG_Lcd_Chr_row+0
	MOVF       FARG_CustomChar7_pos_char+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      3
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,134 :: 		}
L_end_CustomChar7:
	RETURN
; end of _CustomChar7

_vel_juego:

;MyProject.c,135 :: 		void vel_juego(){
;MyProject.c,137 :: 		if (pun<=10){                                     //velocidad del ciclo
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _pun+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego132
	MOVF       _pun+0, 0
	SUBLW      10
L__vel_juego132:
	BTFSS      STATUS+0, 0
	GOTO       L_vel_juego21
;MyProject.c,138 :: 		delay_ms(200);                                  ////va aumentabndo la velocidad mientas aunmemnta la puntuacion "pun"
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_vel_juego22:
	DECFSZ     R13+0, 1
	GOTO       L_vel_juego22
	DECFSZ     R12+0, 1
	GOTO       L_vel_juego22
	DECFSZ     R11+0, 1
	GOTO       L_vel_juego22
;MyProject.c,139 :: 		}
L_vel_juego21:
;MyProject.c,140 :: 		if (pun>10 && pun<20){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _pun+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego133
	MOVF       _pun+0, 0
	SUBLW      10
L__vel_juego133:
	BTFSC      STATUS+0, 0
	GOTO       L_vel_juego25
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego134
	MOVLW      20
	SUBWF      _pun+0, 0
L__vel_juego134:
	BTFSC      STATUS+0, 0
	GOTO       L_vel_juego25
L__vel_juego120:
;MyProject.c,141 :: 		delay_ms(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_vel_juego26:
	DECFSZ     R13+0, 1
	GOTO       L_vel_juego26
	DECFSZ     R12+0, 1
	GOTO       L_vel_juego26
	DECFSZ     R11+0, 1
	GOTO       L_vel_juego26
;MyProject.c,142 :: 		}
L_vel_juego25:
;MyProject.c,143 :: 		if (pun>=20 && pun<30){
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego135
	MOVLW      20
	SUBWF      _pun+0, 0
L__vel_juego135:
	BTFSS      STATUS+0, 0
	GOTO       L_vel_juego29
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego136
	MOVLW      30
	SUBWF      _pun+0, 0
L__vel_juego136:
	BTFSC      STATUS+0, 0
	GOTO       L_vel_juego29
L__vel_juego119:
;MyProject.c,144 :: 		delay_ms(80);
	MOVLW      208
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_vel_juego30:
	DECFSZ     R13+0, 1
	GOTO       L_vel_juego30
	DECFSZ     R12+0, 1
	GOTO       L_vel_juego30
	NOP
	NOP
;MyProject.c,145 :: 		}
L_vel_juego29:
;MyProject.c,146 :: 		if (pun>=30 && pun<50){
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego137
	MOVLW      30
	SUBWF      _pun+0, 0
L__vel_juego137:
	BTFSS      STATUS+0, 0
	GOTO       L_vel_juego33
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego138
	MOVLW      50
	SUBWF      _pun+0, 0
L__vel_juego138:
	BTFSC      STATUS+0, 0
	GOTO       L_vel_juego33
L__vel_juego118:
;MyProject.c,147 :: 		delay_ms(70);
	MOVLW      182
	MOVWF      R12+0
	MOVLW      208
	MOVWF      R13+0
L_vel_juego34:
	DECFSZ     R13+0, 1
	GOTO       L_vel_juego34
	DECFSZ     R12+0, 1
	GOTO       L_vel_juego34
	NOP
;MyProject.c,148 :: 		}
L_vel_juego33:
;MyProject.c,149 :: 		if (pun>=50 && pun<100){
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego139
	MOVLW      50
	SUBWF      _pun+0, 0
L__vel_juego139:
	BTFSS      STATUS+0, 0
	GOTO       L_vel_juego37
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego140
	MOVLW      100
	SUBWF      _pun+0, 0
L__vel_juego140:
	BTFSC      STATUS+0, 0
	GOTO       L_vel_juego37
L__vel_juego117:
;MyProject.c,150 :: 		delay_ms(60);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_vel_juego38:
	DECFSZ     R13+0, 1
	GOTO       L_vel_juego38
	DECFSZ     R12+0, 1
	GOTO       L_vel_juego38
;MyProject.c,151 :: 		}
L_vel_juego37:
;MyProject.c,152 :: 		if (pun<100){
	MOVLW      128
	XORWF      _pun+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__vel_juego141
	MOVLW      100
	SUBWF      _pun+0, 0
L__vel_juego141:
	BTFSC      STATUS+0, 0
	GOTO       L_vel_juego39
;MyProject.c,153 :: 		delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_vel_juego40:
	DECFSZ     R13+0, 1
	GOTO       L_vel_juego40
	DECFSZ     R12+0, 1
	GOTO       L_vel_juego40
	NOP
	NOP
;MyProject.c,154 :: 		}
L_vel_juego39:
;MyProject.c,155 :: 		}
L_end_vel_juego:
	RETURN
; end of _vel_juego

_sonido_pun:

;MyProject.c,159 :: 		void sonido_pun(){
;MyProject.c,160 :: 		PWM1_Init(800);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      156
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;MyProject.c,161 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;MyProject.c,162 :: 		PWM1_Set_Duty(128);
	MOVLW      128
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,164 :: 		}
L_end_sonido_pun:
	RETURN
; end of _sonido_pun

_sonido_fin:

;MyProject.c,166 :: 		void sonido_fin(){
;MyProject.c,167 :: 		PWM1_Init(500);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;MyProject.c,168 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;MyProject.c,169 :: 		PWM1_Set_Duty(64);
	MOVLW      64
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,170 :: 		}
L_end_sonido_fin:
	RETURN
; end of _sonido_fin

_sonido_stop:

;MyProject.c,172 :: 		void sonido_stop(){
;MyProject.c,173 :: 		pwm1_stop();
	CALL       _PWM1_Stop+0
;MyProject.c,175 :: 		}
L_end_sonido_stop:
	RETURN
; end of _sonido_stop

_sonido_stop1:

;MyProject.c,176 :: 		void sonido_stop1(int kpis){
;MyProject.c,177 :: 		switch (kpis)
	GOTO       L_sonido_stop141
;MyProject.c,180 :: 		case 56:
L_sonido_stop143:
;MyProject.c,181 :: 		pas=1;
	MOVLW      1
	MOVWF      _pas+0
	MOVLW      0
	MOVWF      _pas+1
;MyProject.c,182 :: 		if (st==0){
	MOVLW      0
	XORWF      _st+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1146
	MOVLW      0
	XORWF      _st+0, 0
L__sonido_stop1146:
	BTFSS      STATUS+0, 2
	GOTO       L_sonido_stop144
;MyProject.c,183 :: 		sonido_pun();      ///reproduice sonido de salto
	CALL       _sonido_pun+0
;MyProject.c,184 :: 		}
L_sonido_stop144:
;MyProject.c,185 :: 		st++;
	INCF       _st+0, 1
	BTFSC      STATUS+0, 2
	INCF       _st+1, 1
;MyProject.c,187 :: 		if (st>4){       ////si ha estado arriba por mas de tres ciclos automaticamente baja y el contador st vuelve a cero
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _st+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1147
	MOVF       _st+0, 0
	SUBLW      4
L__sonido_stop1147:
	BTFSC      STATUS+0, 0
	GOTO       L_sonido_stop145
;MyProject.c,188 :: 		st=0;
	CLRF       _st+0
	CLRF       _st+1
;MyProject.c,189 :: 		}
L_sonido_stop145:
;MyProject.c,190 :: 		break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
	GOTO       L_sonido_stop142
;MyProject.c,191 :: 		case 53:
L_sonido_stop146:
;MyProject.c,192 :: 		pas=0;
	CLRF       _pas+0
	CLRF       _pas+1
;MyProject.c,193 :: 		st=0;
	CLRF       _st+0
	CLRF       _st+1
;MyProject.c,194 :: 		break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
	GOTO       L_sonido_stop142
;MyProject.c,197 :: 		case 52:
L_sonido_stop147:
;MyProject.c,198 :: 		pas =3;
	MOVLW      3
	MOVWF      _pas+0
	MOVLW      0
	MOVWF      _pas+1
;MyProject.c,199 :: 		break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
	GOTO       L_sonido_stop142
;MyProject.c,200 :: 		case 54:
L_sonido_stop148:
;MyProject.c,201 :: 		pas =2;
	MOVLW      2
	MOVWF      _pas+0
	MOVLW      0
	MOVWF      _pas+1
;MyProject.c,202 :: 		break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
	GOTO       L_sonido_stop142
;MyProject.c,203 :: 		default:
L_sonido_stop149:
;MyProject.c,204 :: 		pas =18;
	MOVLW      18
	MOVWF      _pas+0
	MOVLW      0
	MOVWF      _pas+1
;MyProject.c,205 :: 		break;
	GOTO       L_sonido_stop142
;MyProject.c,206 :: 		}
L_sonido_stop141:
	MOVLW      0
	XORWF      FARG_sonido_stop1_kpis+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1148
	MOVLW      56
	XORWF      FARG_sonido_stop1_kpis+0, 0
L__sonido_stop1148:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop143
	MOVLW      0
	XORWF      FARG_sonido_stop1_kpis+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1149
	MOVLW      53
	XORWF      FARG_sonido_stop1_kpis+0, 0
L__sonido_stop1149:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop146
	MOVLW      0
	XORWF      FARG_sonido_stop1_kpis+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1150
	MOVLW      52
	XORWF      FARG_sonido_stop1_kpis+0, 0
L__sonido_stop1150:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop147
	MOVLW      0
	XORWF      FARG_sonido_stop1_kpis+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1151
	MOVLW      54
	XORWF      FARG_sonido_stop1_kpis+0, 0
L__sonido_stop1151:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop148
	GOTO       L_sonido_stop149
L_sonido_stop142:
;MyProject.c,207 :: 		switch(pas){
	GOTO       L_sonido_stop150
;MyProject.c,208 :: 		case 1:
L_sonido_stop152:
;MyProject.c,210 :: 		dp = 0;
	CLRF       _dp+0
	CLRF       _dp+1
;MyProject.c,211 :: 		CustomChar2(dp,dy);  CustomChar7(1,1); break;        ///dependiend de la variable pas es esl sprite del dinosaurio que se muestra
	CLRF       FARG_CustomChar2_pos_row+0
	MOVF       _dy+0, 0
	MOVWF      FARG_CustomChar2_pos_char+0
	CALL       _CustomChar2+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_row+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_char+0
	CALL       _CustomChar7+0
	GOTO       L_sonido_stop151
;MyProject.c,212 :: 		case 0:
L_sonido_stop153:
;MyProject.c,213 :: 		dp = 1;
	MOVLW      1
	MOVWF      _dp+0
	MOVLW      0
	MOVWF      _dp+1
;MyProject.c,215 :: 		CustomChar3(dp,dy);  CustomChar6(1,1); break;
	MOVLW      1
	MOVWF      FARG_CustomChar3_pos_row+0
	MOVF       _dy+0, 0
	MOVWF      FARG_CustomChar3_pos_char+0
	CALL       _CustomChar3+0
	MOVLW      1
	MOVWF      FARG_CustomChar6_pos_row+0
	MOVLW      1
	MOVWF      FARG_CustomChar6_pos_char+0
	CALL       _CustomChar6+0
	GOTO       L_sonido_stop151
;MyProject.c,216 :: 		case 2:
L_sonido_stop154:
;MyProject.c,217 :: 		dy =dy -1;
	MOVLW      1
	SUBWF      _dy+0, 1
	BTFSS      STATUS+0, 0
	DECF       _dy+1, 1
;MyProject.c,218 :: 		CustomChar2(dp,dy);  CustomChar7(1,1); break;
	MOVF       _dp+0, 0
	MOVWF      FARG_CustomChar2_pos_row+0
	MOVF       _dy+0, 0
	MOVWF      FARG_CustomChar2_pos_char+0
	CALL       _CustomChar2+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_row+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_char+0
	CALL       _CustomChar7+0
	GOTO       L_sonido_stop151
;MyProject.c,219 :: 		case 3:
L_sonido_stop155:
;MyProject.c,220 :: 		dy =dy +1;
	INCF       _dy+0, 1
	BTFSC      STATUS+0, 2
	INCF       _dy+1, 1
;MyProject.c,221 :: 		CustomChar2(dp,dy);  CustomChar7(1,1); break;
	MOVF       _dp+0, 0
	MOVWF      FARG_CustomChar2_pos_row+0
	MOVF       _dy+0, 0
	MOVWF      FARG_CustomChar2_pos_char+0
	CALL       _CustomChar2+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_row+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_char+0
	CALL       _CustomChar7+0
	GOTO       L_sonido_stop151
;MyProject.c,222 :: 		default:  pas=18;
L_sonido_stop156:
	MOVLW      18
	MOVWF      _pas+0
	MOVLW      0
	MOVWF      _pas+1
;MyProject.c,223 :: 		CustomChar2(dp,dy);  CustomChar7(1,1);  break;
	MOVF       _dp+0, 0
	MOVWF      FARG_CustomChar2_pos_row+0
	MOVF       _dy+0, 0
	MOVWF      FARG_CustomChar2_pos_char+0
	CALL       _CustomChar2+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_row+0
	MOVLW      1
	MOVWF      FARG_CustomChar7_pos_char+0
	CALL       _CustomChar7+0
	GOTO       L_sonido_stop151
;MyProject.c,224 :: 		}
L_sonido_stop150:
	MOVLW      0
	XORWF      _pas+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1152
	MOVLW      1
	XORWF      _pas+0, 0
L__sonido_stop1152:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop152
	MOVLW      0
	XORWF      _pas+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1153
	MOVLW      0
	XORWF      _pas+0, 0
L__sonido_stop1153:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop153
	MOVLW      0
	XORWF      _pas+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1154
	MOVLW      2
	XORWF      _pas+0, 0
L__sonido_stop1154:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop154
	MOVLW      0
	XORWF      _pas+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1155
	MOVLW      3
	XORWF      _pas+0, 0
L__sonido_stop1155:
	BTFSC      STATUS+0, 2
	GOTO       L_sonido_stop155
	GOTO       L_sonido_stop156
L_sonido_stop151:
;MyProject.c,230 :: 		if (rnd>=0 && rnd<10){
	MOVLW      128
	XORWF      _rnd+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1156
	MOVLW      0
	SUBWF      _rnd+0, 0
L__sonido_stop1156:
	BTFSS      STATUS+0, 0
	GOTO       L_sonido_stop159
	MOVLW      128
	XORWF      _rnd+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1157
	MOVLW      10
	SUBWF      _rnd+0, 0
L__sonido_stop1157:
	BTFSC      STATUS+0, 0
	GOTO       L_sonido_stop159
L__sonido_stop1123:
;MyProject.c,232 :: 		CustomChar4(2,cuen);              ////imprime un cactus
	MOVLW      2
	MOVWF      FARG_CustomChar4_pos_row+0
	MOVF       _cuen+0, 0
	MOVWF      FARG_CustomChar4_pos_char+0
	CALL       _CustomChar4+0
;MyProject.c,234 :: 		vel_juego();                       ///llama a la funcion de la velocidad de juego
	CALL       _vel_juego+0
;MyProject.c,238 :: 		if (cuen==2 && dp==1){              ////si el dinosaurio coincide en posicion con el cactus pero esta arriba
	MOVLW      0
	XORWF      _cuen+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1158
	MOVLW      2
	XORWF      _cuen+0, 0
L__sonido_stop1158:
	BTFSS      STATUS+0, 2
	GOTO       L_sonido_stop162
	MOVLW      0
	XORWF      _dp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1159
	MOVLW      1
	XORWF      _dp+0, 0
L__sonido_stop1159:
	BTFSS      STATUS+0, 2
	GOTO       L_sonido_stop162
L__sonido_stop1122:
;MyProject.c,239 :: 		pun=pun++;
	INCF       _pun+0, 1
	BTFSC      STATUS+0, 2
	INCF       _pun+1, 1
;MyProject.c,241 :: 		}
L_sonido_stop162:
;MyProject.c,244 :: 		cuen--;                           /////cuenta regresiva del desplazamiento de los cactus, va desde 19 hasta 0
	MOVLW      1
	SUBWF      _cuen+0, 1
	BTFSS      STATUS+0, 0
	DECF       _cuen+1, 1
;MyProject.c,245 :: 		text="Ups!!! U.U       ";           /////mensaje de colision
	MOVLW      ?lstr1_MyProject+0
	MOVWF      _text+0
;MyProject.c,247 :: 		if (cuen==2 && dp==2){            /////si coinciden el dinosaurio y el cactus en la misma posicion el juego termina
	MOVLW      0
	XORWF      _cuen+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1160
	MOVLW      2
	XORWF      _cuen+0, 0
L__sonido_stop1160:
	BTFSS      STATUS+0, 2
	GOTO       L_sonido_stop165
	MOVLW      0
	XORWF      _dp+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1161
	MOVLW      2
	XORWF      _dp+0, 0
L__sonido_stop1161:
	BTFSS      STATUS+0, 2
	GOTO       L_sonido_stop165
L__sonido_stop1121:
;MyProject.c,248 :: 		sonido_fin();                       ///Reproduce sonido
	CALL       _sonido_fin+0
;MyProject.c,249 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sonido_stop166:
	DECFSZ     R13+0, 1
	GOTO       L_sonido_stop166
	DECFSZ     R12+0, 1
	GOTO       L_sonido_stop166
	DECFSZ     R11+0, 1
	GOTO       L_sonido_stop166
	NOP
	NOP
;MyProject.c,250 :: 		sonido_stop();
	CALL       _sonido_stop+0
;MyProject.c,251 :: 		lcd_out(1,1,text);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _text+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,252 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_sonido_stop167:
	DECFSZ     R13+0, 1
	GOTO       L_sonido_stop167
	DECFSZ     R12+0, 1
	GOTO       L_sonido_stop167
	DECFSZ     R11+0, 1
	GOTO       L_sonido_stop167
	NOP
	NOP
;MyProject.c,253 :: 		lcd_out(2,1, "P=");                ////presenta la puntuacion obtenida por 4 segundos
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,254 :: 		lcd_out(2,3,sc);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sc+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,255 :: 		delay_ms(4000);                ///y se resetea el pic despues de un segundo
	MOVLW      41
	MOVWF      R11+0
	MOVLW      150
	MOVWF      R12+0
	MOVLW      127
	MOVWF      R13+0
L_sonido_stop168:
	DECFSZ     R13+0, 1
	GOTO       L_sonido_stop168
	DECFSZ     R12+0, 1
	GOTO       L_sonido_stop168
	DECFSZ     R11+0, 1
	GOTO       L_sonido_stop168
;MyProject.c,256 :: 		}
L_sonido_stop165:
;MyProject.c,258 :: 		if (cuen==0){                   /// si la cuenta del desplazamiento llego a cero vuleve a su valor inicial 19
	MOVLW      0
	XORWF      _cuen+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__sonido_stop1162
	MOVLW      0
	XORWF      _cuen+0, 0
L__sonido_stop1162:
	BTFSS      STATUS+0, 2
	GOTO       L_sonido_stop169
;MyProject.c,259 :: 		cuen=19;
	MOVLW      19
	MOVWF      _cuen+0
	MOVLW      0
	MOVWF      _cuen+1
;MyProject.c,262 :: 		srand(rnd+aux);        //  establece el numero inicial del valor pseudo aleatorio
	MOVF       _aux+0, 0
	ADDWF      _rnd+0, 0
	MOVWF      FARG_srand_x+0
	MOVF       _rnd+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _aux+1, 0
	MOVWF      FARG_srand_x+1
	CALL       _srand+0
;MyProject.c,263 :: 		rnd=(rand()/1000);  // genera el numero pseudo aleatorio y lo divide entre 1000 para obtener solo dos digitos enteros
	CALL       _rand+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _rnd+0
	MOVF       R0+1, 0
	MOVWF      _rnd+1
;MyProject.c,266 :: 		}
L_sonido_stop169:
;MyProject.c,268 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,269 :: 		}///fin del primer if(imprime un solo cactus)
L_sonido_stop159:
;MyProject.c,273 :: 		}
L_end_sonido_stop1:
	RETURN
; end of _sonido_stop1

_menu:

;MyProject.c,274 :: 		void menu(int kpiss){
;MyProject.c,276 :: 		cuen=19;
	MOVLW      19
	MOVWF      _cuen+0
	MOVLW      0
	MOVWF      _cuen+1
;MyProject.c,277 :: 		kpi=0;                               ///inicia la cuenta de desplazamiento en 19
	CLRF       _kpi+0
	CLRF       _kpi+1
;MyProject.c,278 :: 		pun=0;                                   // inicia la puntuacion en 0
	CLRF       _pun+0
	CLRF       _pun+1
;MyProject.c,279 :: 		rnd=1;
	MOVLW      1
	MOVWF      _rnd+0
	MOVLW      0
	MOVWF      _rnd+1
;MyProject.c,281 :: 		switch (kpiss)
	GOTO       L_menu70
;MyProject.c,284 :: 		case 12:
L_menu72:
;MyProject.c,285 :: 		do  {
L_menu73:
;MyProject.c,286 :: 		Lcd_out(1,1,"Presdsa");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,287 :: 		kpiss = Keypad_Key_Click(); // Store key code in kpi variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      FARG_menu_kpiss+0
	CLRF       FARG_menu_kpiss+1
;MyProject.c,288 :: 		}while (!kpiss);
	MOVF       FARG_menu_kpiss+0, 0
	IORWF      FARG_menu_kpiss+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_menu73
;MyProject.c,289 :: 		switch (kpiss)
	GOTO       L_menu76
;MyProject.c,291 :: 		case 1:
L_menu78:
;MyProject.c,292 :: 		kpi = 52;
	MOVLW      52
	MOVWF      _kpi+0
	MOVLW      0
	MOVWF      _kpi+1
;MyProject.c,293 :: 		Lcd_out(1,1,"Presiona boton..");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,294 :: 		CustomChar1(2,1);
	MOVLW      2
	MOVWF      FARG_CustomChar1_pos_row+0
	MOVLW      1
	MOVWF      FARG_CustomChar1_pos_char+0
	CALL       _CustomChar1+0
;MyProject.c,295 :: 		lcd_out(2,2,"<{RUN!!RUN!!}");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,296 :: 		break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
	GOTO       L_menu77
;MyProject.c,297 :: 		case 2:
L_menu79:
;MyProject.c,298 :: 		kpi = 52;
	MOVLW      52
	MOVWF      _kpi+0
	MOVLW      0
	MOVWF      _kpi+1
;MyProject.c,299 :: 		break; // 4
	GOTO       L_menu77
;MyProject.c,300 :: 		}
L_menu76:
	MOVLW      0
	XORWF      FARG_menu_kpiss+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu164
	MOVLW      1
	XORWF      FARG_menu_kpiss+0, 0
L__menu164:
	BTFSC      STATUS+0, 2
	GOTO       L_menu78
	MOVLW      0
	XORWF      FARG_menu_kpiss+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu165
	MOVLW      2
	XORWF      FARG_menu_kpiss+0, 0
L__menu165:
	BTFSC      STATUS+0, 2
	GOTO       L_menu79
L_menu77:
;MyProject.c,302 :: 		do
L_menu80:
;MyProject.c,303 :: 		kpi = Keypad_Key_Click(); // Store key code in kpi variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kpi+0
	CLRF       _kpi+1
;MyProject.c,304 :: 		while (!kpi);
	MOVF       _kpi+0, 0
	IORWF      _kpi+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_menu80
;MyProject.c,305 :: 		switch (kpi)
	GOTO       L_menu83
;MyProject.c,307 :: 		case 1:
L_menu85:
;MyProject.c,308 :: 		kpi = 55;
	MOVLW      55
	MOVWF      _kpi+0
	MOVLW      0
	MOVWF      _kpi+1
;MyProject.c,309 :: 		aux=aux++;
	INCF       _aux+0, 1
	BTFSC      STATUS+0, 2
	INCF       _aux+1, 1
;MyProject.c,310 :: 		break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
	GOTO       L_menu84
;MyProject.c,311 :: 		}
L_menu83:
	MOVLW      0
	XORWF      _kpi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu166
	MOVLW      1
	XORWF      _kpi+0, 0
L__menu166:
	BTFSC      STATUS+0, 2
	GOTO       L_menu85
L_menu84:
;MyProject.c,315 :: 		while (1){
L_menu86:
;MyProject.c,321 :: 		sonido_stop();
	CALL       _sonido_stop+0
;MyProject.c,322 :: 		lcd_out(1,5, "L=");               ////miestra la cantidad de cactus saltados
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,323 :: 		inttostr(pun, sc);             /////convierte la puntuacion en str
	MOVF       _pun+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _pun+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _sc+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;MyProject.c,324 :: 		lcd_out(1,8, sc);              //// imprime la puntuacion
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      8
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sc+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,329 :: 		do  {
L_menu88:
;MyProject.c,330 :: 		sonido_stop1(18);
	MOVLW      18
	MOVWF      FARG_sonido_stop1_kpis+0
	MOVLW      0
	MOVWF      FARG_sonido_stop1_kpis+1
	CALL       _sonido_stop1+0
;MyProject.c,331 :: 		kpi = Keypad_Key_Click(); // Store key code in kpi variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kpi+0
	CLRF       _kpi+1
;MyProject.c,333 :: 		}while (!kpi);
	MOVF       _kpi+0, 0
	IORWF      _kpi+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_menu88
;MyProject.c,334 :: 		if (kpi == 5) {
	MOVLW      0
	XORWF      _kpi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu167
	MOVLW      5
	XORWF      _kpi+0, 0
L__menu167:
	BTFSS      STATUS+0, 2
	GOTO       L_menu91
;MyProject.c,335 :: 		sonido_stop1(56);
	MOVLW      56
	MOVWF      FARG_sonido_stop1_kpis+0
	MOVLW      0
	MOVWF      FARG_sonido_stop1_kpis+1
	CALL       _sonido_stop1+0
;MyProject.c,336 :: 		}
L_menu91:
;MyProject.c,337 :: 		if (kpi==6) {
	MOVLW      0
	XORWF      _kpi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu168
	MOVLW      6
	XORWF      _kpi+0, 0
L__menu168:
	BTFSS      STATUS+0, 2
	GOTO       L_menu92
;MyProject.c,338 :: 		sonido_stop1(53);
	MOVLW      53
	MOVWF      FARG_sonido_stop1_kpis+0
	MOVLW      0
	MOVWF      FARG_sonido_stop1_kpis+1
	CALL       _sonido_stop1+0
;MyProject.c,339 :: 		}
L_menu92:
;MyProject.c,340 :: 		if (kpi==2) {
	MOVLW      0
	XORWF      _kpi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu169
	MOVLW      2
	XORWF      _kpi+0, 0
L__menu169:
	BTFSS      STATUS+0, 2
	GOTO       L_menu93
;MyProject.c,341 :: 		sonido_stop1(54);
	MOVLW      54
	MOVWF      FARG_sonido_stop1_kpis+0
	MOVLW      0
	MOVWF      FARG_sonido_stop1_kpis+1
	CALL       _sonido_stop1+0
;MyProject.c,342 :: 		}
L_menu93:
;MyProject.c,343 :: 		if (kpi==10) {
	MOVLW      0
	XORWF      _kpi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu170
	MOVLW      10
	XORWF      _kpi+0, 0
L__menu170:
	BTFSS      STATUS+0, 2
	GOTO       L_menu94
;MyProject.c,344 :: 		sonido_stop1(52);
	MOVLW      52
	MOVWF      FARG_sonido_stop1_kpis+0
	MOVLW      0
	MOVWF      FARG_sonido_stop1_kpis+1
	CALL       _sonido_stop1+0
;MyProject.c,345 :: 		}
L_menu94:
;MyProject.c,346 :: 		if (kpi==8) {
	MOVLW      0
	XORWF      _kpi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu171
	MOVLW      8
	XORWF      _kpi+0, 0
L__menu171:
	BTFSS      STATUS+0, 2
	GOTO       L_menu95
;MyProject.c,347 :: 		dy= 2;
	MOVLW      2
	MOVWF      _dy+0
	MOVLW      0
	MOVWF      _dy+1
;MyProject.c,348 :: 		dp=2;
	MOVLW      2
	MOVWF      _dp+0
	MOVLW      0
	MOVWF      _dp+1
;MyProject.c,349 :: 		}
L_menu95:
;MyProject.c,352 :: 		} ///fin de while
	GOTO       L_menu86
;MyProject.c,354 :: 		default:
L_menu96:
;MyProject.c,356 :: 		kpi = 47;
	MOVLW      47
	MOVWF      _kpi+0
	MOVLW      0
	MOVWF      _kpi+1
;MyProject.c,357 :: 		while(1)
L_menu97:
;MyProject.c,361 :: 		for(iii=0;iii<2;iii++)
	CLRF       _iii+0
	CLRF       _iii+1
L_menu99:
	MOVLW      128
	XORWF      _iii+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu172
	MOVLW      2
	SUBWF      _iii+0, 0
L__menu172:
	BTFSC      STATUS+0, 0
	GOTO       L_menu100
;MyProject.c,365 :: 		Lcd_Out(1,1,text10);                                        // Write text in first row, first column
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _text10+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,367 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);                 // Move text to the right 14 times
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,369 :: 		delay_ms(200);                                 //shifting speed
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_menu102:
	DECFSZ     R13+0, 1
	GOTO       L_menu102
	DECFSZ     R12+0, 1
	GOTO       L_menu102
	DECFSZ     R11+0, 1
	GOTO       L_menu102
;MyProject.c,361 :: 		for(iii=0;iii<2;iii++)
	INCF       _iii+0, 1
	BTFSC      STATUS+0, 2
	INCF       _iii+1, 1
;MyProject.c,374 :: 		}
	GOTO       L_menu99
L_menu100:
;MyProject.c,376 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,378 :: 		Lcd_Cmd(_LCD_RETURN_HOME);                           // returning to home position
	MOVLW      2
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,381 :: 		}
	GOTO       L_menu97
;MyProject.c,384 :: 		case  12:
L_menu103:
;MyProject.c,385 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,386 :: 		lcd_out(2,1, "Elija...");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,387 :: 		delay_ms(1500);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_menu104:
	DECFSZ     R13+0, 1
	GOTO       L_menu104
	DECFSZ     R12+0, 1
	GOTO       L_menu104
	DECFSZ     R11+0, 1
	GOTO       L_menu104
	NOP
	NOP
;MyProject.c,388 :: 		}
	GOTO       L_menu71
L_menu70:
	MOVLW      0
	XORWF      FARG_menu_kpiss+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu173
	MOVLW      12
	XORWF      FARG_menu_kpiss+0, 0
L__menu173:
	BTFSC      STATUS+0, 2
	GOTO       L_menu72
	MOVLW      0
	XORWF      FARG_menu_kpiss+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__menu174
	MOVLW      12
	XORWF      FARG_menu_kpiss+0, 0
L__menu174:
	BTFSC      STATUS+0, 2
	GOTO       L_menu103
	GOTO       L_menu96
L_menu71:
;MyProject.c,393 :: 		}
L_end_menu:
	RETURN
; end of _menu

_main:

;MyProject.c,395 :: 		void main() {
;MyProject.c,398 :: 		kpi = 0; // Reset key code variable
	CLRF       _kpi+0
	CLRF       _kpi+1
;MyProject.c,401 :: 		trisd=0x07;
	MOVLW      7
	MOVWF      TRISD+0
;MyProject.c,402 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,404 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,406 :: 		npe = 11;
	MOVLW      11
	MOVWF      _npe+0
	MOVLW      0
	MOVWF      _npe+1
;MyProject.c,407 :: 		npe = 0;
	CLRF       _npe+0
	CLRF       _npe+1
;MyProject.c,408 :: 		lcd_out(1,1, "Holaaaa");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,409 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main105:
	DECFSZ     R13+0, 1
	GOTO       L_main105
	DECFSZ     R12+0, 1
	GOTO       L_main105
	NOP
	NOP
;MyProject.c,410 :: 		lcd_out(2,1, "A.init juego");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,411 :: 		delay_ms(30);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_main106:
	DECFSZ     R13+0, 1
	GOTO       L_main106
	DECFSZ     R12+0, 1
	GOTO       L_main106
;MyProject.c,412 :: 		lcd_cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,413 :: 		lcd_out(1,1, "b. creditos");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,414 :: 		delay_ms(40);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main107:
	DECFSZ     R13+0, 1
	GOTO       L_main107
	DECFSZ     R12+0, 1
	GOTO       L_main107
	NOP
;MyProject.c,417 :: 		do  {
L_main108:
;MyProject.c,419 :: 		npe = Keypad_Key_Click(); // Store key code in kpi variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _npe+0
	CLRF       _npe+1
;MyProject.c,420 :: 		}while (!npe);
	MOVF       _npe+0, 0
	IORWF      _npe+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main108
;MyProject.c,421 :: 		switch (npe)
	GOTO       L_main111
;MyProject.c,423 :: 		case 3:
L_main113:
;MyProject.c,424 :: 		npe = 12;
	MOVLW      12
	MOVWF      _npe+0
	MOVLW      0
	MOVWF      _npe+1
;MyProject.c,425 :: 		menu(npe);
	MOVLW      12
	MOVWF      FARG_menu_kpiss+0
	MOVLW      0
	MOVWF      FARG_menu_kpiss+1
	CALL       _menu+0
;MyProject.c,426 :: 		break; // 4
	GOTO       L_main112
;MyProject.c,427 :: 		case 7:
L_main114:
;MyProject.c,428 :: 		npe = 13;
	MOVLW      13
	MOVWF      _npe+0
	MOVLW      0
	MOVWF      _npe+1
;MyProject.c,429 :: 		menu(npe);
	MOVLW      13
	MOVWF      FARG_menu_kpiss+0
	MOVLW      0
	MOVWF      FARG_menu_kpiss+1
	CALL       _menu+0
;MyProject.c,430 :: 		break; // 4
	GOTO       L_main112
;MyProject.c,431 :: 		case 16:
L_main115:
;MyProject.c,432 :: 		npe = 16;
	MOVLW      16
	MOVWF      _npe+0
	MOVLW      0
	MOVWF      _npe+1
;MyProject.c,433 :: 		menu(npe);
	MOVLW      16
	MOVWF      FARG_menu_kpiss+0
	MOVLW      0
	MOVWF      FARG_menu_kpiss+1
	CALL       _menu+0
;MyProject.c,434 :: 		break; // 7 - Cmp kpi with equivalent ASCII code of 7, break if equal
	GOTO       L_main112
;MyProject.c,435 :: 		case 11:
L_main116:
;MyProject.c,436 :: 		npe = 11;
	MOVLW      11
	MOVWF      _npe+0
	MOVLW      0
	MOVWF      _npe+1
;MyProject.c,437 :: 		menu(npe);
	MOVLW      11
	MOVWF      FARG_menu_kpiss+0
	MOVLW      0
	MOVWF      FARG_menu_kpiss+1
	CALL       _menu+0
;MyProject.c,438 :: 		break;
	GOTO       L_main112
;MyProject.c,439 :: 		}
L_main111:
	MOVLW      0
	XORWF      _npe+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main176
	MOVLW      3
	XORWF      _npe+0, 0
L__main176:
	BTFSC      STATUS+0, 2
	GOTO       L_main113
	MOVLW      0
	XORWF      _npe+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main177
	MOVLW      7
	XORWF      _npe+0, 0
L__main177:
	BTFSC      STATUS+0, 2
	GOTO       L_main114
	MOVLW      0
	XORWF      _npe+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main178
	MOVLW      16
	XORWF      _npe+0, 0
L__main178:
	BTFSC      STATUS+0, 2
	GOTO       L_main115
	MOVLW      0
	XORWF      _npe+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main179
	MOVLW      11
	XORWF      _npe+0, 0
L__main179:
	BTFSC      STATUS+0, 2
	GOTO       L_main116
L_main112:
;MyProject.c,440 :: 		} /// fin de main
L_end_main:
	GOTO       $+0
; end of _main
