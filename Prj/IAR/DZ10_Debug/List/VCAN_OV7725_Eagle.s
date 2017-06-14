///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      11/Jun/2017  21:36:30
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  C:\Users\WJL-PC\Desktop\Car\Board\src\VCAN_OV7725_Eagle.c
//    Command line =  
//        -f C:\Users\WJL-PC\AppData\Local\Temp\EWBF74.tmp
//        (C:\Users\WJL-PC\Desktop\Car\Board\src\VCAN_OV7725_Eagle.c -D DEBUG
//        -D ARM_MATH_CM4 -D MK60DZ10 -lA
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
//        C:\Users\WJL-PC\Desktop\Car\Prj\IAR\DZ10_Debug\List\VCAN_OV7725_Eagle.s
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
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        EXTERN SCCB_GPIO_init
        EXTERN SCCB_ReadByte
        EXTERN SCCB_WriteByte
        EXTERN dma_portx2buff_init
        EXTERN port_init
        EXTERN systick_delay_ms

        PUBLIC ov7725_eagle_cfgnum
        PUBLIC ov7725_eagle_dma
        PUBLIC ov7725_eagle_get_img
        PUBLIC ov7725_eagle_img_buff
        PUBLIC ov7725_eagle_img_flag
        PUBLIC ov7725_eagle_init
        PUBLIC ov7725_eagle_reg
        PUBLIC ov7725_eagle_vsync
        
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
        
// C:\Users\WJL-PC\Desktop\Car\Board\src\VCAN_OV7725_Eagle.c
//    1 /*************************************************************
//    2  * @brief      鹰眼ov7725驱动代码
//    3  * @author     山外科技
//    4  * @version    v5.0
//    5  * @date       2013-09-07
//    6 ************************************************************/
//    7 
//    8 #include "common.h"

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function NVIC_EnableIRQ
          CFI NoCalls
        THUMB
// static __ramfunc __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable4  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function NVIC_DisableIRQ
          CFI NoCalls
        THUMB
// static __ramfunc __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable4_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//    9 #include "MK60_gpio.h"
//   10 #include "MK60_port.h"
//   11 #include "MK60_dma.h"
//   12 #include "VCAN_camera.h"
//   13 #include "All_Init.h"
//   14 
//   15 #define OV7725_EAGLE_Delay_ms(time)  DELAY_MS(time)
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   17 uint8   *ov7725_eagle_img_buff;
ov7725_eagle_img_buff:
        DS8 4
//   18 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   19 volatile IMG_STATUS_e  ov7725_eagle_img_flag = IMG_FINISH;   //图像状态
ov7725_eagle_img_flag:
        DC8 1
//   20 
//   21 static uint8 ov7725_eagle_reg_init(void);
//   22 static void ov7725_eagle_port_init();
//   23 
//   24 /************************************************************
//   25 *	OV7725初始化配置表
//   26 *************************************************************/

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   27 reg_s ov7725_eagle_reg[] =
ov7725_eagle_reg:
        DC8 13, 65, 17, 0, 9, 3, 12, 208, 18, 64, 23, 63, 24, 80, 25, 3, 26
        DC8 120, 50, 0, 160, 10, 99, 224, 172, 255, 101, 12, 102, 0, 103, 0, 41
        DC8 20, 44, 30, 42, 0, 126, 12, 127, 22, 128, 42, 129, 78, 130, 97, 131
        DC8 111, 132, 123, 133, 134, 134, 142, 135, 151, 136, 164, 137, 175
        DC8 138, 197, 139, 215, 140, 232, 141, 32, 74, 0, 73, 19, 71, 8, 75, 20
        DC8 76, 23, 70, 5, 34, 153, 35, 3, 166, 4, 155, 0, 156, 255, 171, 6
        DC8 158, 17, 159, 2, 0, 0
