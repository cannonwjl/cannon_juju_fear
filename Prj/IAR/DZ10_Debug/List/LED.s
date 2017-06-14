///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      11/Jun/2017  21:36:23
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  C:\Users\WJL-PC\Desktop\Car\Drivers\LED\LED.C
//    Command line =  
//        -f C:\Users\WJL-PC\AppData\Local\Temp\EWA3E3.tmp
//        (C:\Users\WJL-PC\Desktop\Car\Drivers\LED\LED.C -D DEBUG -D
//        ARM_MATH_CM4 -D MK60DZ10 -lA
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\DZ10_Debug\List -o
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\DZ10_Debug\Obj --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e
//        --char_is_signed --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Full.h" -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\App\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\App\Inc\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Board\Inc\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Chip\inc\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Chip\inc\IAR\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Chip\inc\kinetis\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Lib\CMSIS\Inc\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Lib\FatFs\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Lib\USB\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\All_Init\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\OLED_NEW\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\OLED\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\lptmr\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\IIC_Angle\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\ZLG_GUI\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\key\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\Led\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\UI\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\Control\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\Search\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\Fuzzy\ -I
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\..\..\Drivers\BianMaqi\ -On -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.0\arm\CMSIS\Include\" -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  C:\Users\WJL-PC\Desktop\Car\Prj\IAR\DZ10_Debug\List\LED.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "1"
        RTMODEL "__dlib_full_locale_support", "1"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Beep_Software_Button
        EXTERN gpio_init

        PUBLIC BEEP_TIMES
        PUBLIC Beep
        PUBLIC Beep_A
        PUBLIC Key_Beep
        PUBLIC Led
        PUBLIC LedBeep_init
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// C:\Users\WJL-PC\Desktop\Car\Drivers\LED\LED.C
//    1 //#include  "MK60_gpio.h"      //IO口操作
//    2 //#include  "common.h"
//    3 
//    4 #include  "LED.H"
//    5 #include "All_Init.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6 int  BEEP_TIMES=0;
BEEP_TIMES:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function LedBeep_init
        THUMB
//    7 void LedBeep_init(void)
//    8 {  
LedBeep_init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//    9 	gpio_init (PTC2, GPO,1);//LED
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+66
          CFI FunCall gpio_init
        BL       gpio_init
//   10 	gpio_init (PTC3, GPO,0);//BBB
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+67
          CFI FunCall gpio_init
        BL       gpio_init
//   11 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock0
//   12 
//   13 //对灯操作 State 1开灯，State 0关灯

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function Led
          CFI NoCalls
        THUMB
//   14 void Led(int State)
//   15 {
//   16 return ;
Led:
        BX       LR               ;; return
//   17 }
          CFI EndBlock cfiBlock1
//   18 
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Key_Beep
          CFI NoCalls
        THUMB
//   20 void Key_Beep(int Times)
//   21 {
//   22   if(Times<=0||Beep_Software_Button==1)
Key_Beep:
        CMP      R0,#+1
        BLT.N    ??Key_Beep_0
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+0]
        CMP      R1,#+1
        BNE.N    ??Key_Beep_1
//   23     BEEP_OFF;
??Key_Beep_0:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable3_1  ;; 0x43fe100c
        STR      R1,[R2, #+0]
        B.N      ??Key_Beep_2
//   24   else
//   25 //  if(Debug_Button_KEY_BEEP)
//   26   BEEP_TIMES=Times;
??Key_Beep_1:
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   27 return ;
??Key_Beep_2:
        BX       LR               ;; return
//   28 
//   29 }
          CFI EndBlock cfiBlock2
//   30 
//   31 
//   32 
//   33 //对蜂鸣器操作

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function Beep
          CFI NoCalls
        THUMB
//   34 void Beep(int Times )
//   35 {
//   36   if(Times<=0)
Beep:
        CMP      R0,#+1
        BGE.N    ??Beep_0
//   37     BEEP_OFF;
        MOVS     R1,#+0
        LDR.N    R2,??DataTable3_1  ;; 0x43fe100c
        STR      R1,[R2, #+0]
//   38   
//   39   BEEP_TIMES=Times;
??Beep_0:
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   40 return ;
        BX       LR               ;; return
//   41 }
          CFI EndBlock cfiBlock3
//   42 
//   43 
//   44 //对蜂鸣器操作

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function Beep_A
          CFI NoCalls
        THUMB
//   45 void Beep_A(int Times )
//   46 {
//   47   if(Times<=0)
Beep_A:
        CMP      R0,#+1
        BGE.N    ??Beep_A_0
//   48     BEEP_OFF;
        MOVS     R1,#+0
        LDR.N    R2,??DataTable3_1  ;; 0x43fe100c
        STR      R1,[R2, #+0]
//   49   
//   50   BEEP_TIMES+=Times;
??Beep_A_0:
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        ADDS     R1,R0,R1
        LDR.N    R2,??DataTable3_2
        STR      R1,[R2, #+0]
//   51   
//   52   if(BEEP_TIMES>100)BEEP_TIMES=100;
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+0]
        CMP      R1,#+101
        BLT.N    ??Beep_A_1
        MOVS     R1,#+100
        LDR.N    R2,??DataTable3_2
        STR      R1,[R2, #+0]
//   53 return ;
??Beep_A_1:
        BX       LR               ;; return
//   54 }
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     Beep_Software_Button

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x43fe100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     BEEP_TIMES

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   55 
//   56 
// 
//   4 bytes in section .bss
// 116 bytes in section .text
// 
// 116 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: 3
