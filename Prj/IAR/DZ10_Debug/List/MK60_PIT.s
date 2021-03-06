///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      11/Jun/2017  21:36:26
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  C:\Users\WJL-PC\Desktop\Car\Chip\src\MK60_PIT.c
//    Command line =  
//        -f C:\Users\WJL-PC\AppData\Local\Temp\EWB04A.tmp
//        (C:\Users\WJL-PC\Desktop\Car\Chip\src\MK60_PIT.c -D DEBUG -D
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
//    List file    =  
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\DZ10_Debug\List\MK60_PIT.s
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

        EXTERN assert_failed

        PUBLIC pit_close
        PUBLIC pit_delay
        PUBLIC pit_init
        PUBLIC pit_time_get
        PUBLIC pit_time_start
        
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
        
// C:\Users\WJL-PC\Desktop\Car\Chip\src\MK60_PIT.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       MK60_pit.c
//   11  * @brief      pit定时器函数库
//   12  * @author     山外科技
//   13  * @version    v5.0
//   14  * @date       2013-08-23
//   15  */
//   16 #include "common.h"
//   17 #include  "MK60_PIT.h"     //周期中断计时器
//   18 
//   19 /*!
//   20  *  @brief      PITn定时中断
//   21  *  @param      PITn        模块号（PIT0~PIT3）
//   22  *  @param      cnt         定时中断时间(单位为bus时钟周期)
//   23  *  @since      v5.0
//   24  *  Sample usage:
//   25                 pit_init(PIT0, 1000);                          //定时 1000 个bus时钟 后中断
//   26                 set_vector_handler(PIT0_VECTORn,pit_hander);   // 设置中断服务函数到中断向量表里
//   27                 enable_irq(PIT0_IRQn);                         // 使能PIT中断
//   28  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function pit_init
        THUMB
//   29 void pit_init(PITn_e pitn, uint32 cnt)
//   30 {
pit_init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R4,R1
//   31     //PIT 用的是 Bus Clock 总线频率
//   32     //溢出计数 = 总线频率 * 时间
//   33 
//   34     ASSERT( cnt > 0 );                          //用断言检测 时间必须不能为 0
        CMP      R4,#+0
        BNE.N    ??pit_init_0
        MOVS     R1,#+34
        LDR.N    R0,??DataTable4
          CFI FunCall assert_failed
        BL       assert_failed
//   35 
//   36     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;          //使能PIT时钟
??pit_init_0:
        LDR.N    R0,??DataTable4_1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable4_1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   37 