//   28 {
//   29     //寄存器，寄存器值次          //  50    75    112     150
//   30     {OV7725_COM4         , 0x41}, //  C1    41    81       C1
//   31     {OV7725_CLKRC        , 0x00}, //  02    00    00       00
//   32     {OV7725_COM2         , 0x03},
//   33     {OV7725_COM3         , 0xD0},
//   34     {OV7725_COM7         , 0x40},
//   35     {OV7725_HSTART       , 0x3F},
//   36     {OV7725_HSIZE        , 0x50},
//   37     {OV7725_VSTRT        , 0x03},
//   38     {OV7725_VSIZE        , 0x78},
//   39     {OV7725_HREF         , 0x00},
//   40     {OV7725_SCAL0        , 0x0A},
//   41     {OV7725_AWB_Ctrl0    , 0xE0},
//   42     {OV7725_DSPAuto      , 0xff},
//   43     {OV7725_DSP_Ctrl2    , 0x0C},
//   44     {OV7725_DSP_Ctrl3    , 0x00},
//   45     {OV7725_DSP_Ctrl4    , 0x00},
//   46 
//   47   #if (CAMERA_W == 80)
//   48     {OV7725_HOutSize     , 0x14},
//   49    #elif (CAMERA_W == 160)
//   50     {OV7725_HOutSize     , 0x28},
//   51    #elif (CAMERA_W == 240)
//   52     {OV7725_HOutSize     , 0x3c},
//   53    #elif (CAMERA_W == 320)
//   54     {OV7725_HOutSize     , 0x50},
//   55   #endif
//   56 
//   57   #if (CAMERA_H == 60 )
//   58     {OV7725_VOutSize     , 0x1E},
//   59    #elif (CAMERA_H == 120 )
//   60     {OV7725_VOutSize     , 0x3c},
//   61    #elif (CAMERA_H == 180 )
//   62     {OV7725_VOutSize     , 0x5a},
//   63    #elif (CAMERA_H == 240 )
//   64     {OV7725_VOutSize     , 0x78},
//   65   #endif
//   66 
//   67     {OV7725_EXHCH        , 0x00},
//   68     {OV7725_GAM1         , 0x0c},
//   69     {OV7725_GAM2         , 0x16},
//   70     {OV7725_GAM3         , 0x2a},
//   71     {OV7725_GAM4         , 0x4e},
//   72     {OV7725_GAM5         , 0x61},
//   73     {OV7725_GAM6         , 0x6f},
//   74     {OV7725_GAM7         , 0x7b},
//   75     {OV7725_GAM8         , 0x86},
//   76     {OV7725_GAM9         , 0x8e},
//   77     {OV7725_GAM10        , 0x97},
//   78     {OV7725_GAM11        , 0xa4},
//   79     {OV7725_GAM12        , 0xaf},
//   80     {OV7725_GAM13        , 0xc5},
//   81     {OV7725_GAM14        , 0xd7},
//   82     {OV7725_GAM15        , 0xe8},
//   83     {OV7725_SLOP         , 0x20},
//   84     {OV7725_LC_RADI      , 0x00},
//   85     {OV7725_LC_COEF      , 0x13},
//   86     {OV7725_LC_XC        , 0x08},
//   87     {OV7725_LC_COEFB     , 0x14},
//   88     {OV7725_LC_COEFR     , 0x17},
//   89     {OV7725_LC_CTR       , 0x05},
//   90     {OV7725_BDBase       , 0x99},
//   91     {OV7725_BDMStep      , 0x03},
//   92     {OV7725_SDE          , 0x04},
//   93     {OV7725_BRIGHT       , 0x00},
//   94     {OV7725_CNST         , 0xFF},//阈值
//   95     {OV7725_SIGN         , 0x06},
//   96     {OV7725_UVADJ0       , 0x11},
//   97     {OV7725_UVADJ1       , 0x02},
//   98 };
//   99 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//  100 uint8 ov7725_eagle_cfgnum = ARR_SIZE( ov7725_eagle_reg ) ; /*结构体数组成员数目*/
ov7725_eagle_cfgnum:
        DC8 49
//  101 
//  102 /*************************************************************
//  103  *  @brief      鹰眼ov7725初始化
//  104  *  @since      v5.0
//  105 *************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ov7725_eagle_init
        THUMB
//  106 uint8 ov7725_eagle_init(uint8 *imgaddr)
//  107 {
ov7725_eagle_init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  108     int Timm=1000;
        MOV      R5,#+1000
