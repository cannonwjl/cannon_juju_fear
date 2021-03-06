///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      11/Jun/2017  21:36:27
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  C:\Users\WJL-PC\Desktop\Car\Chip\src\MK60_port.c
//    Command line =  
//        -f C:\Users\WJL-PC\AppData\Local\Temp\EWB136.tmp
//        (C:\Users\WJL-PC\Desktop\Car\Chip\src\MK60_port.c -D DEBUG -D
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
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\DZ10_Debug\List\MK60_port.s
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

        PUBLIC PORTX
        PUBLIC port_init
        PUBLIC port_init_NoALT
        PUBLIC porta_handler
        
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
        
// C:\Users\WJL-PC\Desktop\Car\Chip\src\MK60_port.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       MK60_port.c
//   11  * @brief      port复用配置和各种功能配置
//   12  * @author     山外科技
//   13  * @version    v5.1
//   14  * @date       2014-04-25
//   15  */
//   16 
//   17 #include "common.h"
//   18 #include "MK60_port.h"
//   19 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   20 PORT_MemMapPtr PORTX[PTX_MAX] = {PORTA_BASE_PTR, PORTB_BASE_PTR, PORTC_BASE_PTR, PORTD_BASE_PTR, PORTE_BASE_PTR};
PORTX:
        DC32 40049000H, 4004A000H, 4004B000H, 4004C000H, 4004D000H
//   21 
//   22 /*!
//   23  *  @brief      PORT初始化
//   24  *  @param      PTxn    端口
//   25  *  @param      cfg     端口属性配置，如触发选项和上拉下拉选项
//   26  *  @since      v5.0
//   27  *  @note       与port_init_NoALT不同的是，此函数需要配置 MUX 复用功能，
//   28                 否则 MUX = ALT0
//   29  *  Sample usage:       port_init (PTA8, IRQ_RISING | PF | ALT1 | PULLUP );    //初始化 PTA8 管脚，上升沿触发中断，带无源滤波器，复用功能为GPIO ，上拉电阻
//   30  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function port_init
          CFI NoCalls
        THUMB
//   31 void  port_init(PTXn_e ptxn, uint32 cfg )
//   32 {
port_init:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   33     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << PTX(ptxn));                           //开启PORTx端口
        LDR.N    R2,??DataTable2  ;; 0x40048038
        LDR      R3,[R2, #+0]
        MOV      R4,#+512
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+5
        LSLS     R4,R4,R2
        ORRS     R3,R4,R3
        LDR.N    R2,??DataTable2  ;; 0x40048038
        STR      R3,[R2, #+0]
//   34 
//   35     PORT_ISFR_REG(PORTX_BASE(ptxn)) = (1<<PTn(ptxn));                           // 清空标志位
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R3,[R2, R3, LSL #+2]
        MOVS     R4,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R4,R4,R2
        STR      R4,[R3, #+160]
//   36 
//   37     PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn)) = cfg;                            // 复用功能 , 确定触发模式 ,开启上拉或下拉电阻
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R2,[R2, R3, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R3,R0,#0x1F
        STR      R1,[R2, R3, LSL #+2]
//   38 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   39 
//   40 /*!
//   41  *  @brief      PORT初始化
//   42  *  @param      PTxn    端口
//   43  *  @param      cfg     端口属性配置，如触发选项和上拉下拉选项
//   44  *  @since      v5.0
//   45  *  @note       与port_init不同的是，此函数不需要配置 MUX 复用功能（即使配置了也不生效），
//   46                 MUX 保留 为原先寄存器配置的值
//   47  *  Sample usage:       port_init_NoALT (PTA8, IRQ_RISING | PF | PULLUP );    //初始化 PTA8 管脚，上升沿触发中断，带无源滤波器，保留原先复用功能，上拉电阻
//   48  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function port_init_NoALT
          CFI NoCalls
        THUMB
//   49 void  port_init_NoALT(PTXn_e ptxn, uint32 cfg)
//   50 {
port_init_NoALT:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//   51     SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << PTX(ptxn));                           //开启PORTx端口
        LDR.N    R2,??DataTable2  ;; 0x40048038
        LDR      R3,[R2, #+0]
        MOV      R4,#+512
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+5
        LSLS     R4,R4,R2
        ORRS     R3,R4,R3
        LDR.N    R2,??DataTable2  ;; 0x40048038
        STR      R3,[R2, #+0]
//   52 
//   53     PORT_ISFR_REG(PORTX_BASE(ptxn)) = (1<<PTn(ptxn));                           // 清空标志位
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R3,[R2, R3, LSL #+2]
        MOVS     R4,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R4,R4,R2
        STR      R4,[R3, #+160]
//   54 
//   55     //清空cfg里的MUX，加载寄存器里的MUX
//   56     cfg &= ~PORT_PCR_MUX_MASK;                      //清了MUX 字段（即不需要配置ALT，保持原来的ALT）
        BICS     R1,R1,#0x700
//   57     cfg |=  (PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn)) & PORT_PCR_MUX_MASK);    //读取寄存器里配置的 MUX
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R2,[R2, R3, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R3,R0,#0x1F
        LDR      R2,[R2, R3, LSL #+2]
        ANDS     R2,R2,#0x700
        ORRS     R1,R2,R1
//   58 
//   59     PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn)) = cfg;            // 复用功能 , 确定触发模式 ,开启上拉或下拉电阻
        LDR.N    R2,??DataTable2_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        ASRS     R3,R3,#+5
        LDR      R2,[R2, R3, LSL #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R3,R0,#0x1F
        STR      R1,[R2, R3, LSL #+2]
//   60 }
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   61 
//   62 /*!
//   63  *  @brief      PORTA的参考中断服务函数
//   64  *  @since      v5.0
//   65  *  @warning    此函数需要用户根据自己需求完成，这里仅仅是提供一个模版
//   66  *  Sample usage:       set_vector_handler(PORTA_VECTORn , porta_handler);    //把 porta_handler 函数添加到中断向量表，不需要我们手动调用
//   67  */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function porta_handler
          CFI NoCalls
        THUMB
//   68 void porta_handler(void)
//   69 {
//   70     uint8  n = 0;    //引脚号
porta_handler:
        MOVS     R0,#+0
//   71 
//   72     //PTA6
//   73     n = 6;
        MOVS     R1,#+6
//   74     if(PORTA_ISFR & (1 << n))           //PTA6触发中断
        LDR.N    R2,??DataTable2_2  ;; 0x400490a0
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,R1
        LSLS     R2,R2,#+31
        BPL.N    ??porta_handler_0
//   75     {
//   76         PORTA_ISFR  = (1 << n);        //写1清中断标志位
        MOVS     R0,#+1
        LSLS     R0,R0,R1
        LDR.N    R2,??DataTable2_2  ;; 0x400490a0
        STR      R0,[R2, #+0]
//   77 
//   78         /*  以下为用户任务  */
//   79 
//   80 
//   81         /*  以上为用户任务  */
//   82     }
//   83 
//   84     //假设 PTA7 需要执行的用户任务函数为 func() ，则可以直接调用如下宏定义：
//   85     //PORT_FUNC(A,7,func);
//   86     //这个宏的作用与上面 PTA6 的效果是一样的，只不过是简化了用户的输入
//   87 }
??porta_handler_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     PORTX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x400490a0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  20 bytes in section .data
// 216 bytes in section .text
// 
// 216 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