//   38     PIT_MCR         = (0
//   39                        //| PIT_MCR_MDIS_MASK       //禁用PIT定时器时钟选择（0表示使能PIT，1表示禁止PIT）
//   40                        //| PIT_MCR_FRZ_MASK        //调试模式下停止运行（0表示继续运行，1表示停止运行）
//   41                       );
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_2  ;; 0x40037000
        STR      R0,[R1, #+0]
//   42 
//   43     PIT_LDVAL(pitn)  = cnt - 1 ;                    //设置溢出中断时间
        SUBS     R0,R4,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        STR      R0,[R1, R2]
//   44 
//   45     PIT_Flag_Clear(pitn);                           //清中断标志位
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+12]
//   46 
//   47     PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;        //禁止PITn定时器（用于清空计数值）
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   48     PIT_TCTRL(pitn)  = ( 0
//   49                          | PIT_TCTRL_TEN_MASK        //使能 PITn定时器
//   50                          | PIT_TCTRL_TIE_MASK        //开PITn中断
//   51                        );
        MOVS     R0,#+3
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   52 
//   53     //enable_irq((int)pitn + PIT0_IRQn);            //开中断
//   54 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock0
//   55 
//   56 /*!
//   57  *  @brief      PITn延时
//   58  *  @param      PITn        模块号（PIT0~PIT3）
//   59  *  @param      cnt         延时时间(单位为bus时钟周期)
//   60  *  @since      v5.0
//   61  *  Sample usage:
//   62                     pit_delay(PIT0, 1000);                         //延时 1000 个bus时钟
//   63  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function pit_delay
        THUMB
//   64 void pit_delay(PITn_e pitn, uint32 cnt)
//   65 {
pit_delay:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R5,R0
        MOVS     R4,R1
//   66     //PIT 用的是 Bus Clock 总线频率
//   67     //溢出计数 = 总线频率 * 时间
//   68 
//   69     ASSERT( cnt > 0 );              //用断言检测 时间必须不能为 0
        CMP      R4,#+0
        BNE.N    ??pit_delay_0
        MOVS     R1,#+69
        LDR.N    R0,??DataTable4
          CFI FunCall assert_failed
        BL       assert_failed
//   70 
//   71     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;                          //使能PIT时钟
??pit_delay_0:
        LDR.N    R0,??DataTable4_1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable4_1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   72 
//   73     PIT_MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );    //使能PIT定时器时钟 ，调试模式下继续运行
        LDR.N    R0,??DataTable4_2  ;; 0x40037000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable4_2  ;; 0x40037000
        STR      R0,[R1, #+0]
//   74 
//   75     PIT_TCTRL(pitn) &= ~( PIT_TCTRL_TEN_MASK );                     //禁用PIT ，以便设置加载值生效
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   76 
//   77     PIT_LDVAL(pitn)  = cnt - 1;                                     //设置溢出中断时间
        SUBS     R0,R4,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        STR      R0,[R1, R2]
//   78 
//   79     PIT_Flag_Clear(pitn);                                           //清中断标志位
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+12]
//   80 
//   81     PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;                        //禁止PITn定时器（用于清空计数值）
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   82     PIT_TCTRL(pitn)  = ( 0
//   83                          | PIT_TCTRL_TEN_MASK                        //使能 PITn定时器
//   84                          //| PIT_TCTRL_TIE_MASK                      //开PITn中断
//   85                        );
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//   86 
//   87     while( !(PIT_TFLG(pitn)& PIT_TFLG_TIF_MASK));
??pit_delay_1:
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+31
        BPL.N    ??pit_delay_1
//   88 
//   89     PIT_Flag_Clear(pitn);                                           //清中断标志位
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R1,R5,#+4
        ADD      R0,R0,R1
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R5,R5            ;; SignExt  R5,R5,#+24,#+24
        LSLS     R2,R5,#+4
        ADD      R1,R1,R2
        STR      R0,[R1, #+12]
//   90 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock1
//   91 
//   92 /*!
//   93  *  @brief      PITn计时开始
//   94  *  @param      PITn        模块号（PIT0~PIT3）
//   95  *  @since      v5.0
//   96  *  Sample usage:
//   97                     pit_time_start(PIT0);                          //PIT0计时开始
//   98  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function pit_time_start
          CFI NoCalls
        THUMB
//   99 void pit_time_start(PITn_e pitn)
//  100 {
//  101     //PIT 用的是 Bus Clock 总线频率
//  102     //溢出计数 = 总线频率 * 时间
//  103 
//  104     SIM_SCGC6       |= SIM_SCGC6_PIT_MASK;                          //使能PIT时钟
pit_time_start:
        LDR.N    R1,??DataTable4_1  ;; 0x4004803c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x800000
        LDR.N    R2,??DataTable4_1  ;; 0x4004803c
        STR      R1,[R2, #+0]
//  105 
//  106     PIT_MCR         &= ~(PIT_MCR_MDIS_MASK | PIT_MCR_FRZ_MASK );    //使能PIT定时器时钟 ，调试模式下继续运行
        LDR.N    R1,??DataTable4_2  ;; 0x40037000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        LDR.N    R2,??DataTable4_2  ;; 0x40037000
        STR      R1,[R2, #+0]
//  107 
//  108     PIT_TCTRL(pitn) &= ~( PIT_TCTRL_TEN_MASK );                     //禁用PIT ，以便设置加载值生效
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        ADD      R1,R1,R2
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        ADD      R2,R2,R3
        STR      R1,[R2, #+8]
//  109 
//  110     PIT_LDVAL(pitn)  = ~0;                                          //设置溢出中断时间
        MOVS     R1,#-1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        STR      R1,[R2, R3]
//  111 
//  112     PIT_Flag_Clear(pitn);                                           //清中断标志位
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        ADD      R1,R1,R2
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        ADD      R2,R2,R3
        STR      R1,[R2, #+12]
//  113 
//  114     PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;                        //禁止PITn定时器（用于清空计数值）
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        ADD      R1,R1,R2
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        ADD      R2,R2,R3
        STR      R1,[R2, #+8]
//  115     PIT_TCTRL(pitn)  = ( 0
//  116                          | PIT_TCTRL_TEN_MASK                        //使能 PITn定时器
//  117                          //| PIT_TCTRL_TIE_MASK                      //开PITn中断
//  118                        );
        MOVS     R1,#+1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        ADD      R2,R2,R3
        STR      R1,[R2, #+8]
//  119 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  120 
//  121 /*!
//  122  *  @brief      获取 PITn计时时间(超时时会关闭 定时器)
//  123  *  @param      PITn        模块号（PIT0~PIT3）
//  124  *  @since      v5.0
//  125  *  Sample usage:
//  126                         uint32 time = pit_time_get(PIT0);                         //获取 PITn计时时间
//  127                         if(time != ~0)       //没超时
//  128                         {
//  129                             printf("\n计时时间为：%d us",time*1000/bus_clk_khz);
//  130                         }
//  131  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function pit_time_get
          CFI NoCalls
        THUMB
//  132 uint32 pit_time_get(PITn_e pitn)
//  133 {
pit_time_get:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R1,R0
//  134     uint32 val;
//  135 
//  136     val = (~0) - PIT_CVAL(pitn);
        MOVS     R0,#-1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+4
        ADD      R2,R2,R3
        LDR      R2,[R2, #+4]
        SUBS     R2,R0,R2
//  137 
//  138     if(PIT_TFLG(pitn)& PIT_TFLG_TIF_MASK)                           //判断是否时间超时
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+4
        ADD      R0,R0,R3
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+31
        BPL.N    ??pit_time_get_0
//  139     {
//  140         PIT_Flag_Clear(pitn);                                       //清中断标志位
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+4
        ADD      R0,R0,R3
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        LDR.N    R3,??DataTable4_3  ;; 0x40037100
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+4
        ADD      R3,R3,R4
        STR      R0,[R3, #+12]
//  141         PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;                    //禁止PITn定时器（用于清空计数值）
        LDR.N    R0,??DataTable4_3  ;; 0x40037100
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R3,R1,#+4
        ADD      R0,R0,R3
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R3,??DataTable4_3  ;; 0x40037100
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+4
        ADD      R3,R3,R4
        STR      R0,[R3, #+8]
//  142         return ~0;
        MOVS     R0,#-1
        B.N      ??pit_time_get_1
//  143     }
//  144 
//  145     if(val == (~0))
??pit_time_get_0:
        CMN      R2,#+1
        BNE.N    ??pit_time_get_2
//  146     {
//  147         val--;              //确保 不等于 ~0
        SUBS     R2,R2,#+1
//  148     }
//  149     return val;
??pit_time_get_2:
        MOVS     R0,R2
??pit_time_get_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
//  150 }
          CFI EndBlock cfiBlock3
//  151 
//  152 /*!
//  153  *  @brief      关闭 pit
//  154  *  @param      PITn        模块号（PIT0~PIT3）
//  155  *  @since      v5.0
//  156  *  Sample usage:
//  157                         pit_close(PIT0);                         //关闭PIT
//  158  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function pit_close
          CFI NoCalls
        THUMB
//  159 void pit_close(PITn_e pitn)
//  160 {
//  161     PIT_Flag_Clear(pitn);                                       //清中断标志位
pit_close:
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        ADD      R1,R1,R2
        LDR      R1,[R1, #+12]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        ADD      R2,R2,R3
        STR      R1,[R2, #+12]
//  162     PIT_TCTRL(pitn) &= ~ PIT_TCTRL_TEN_MASK;                    //禁止PITn定时器（用于清空计数值）
        LDR.N    R1,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R2,R0,#+4
        ADD      R1,R1,R2
        LDR      R1,[R1, #+8]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR.N    R2,??DataTable4_3  ;; 0x40037100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSLS     R3,R0,#+4
        ADD      R2,R2,R3
        STR      R1,[R2, #+8]
//  163 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40037000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40037100

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "C:\\Users\\WJL-PC\\Desktop\\Car\\Chip\\src\\MK60_PIT.c"

        END
// 
//  48 bytes in section .rodata
// 574 bytes in section .text
// 
// 574 bytes of CODE  memory
//  48 bytes of CONST memory
//
//Errors: none
//Warnings: none