//  109     ov7725_eagle_img_buff = imgaddr;
        LDR.N    R0,??DataTable14
        STR      R4,[R0, #+0]
//  110     while((ov7725_eagle_reg_init() == 0)&&Timm--);
??ov7725_eagle_init_0:
          CFI FunCall ov7725_eagle_reg_init
        BL       ov7725_eagle_reg_init
        CMP      R0,#+0
        BNE.N    ??ov7725_eagle_init_1
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        CMP      R0,#+0
        BNE.N    ??ov7725_eagle_init_0
//  111     ov7725_eagle_port_init();
??ov7725_eagle_init_1:
          CFI FunCall ov7725_eagle_port_init
        BL       ov7725_eagle_port_init
//  112     return 0;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//  113 }
          CFI EndBlock cfiBlock2
//  114 
//  115 /*************************************************************
//  116  *  @brief      鹰眼ov7725管脚初始化（内部调用）
//  117  *  @since      v5.0
//  118 *************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ov7725_eagle_port_init
        THUMB
//  119 void ov7725_eagle_port_init()
//  120 {
ov7725_eagle_port_init:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//  121     //DMA通道0初始化，PTA27触发源(默认上升沿)，源地址为PTB_B0_IN，目的地址为：IMG_BUFF，每次传输1Byte
//  122     dma_portx2buff_init(CAMERA_DMA_CH, (void *)&PTC_B1_IN, (void *)ov7725_eagle_img_buff, PTC6, DMA_BYTE1, CAMERA_DMA_NUM, DADDR_KEEPON);
        MOVS     R0,#+1
        STR      R0,[SP, #+8]
        MOV      R0,#+600
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+70
        LDR.N    R0,??DataTable14
        LDR      R2,[R0, #+0]
        LDR.N    R1,??DataTable14_1  ;; 0x400ff091
        MOVS     R0,#+0
          CFI FunCall dma_portx2buff_init
        BL       dma_portx2buff_init
//  123 	//PTB_B0_IN   PTB_B2_IN
//  124     DMA_DIS(CAMERA_DMA_CH);
        LDR.N    R0,??DataTable14_2  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable14_2  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  125     disable_irq(PORTC_IRQn);                        //关闭PTA的中断
        MOVS     R0,#+89
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  126     DMA_IRQ_CLEAN(CAMERA_DMA_CH);                   //清除通道传输中断标志位
        LDR.N    R0,??DataTable14_3  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable14_3  ;; 0x40008024
        STR      R0,[R1, #+0]
//  127     DMA_IRQ_EN(CAMERA_DMA_CH);
        MOVS     R0,#+0
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  128 
//  129     port_init(PTC6, ALT1 | DMA_FALLING | PULLDOWN );         //PCLK
        LDR.N    R1,??DataTable14_4  ;; 0x20102
        MOVS     R0,#+70
          CFI FunCall port_init
        BL       port_init
//  130 
//  131     port_init(PTC7, ALT1 | IRQ_RISING  | PULLDOWN | PF);     //场中断，上拉，上降沿触发中断，带滤波
        LDR.N    R1,??DataTable14_5  ;; 0x90112
        MOVS     R0,#+71
          CFI FunCall port_init
        BL       port_init
//  132 }
        POP      {R0-R2,PC}       ;; return
          CFI EndBlock cfiBlock3
//  133 
//  134 /*************************************************************************
//  135  *  @brief      鹰眼ov7725场中断服务函数
//  136  *  @since      v5.0
//  137 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ov7725_eagle_vsync
        THUMB
//  138 __ramfunc void ov7725_eagle_vsync(void)
//  139 {
ov7725_eagle_vsync:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  140     //场中断需要判断是场结束还是场开始
//  141     if(ov7725_eagle_img_flag == IMG_START)                   //需要开始采集图像
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??ov7725_eagle_vsync_0
//  142     {
//  143         ov7725_eagle_img_flag = IMG_GATHER;                  //标记图像采集中
        MOVS     R0,#+3
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  144         disable_irq(PORTC_IRQn);
        MOVS     R0,#+89
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  145 
//  146   #if 1
//  147 
//  148         PORTC_ISFR = 1 <<  PT6;            //清空PCLK标志位
        MOVS     R0,#+64
        LDR.N    R1,??DataTable4_3  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  149 
//  150         DMA_EN(CAMERA_DMA_CH);             //使能通道CHn 硬件请求
        LDR.N    R0,??DataTable4_4  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_4  ;; 0x4000800c
        STR      R0,[R1, #+0]
//  151         PORTC_ISFR = 1 <<  PT6;            //清空PCLK标志位
        MOVS     R0,#+64
        LDR.N    R1,??DataTable4_3  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  152         DMA_DADDR(CAMERA_DMA_CH) = (uint32)ov7725_eagle_img_buff;    //恢复地址
        LDR.N    R0,??DataTable4_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_6  ;; 0x40009010
        STR      R0,[R1, #+0]
        B.N      ??ov7725_eagle_vsync_1
//  153 
//  154   #else
//  155         PORTC_ISFR = 1 <<  PT6;            //清空PCLK标志位
//  156         dma_repeat(CAMERA_DMA_CH, (void *)&PTC_B1_IN, (void *)ov7725_eagle_img_buff,CAMERA_DMA_NUM);
//  157   #endif
//  158 	}
//  159     else                                        //图像采集错误
//  160     {
//  161         disable_irq(PORTC_IRQn);                        //关闭PTA的中断
??ov7725_eagle_vsync_0:
        MOVS     R0,#+89
          CFI FunCall NVIC_DisableIRQ
        BL       NVIC_DisableIRQ
//  162         ov7725_eagle_img_flag = IMG_FAIL;                    //标记图像采集失败
        MOVS     R0,#+2
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  163     }
//  164 }
??ov7725_eagle_vsync_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock4
//  165 
//  166 /*************************************************************************
//  167  *  @brief      鹰眼ov7725 DMA中断服务函数
//  168  *  @since      v5.0
//  169 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ov7725_eagle_dma
          CFI NoCalls
        THUMB
//  170 __ramfunc void ov7725_eagle_dma()
//  171 {
//  172     ov7725_eagle_img_flag = IMG_FINISH ;
ov7725_eagle_dma:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  173     DMA_IRQ_CLEAN(CAMERA_DMA_CH);           //清除通道传输中断标志位
        LDR.N    R0,??DataTable4_7  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_7  ;; 0x40008024
        STR      R0,[R1, #+0]
//  174 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  175 
//  176 /*************************************************************************
//  177  *  @brief      鹰眼ov7725采集图像（采集到的数据存储在 初始化时配置的地址上）
//  178  *  @since      v5.0
//  179 *************************************************************************/

        SECTION `.textrw`:CODE:NOROOT(1)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ov7725_eagle_get_img
        THUMB
//  180 __ramfunc void ov7725_eagle_get_img()
//  181 {
ov7725_eagle_get_img:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  182     ov7725_eagle_img_flag = IMG_START;              //开始采集图像
        MOVS     R0,#+4
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  183     PORTC_ISFR = ~0;                                //写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
        MOVS     R0,#-1
        LDR.N    R1,??DataTable4_3  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  184     enable_irq(PORTC_IRQn);                         //允许PTA的中断
        MOVS     R0,#+89
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
//  185     while(ov7725_eagle_img_flag != IMG_FINISH)      //等待图像采集完毕
??ov7725_eagle_get_img_0:
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??ov7725_eagle_get_img_1
//  186     {
//  187         if(ov7725_eagle_img_flag == IMG_FAIL)       //假如图像采集错误，则重新开始采集
        LDR.N    R0,??DataTable4_2
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ov7725_eagle_get_img_0
//  188         {
//  189             ov7725_eagle_img_flag = IMG_START;      //开始采集图像
        MOVS     R0,#+4
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  190             PORTC_ISFR = ~0;                        //写1清中断标志位(必须的，不然回导致一开中断就马上触发中断)
        MOVS     R0,#-1
        LDR.N    R1,??DataTable4_3  ;; 0x4004b0a0
        STR      R0,[R1, #+0]
//  191             enable_irq(PORTC_IRQn);                 //允许PTA的中断
        MOVS     R0,#+89
          CFI FunCall NVIC_EnableIRQ
        BL       NVIC_EnableIRQ
        B.N      ??ov7725_eagle_get_img_0
//  192         }    
//  193     }
//  194 	//PicMany++;//帧率统计
//  195 }
??ov7725_eagle_get_img_1:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4:
        DC32     0xe000e100

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_1:
        DC32     0xe000e180

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_2:
        DC32     ov7725_eagle_img_flag

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_3:
        DC32     0x4004b0a0

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_4:
        DC32     0x4000800c

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_5:
        DC32     ov7725_eagle_img_buff

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_6:
        DC32     0x40009010

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE
        DATA
??DataTable4_7:
        DC32     0x40008024
//  196 
//  197 /*************************************************************************
//  198  *  @brief      鹰眼ov7725寄存器 初始化
//  199  *  @return     初始化结果（0表示失败，1表示成功）
//  200  *  @since      v5.0
//  201 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ov7725_eagle_reg_init
        THUMB
//  202 uint8 ov7725_eagle_reg_init(void)
//  203 {
ov7725_eagle_reg_init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//  204     uint16 i = 0;
        MOVS     R4,#+0
//  205     uint8 Sensor_IDCode = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  206     SCCB_GPIO_init();
          CFI FunCall SCCB_GPIO_init
        BL       SCCB_GPIO_init
//  207 
//  208     //OV7725_Delay_ms(50);
//  209     if( 0 == SCCB_WriteByte ( OV7725_COM7, 0x80 ) ) /*复位sensor */
        MOVS     R1,#+128
        MOVS     R0,#+18
          CFI FunCall SCCB_WriteByte
        BL       SCCB_WriteByte
        CMP      R0,#+0
        BNE.N    ??ov7725_eagle_reg_init_0
//  210     {
//  211         DEBUG_PRINTF("\n警告:SCCB写数据错误");
//  212         return 0 ;
        MOVS     R0,#+0
        B.N      ??ov7725_eagle_reg_init_1
//  213     }
//  214 
//  215     OV7725_EAGLE_Delay_ms(50);
??ov7725_eagle_reg_init_0:
        MOVS     R0,#+50
          CFI FunCall systick_delay_ms
        BL       systick_delay_ms
//  216 
//  217     if( 0 == SCCB_ReadByte( &Sensor_IDCode, 1, OV7725_VER ) )    /* 读取sensor ID号*/
        MOVS     R2,#+11
        MOVS     R1,#+1
        MOV      R0,SP
          CFI FunCall SCCB_ReadByte
        BL       SCCB_ReadByte
        CMP      R0,#+0
        BNE.N    ??ov7725_eagle_reg_init_2
//  218     {
//  219         DEBUG_PRINTF("\n警告:读取ID失败");
//  220         return 0;
        MOVS     R0,#+0
        B.N      ??ov7725_eagle_reg_init_1
//  221     }
//  222     DEBUG_PRINTF("\nGet ID success，SENSOR ID is 0x%x", Sensor_IDCode);
//  223     DEBUG_PRINTF("\nConfig Register Number is %d ", ov7725_eagle_cfgnum);
//  224     if(Sensor_IDCode == OV7725_ID)
??ov7725_eagle_reg_init_2:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+33
        BNE.N    ??ov7725_eagle_reg_init_3
//  225     {
//  226         for( i = 0 ; i < ov7725_eagle_cfgnum ; i++ )
        MOVS     R5,#+0
??ov7725_eagle_reg_init_4:
        MOVS     R0,R5
        LDR.N    R1,??DataTable14_6
        LDRB     R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R0,R1
        BCS.N    ??ov7725_eagle_reg_init_5
//  227         {
//  228             if( 0 == SCCB_WriteByte(ov7725_eagle_reg[i].addr, ov7725_eagle_reg[i].val) )
        LDR.N    R0,??DataTable14_7
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADD      R0,R0,R5, LSL #+1
        LDRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable14_7
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDRB     R0,[R0, R5, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall SCCB_WriteByte
        BL       SCCB_WriteByte
        CMP      R0,#+0
        BNE.N    ??ov7725_eagle_reg_init_6
//  229             {
//  230                 DEBUG_PRINTF("\n警告:写寄存器0x%x失败", ov7725_eagle_reg[i].addr);
//  231                 return 0;
        MOVS     R0,#+0
        B.N      ??ov7725_eagle_reg_init_1
//  232             }
//  233         }
??ov7725_eagle_reg_init_6:
        ADDS     R5,R5,#+1
        B.N      ??ov7725_eagle_reg_init_4
//  234     }
//  235     else
//  236     {
//  237         return 0;
//  238     }
//  239     DEBUG_PRINTF("\nOV7725 Register Config Success!");
//  240     return 1;
??ov7725_eagle_reg_init_5:
        MOVS     R0,#+1
        B.N      ??ov7725_eagle_reg_init_1
??ov7725_eagle_reg_init_3:
        MOVS     R0,#+0
??ov7725_eagle_reg_init_1:
        POP      {R1,R4,R5,PC}    ;; return
//  241 }
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     ov7725_eagle_img_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     0x400ff091

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     0x40008024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     0x20102

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     0x90112

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     ov7725_eagle_cfgnum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     ov7725_eagle_reg

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  242 
//  243 
// 
//   4 bytes in section .bss
// 102 bytes in section .data
// 274 bytes in section .text
// 234 bytes in section .textrw
// 
// 508 bytes of CODE memory
// 106 bytes of DATA memory
//
//Errors: none
//Warnings: 1
