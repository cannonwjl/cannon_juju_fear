///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.1.13263/W32 for ARM      11/May/2017  11:14:09
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\@@@@@@@\Car\Board\src\VCAN_ASCII.c
//    Command line =  
//        -f C:\Users\lll88\AppData\Local\Temp\EW5646.tmp
//        (D:\@@@@@@@\Car\Board\src\VCAN_ASCII.c -D DEBUG -D
//        ARM_MATH_CM4 -D MK60DZ10 -lA
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List -o
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\Obj --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e
//        --char_is_signed --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Full.h" -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\App\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\App\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Board\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\IAR\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Chip\inc\kinetis\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\CMSIS\Inc\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\FatFs\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Lib\USB\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\All_Init\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\OLED_NEW\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\OLED\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\lptmr\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\IIC_Angle\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\ZLG_GUI\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\key\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Led\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\UI\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Control\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Search\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\Fuzzy\ -I
//        D:\@@@@@@@\Car\Prj\IAR\..\..\Drivers\BianMaqi\ -On -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.0\arm\CMSIS\Include\" -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        D:\@@@@@@@\Car\Prj\IAR\DZ10_Debug\List\VCAN_ASCII.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC ascii_8x16
        PUBLIC vcan_str
// D:\@@@@@@@\Car\Board\src\VCAN_ASCII.c
//    1 /*!
//    2  *     COPYRIGHT NOTICE
//    3  *     Copyright (c) 2013,山外科技
//    4  *     All rights reserved.
//    5  *     技术讨论：山外论坛 http://www.vcan123.com
//    6  *
//    7  *     除注明出处外，以下所有内容版权均属山外科技所有，未经允许，不得用于商业用途，
//    8  *     修改内容时必须保留山外科技的版权声明。
//    9  *
//   10  * @file       VCAN_ASCII.c
//   11  * @brief      常用ASCII表
//   12  * @author     山外科技
//   13  * @version    v5.0
//   14  * @date       2013-09-02
//   15  */
//   16 
//   17 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   18 unsigned char vcan_str[4*16*2] =
vcan_str:
        DC8 1, 0, 1, 0, 1, 0, 1, 0, 33, 8, 33, 8, 33, 8, 33, 8, 33, 8, 33, 8
        DC8 33, 8, 33, 8, 33, 8, 63, 248, 0, 8, 0, 0, 16, 64, 16, 64, 16, 64
        DC8 16, 64, 62, 64, 34, 96, 66, 80, 66, 72, 164, 68, 20, 68, 8, 64, 8
        DC8 64, 16, 64, 32, 64, 64, 64, 128, 64, 0, 64, 32, 64, 16, 160, 16
        DC8 160, 1, 16, 2, 8, 244, 6, 17, 16, 17, 32, 17, 64, 17, 128, 17, 0
        DC8 21, 4, 25, 4, 16, 252, 0, 0, 16, 0, 16, 0, 17, 252, 16, 0, 16, 0
        DC8 252, 0, 19, 254, 16, 32, 16, 32, 16, 64, 16, 64, 28, 136, 225, 4
        DC8 67, 254, 1, 2, 0, 0
//   19 {
//   20     /* 山 */
//   21     0x01,0x00,0x01,0x00,0x01,0x00,0x01,0x00,0x21,0x08,0x21,0x08,0x21,0x08,0x21,0x08,
//   22     0x21,0x08,0x21,0x08,0x21,0x08,0x21,0x08,0x21,0x08,0x3F,0xF8,0x00,0x08,0x00,0x00,
//   23     /* 外 */
//   24     0x10,0x40,0x10,0x40,0x10,0x40,0x10,0x40,0x3E,0x40,0x22,0x60,0x42,0x50,0x42,0x48,
//   25     0xA4,0x44,0x14,0x44,0x08,0x40,0x08,0x40,0x10,0x40,0x20,0x40,0x40,0x40,0x80,0x40,
//   26     /* 论 */
//   27     0x00,0x40,0x20,0x40,0x10,0xA0,0x10,0xA0,0x01,0x10,0x02,0x08,0xF4,0x06,0x11,0x10,
//   28     0x11,0x20,0x11,0x40,0x11,0x80,0x11,0x00,0x15,0x04,0x19,0x04,0x10,0xFC,0x00,0x00,
//   29     /* 坛 */
//   30     0x10,0x00,0x10,0x00,0x11,0xFC,0x10,0x00,0x10,0x00,0xFC,0x00,0x13,0xFE,0x10,0x20,
//   31     0x10,0x20,0x10,0x40,0x10,0x40,0x1C,0x88,0xE1,0x04,0x43,0xFE,0x01,0x02,0x00,0x00,
//   32 };
//   33 
//   34 //常用ASCII表
//   35 //偏移量32
//   36 //ASCII字符集
//   37 //偏移量32
//   38 //大小:8*16

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//   39 unsigned char const ascii_8x16[1536] =  //96X16=1536      //ascii字符范围为[32,127] = 96个字符,每个字符要用16个字节来表示  所以有96X16=1536个字节
ascii_8x16:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 60, 60
        DC8 60, 24, 24, 24, 0, 24, 24, 0, 0, 0, 0, 0, 102, 102, 102, 36, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, 108, 254, 108, 108, 108
        DC8 254, 108, 108, 0, 0, 0, 0, 24, 24, 124, 198, 194, 192, 124, 6, 134
        DC8 198, 124, 24, 24, 0, 0, 0, 0, 0, 0, 0, 194, 198, 12, 24, 48, 96
        DC8 198, 134, 0, 0, 0, 0, 0, 0, 56, 108, 108, 56, 118, 220, 204, 204
        DC8 204, 118, 0, 0, 0, 0, 0, 48, 48, 48, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 12, 24, 48, 48, 48, 48, 48, 48, 24, 12, 0, 0, 0, 0, 0
        DC8 0, 48, 24, 12, 12, 12, 12, 12, 12, 24, 48, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 102, 60, 255, 60, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24
        DC8 126, 24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24
        DC8 24, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 254, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6
        DC8 12, 24, 48, 96, 192, 128, 0, 0, 0, 0, 0, 0, 124, 198, 198, 206, 214
        DC8 214, 230, 198, 198, 124, 0, 0, 0, 0, 0, 0, 24, 56, 120, 24, 24, 24
        DC8 24, 24, 24, 126, 0, 0, 0, 0, 0, 0, 124, 198, 6, 12, 24, 48, 96, 192
        DC8 198, 254, 0, 0, 0, 0, 0, 0, 124, 198, 6, 6, 60, 6, 6, 6, 198, 124
        DC8 0, 0, 0, 0, 0, 0, 12, 28, 60, 108, 204, 254, 12, 12, 12, 30, 0, 0
        DC8 0, 0, 0, 0, 254, 192, 192, 192, 252, 14, 6, 6, 198, 124, 0, 0, 0, 0
        DC8 0, 0, 56, 96, 192, 192, 252, 198, 198, 198, 198, 124, 0, 0, 0, 0, 0
        DC8 0, 254, 198, 6, 6, 12, 24, 48, 48, 48, 48, 0, 0, 0, 0, 0, 0, 124
        DC8 198, 198, 198, 124, 198, 198, 198, 198, 124, 0, 0, 0, 0, 0, 0, 124
        DC8 198, 198, 198, 126, 6, 6, 6, 12, 120, 0, 0, 0, 0, 0, 0, 0, 0, 24
        DC8 24, 0, 0, 0, 24, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 24, 0, 0, 0, 24
        DC8 24, 48, 0, 0, 0, 0, 0, 0, 0, 6, 12, 24, 48, 96, 48, 24, 12, 6, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 254, 0, 0, 254, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 96, 48, 24, 12, 6, 12, 24, 48, 96, 0, 0, 0, 0, 0, 0, 124, 198, 198
        DC8 12, 24, 24, 24, 0, 24, 24, 0, 0, 0, 0, 0, 0, 0, 124, 198, 198, 222
        DC8 222, 222, 220, 192, 124, 0, 0, 0, 0, 0, 0, 16, 56, 108, 198, 198
        DC8 254, 198, 198, 198, 198, 0, 0, 0, 0, 0, 0, 252, 102, 102, 102, 124
        DC8 102, 102, 102, 102, 252, 0, 0, 0, 0, 0, 0, 60, 102, 194, 192, 192
        DC8 192, 192, 194, 102, 60, 0, 0, 0, 0, 0, 0, 248, 108, 102, 102, 102
        DC8 102, 102, 102, 108, 248, 0, 0, 0, 0, 0, 0, 254, 102, 98, 104, 120
        DC8 104, 96, 98, 102, 254, 0, 0, 0, 0, 0, 0, 254, 102, 98, 104, 120
        DC8 104, 96, 96, 96, 240, 0, 0, 0, 0, 0, 0, 60, 102, 194, 192, 192, 222
        DC8 198, 198, 102, 58, 0, 0, 0, 0, 0, 0, 198, 198, 198, 198, 254, 198
        DC8 198, 198, 198, 198, 0, 0, 0, 0, 0, 0, 60, 24, 24, 24, 24, 24, 24
        DC8 24, 24, 60, 0, 0, 0, 0, 0, 0, 30, 12, 12, 12, 12, 12, 204, 204, 204
        DC8 120, 0, 0, 0, 0, 0, 0, 230, 102, 108, 108, 120, 120, 108, 102, 102
        DC8 230, 0, 0, 0, 0, 0, 0, 240, 96, 96, 96, 96, 96, 96, 98, 102, 254, 0
        DC8 0, 0, 0, 0, 0, 198, 238, 254, 254, 214, 198, 198, 198, 198, 198, 0
        DC8 0, 0, 0, 0, 0, 198, 230, 246, 254, 222, 206, 198, 198, 198, 198, 0
        DC8 0, 0, 0, 0, 0, 56, 108, 198, 198, 198, 198, 198, 198, 108, 56, 0, 0
        DC8 0, 0, 0, 0, 252, 102, 102, 102, 124, 96, 96, 96, 96, 240, 0, 0, 0
        DC8 0, 0, 0, 124, 198, 198, 198, 198, 198, 198, 214, 222, 124, 12, 14
        DC8 0, 0, 0, 0, 252, 102, 102, 102, 124, 108, 102, 102, 102, 230, 0, 0
        DC8 0, 0, 0, 0, 124, 198, 198, 96, 56, 12, 6, 198, 198, 124, 0, 0, 0, 0
        DC8 0, 0, 126, 126, 90, 24, 24, 24, 24, 24, 24, 60, 0, 0, 0, 0, 0, 0
        DC8 198, 198, 198, 198, 198, 198, 198, 198, 198, 124, 0, 0, 0, 0, 0, 0
        DC8 198, 198, 198, 198, 198, 198, 198, 108, 56, 16, 0, 0, 0, 0, 0, 0
        DC8 198, 198, 198, 198, 198, 214, 214, 254, 108, 108, 0, 0, 0, 0, 0, 0
        DC8 198, 198, 108, 108, 56, 56, 108, 108, 198, 198, 0, 0, 0, 0, 0, 0
        DC8 102, 102, 102, 102, 60, 24, 24, 24, 24, 60, 0, 0, 0, 0, 0, 0, 254
        DC8 198, 134, 12, 24, 48, 96, 194, 198, 254, 0, 0, 0, 0, 0, 0, 60, 48
        DC8 48, 48, 48, 48, 48, 48, 48, 60, 0, 0, 0, 0, 0, 0, 0, 128, 192, 224
        DC8 112, 56, 28, 14, 6, 2, 0, 0, 0, 0, 0, 0, 60, 12, 12, 12, 12, 12, 12
        DC8 12, 12, 60, 0, 0, 0, 0, 16, 56, 108, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 48, 48
        DC8 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 12
        DC8 124, 204, 204, 204, 118, 0, 0, 0, 0, 0, 0, 224, 96, 96, 120, 108
        DC8 102, 102, 102, 102, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 198, 192
        DC8 192, 192, 198, 124, 0, 0, 0, 0, 0, 0, 28, 12, 12, 60, 108, 204, 204
        DC8 204, 204, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 198, 254, 192, 192
        DC8 198, 124, 0, 0, 0, 0, 0, 0, 56, 108, 100, 96, 240, 96, 96, 96, 96
        DC8 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 118, 204, 204, 204, 204, 204, 124
        DC8 12, 204, 120, 0, 0, 0, 224, 96, 96, 108, 118, 102, 102, 102, 102
        DC8 230, 0, 0, 0, 0, 0, 0, 24, 24, 0, 56, 24, 24, 24, 24, 24, 60, 0, 0
        DC8 0, 0, 0, 0, 6, 6, 0, 14, 6, 6, 6, 6, 6, 6, 102, 102, 60, 0, 0, 0
        DC8 224, 96, 96, 102, 108, 120, 120, 108, 102, 230, 0, 0, 0, 0, 0, 0
        DC8 56, 24, 24, 24, 24, 24, 24, 24, 24, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 236, 254, 214, 214, 214, 214, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220
        DC8 102, 102, 102, 102, 102, 102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 198
        DC8 198, 198, 198, 198, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220, 102, 102
        DC8 102, 102, 102, 124, 96, 96, 240, 0, 0, 0, 0, 0, 0, 118, 204, 204
        DC8 204, 204, 204, 124, 12, 12, 30, 0, 0, 0, 0, 0, 0, 220, 118, 98, 96
        DC8 96, 96, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 198, 96, 56, 12, 198
        DC8 124, 0, 0, 0, 0, 0, 0, 16, 48, 48, 252, 48, 48, 48, 48, 54, 28, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 204, 204, 204, 204, 204, 204, 118, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 102, 102, 102, 102, 102, 60, 24, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 198, 198, 198, 214, 214, 254, 108, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 198, 108, 56, 56, 56, 108, 198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198
        DC8 198, 198, 198, 198, 198, 126, 6, 12, 248, 0, 0, 0, 0, 0, 0, 254
        DC8 204, 24, 48, 96, 198, 254, 0, 0, 0, 0, 0, 0, 14, 24, 24, 24, 112
        DC8 24, 24, 24, 24, 14, 0, 0, 0, 0, 0, 0, 24, 24, 24, 24, 0, 24, 24, 24
        DC8 24, 24, 0, 0, 0, 0, 0, 0, 112, 24, 24, 24, 14, 24, 24, 24, 24, 112
        DC8 0, 0, 0, 0, 0, 0, 118, 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 16, 56, 108, 198, 198, 198, 254, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   40 {
//   41     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   42     0x00, 0x00, 0x18, 0x3C, 0x3C, 0x3C, 0x18, 0x18, 0x18, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00,
//   43     0x00, 0x66, 0x66, 0x66, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   44     0x00, 0x00, 0x00, 0x6C, 0x6C, 0xFE, 0x6C, 0x6C, 0x6C, 0xFE, 0x6C, 0x6C, 0x00, 0x00, 0x00, 0x00,
//   45     0x18, 0x18, 0x7C, 0xC6, 0xC2, 0xC0, 0x7C, 0x06, 0x86, 0xC6, 0x7C, 0x18, 0x18, 0x00, 0x00, 0x00,
//   46     0x00, 0x00, 0x00, 0x00, 0xC2, 0xC6, 0x0C, 0x18, 0x30, 0x60, 0xC6, 0x86, 0x00, 0x00, 0x00, 0x00,
//   47     0x00, 0x00, 0x38, 0x6C, 0x6C, 0x38, 0x76, 0xDC, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 0x00, 0x00, 0x00,
//   48     0x00, 0x30, 0x30, 0x30, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   49     0x00, 0x00, 0x0C, 0x18, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x18, 0x0C, 0x00, 0x00, 0x00, 0x00,
//   50     0x00, 0x00, 0x30, 0x18, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x18, 0x30, 0x00, 0x00, 0x00, 0x00,
//   51     0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x3C, 0xFF, 0x3C, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   52     0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x7E, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   53     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x18, 0x30, 0x00, 0x00, 0x00,
//   54     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   55     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00,
//   56     0x00, 0x00, 0x00, 0x00, 0x02, 0x06, 0x0C, 0x18, 0x30, 0x60, 0xC0, 0x80, 0x00, 0x00, 0x00, 0x00,
//   57     0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xCE, 0xD6, 0xD6, 0xE6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   58     0x00, 0x00, 0x18, 0x38, 0x78, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x7E, 0x00, 0x00, 0x00, 0x00,
//   59     0x00, 0x00, 0x7C, 0xC6, 0x06, 0x0C, 0x18, 0x30, 0x60, 0xC0, 0xC6, 0xFE, 0x00, 0x00, 0x00, 0x00,
//   60     0x00, 0x00, 0x7C, 0xC6, 0x06, 0x06, 0x3C, 0x06, 0x06, 0x06, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   61     0x00, 0x00, 0x0C, 0x1C, 0x3C, 0x6C, 0xCC, 0xFE, 0x0C, 0x0C, 0x0C, 0x1E, 0x00, 0x00, 0x00, 0x00,
//   62     0x00, 0x00, 0xFE, 0xC0, 0xC0, 0xC0, 0xFC, 0x0E, 0x06, 0x06, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   63     0x00, 0x00, 0x38, 0x60, 0xC0, 0xC0, 0xFC, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   64     0x00, 0x00, 0xFE, 0xC6, 0x06, 0x06, 0x0C, 0x18, 0x30, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00,
//   65     0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   66     0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0x7E, 0x06, 0x06, 0x06, 0x0C, 0x78, 0x00, 0x00, 0x00, 0x00,
//   67     0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00,
//   68     0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x18, 0x18, 0x30, 0x00, 0x00, 0x00, 0x00,
//   69     0x00, 0x00, 0x00, 0x06, 0x0C, 0x18, 0x30, 0x60, 0x30, 0x18, 0x0C, 0x06, 0x00, 0x00, 0x00, 0x00,
//   70     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0x00, 0x00, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//   71     0x00, 0x00, 0x00, 0x60, 0x30, 0x18, 0x0C, 0x06, 0x0C, 0x18, 0x30, 0x60, 0x00, 0x00, 0x00, 0x00,
//   72     0x00, 0x00, 0x7C, 0xC6, 0xC6, 0x0C, 0x18, 0x18, 0x18, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00,
//   73     0x00, 0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xDE, 0xDE, 0xDE, 0xDC, 0xC0, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   74     0x00, 0x00, 0x10, 0x38, 0x6C, 0xC6, 0xC6, 0xFE, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00,
//   75     0x00, 0x00, 0xFC, 0x66, 0x66, 0x66, 0x7C, 0x66, 0x66, 0x66, 0x66, 0xFC, 0x00, 0x00, 0x00, 0x00,
//   76     0x00, 0x00, 0x3C, 0x66, 0xC2, 0xC0, 0xC0, 0xC0, 0xC0, 0xC2, 0x66, 0x3C, 0x00, 0x00, 0x00, 0x00,
//   77     0x00, 0x00, 0xF8, 0x6C, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x6C, 0xF8, 0x00, 0x00, 0x00, 0x00,
//   78     0x00, 0x00, 0xFE, 0x66, 0x62, 0x68, 0x78, 0x68, 0x60, 0x62, 0x66, 0xFE, 0x00, 0x00, 0x00, 0x00,
//   79     0x00, 0x00, 0xFE, 0x66, 0x62, 0x68, 0x78, 0x68, 0x60, 0x60, 0x60, 0xF0, 0x00, 0x00, 0x00, 0x00,
//   80     0x00, 0x00, 0x3C, 0x66, 0xC2, 0xC0, 0xC0, 0xDE, 0xC6, 0xC6, 0x66, 0x3A, 0x00, 0x00, 0x00, 0x00,
//   81     0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xFE, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00,
//   82     0x00, 0x00, 0x3C, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3C, 0x00, 0x00, 0x00, 0x00,
//   83     0x00, 0x00, 0x1E, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0xCC, 0xCC, 0xCC, 0x78, 0x00, 0x00, 0x00, 0x00,
//   84     0x00, 0x00, 0xE6, 0x66, 0x6C, 0x6C, 0x78, 0x78, 0x6C, 0x66, 0x66, 0xE6, 0x00, 0x00, 0x00, 0x00,
//   85     0x00, 0x00, 0xF0, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x62, 0x66, 0xFE, 0x00, 0x00, 0x00, 0x00,
//   86     0x00, 0x00, 0xC6, 0xEE, 0xFE, 0xFE, 0xD6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00,
//   87     0x00, 0x00, 0xC6, 0xE6, 0xF6, 0xFE, 0xDE, 0xCE, 0xC6, 0xC6, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00,
//   88     0x00, 0x00, 0x38, 0x6C, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x6C, 0x38, 0x00, 0x00, 0x00, 0x00,
//   89     0x00, 0x00, 0xFC, 0x66, 0x66, 0x66, 0x7C, 0x60, 0x60, 0x60, 0x60, 0xF0, 0x00, 0x00, 0x00, 0x00,
//   90     0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xD6, 0xDE, 0x7C, 0x0C, 0x0E, 0x00, 0x00,
//   91     0x00, 0x00, 0xFC, 0x66, 0x66, 0x66, 0x7C, 0x6C, 0x66, 0x66, 0x66, 0xE6, 0x00, 0x00, 0x00, 0x00,
//   92     0x00, 0x00, 0x7C, 0xC6, 0xC6, 0x60, 0x38, 0x0C, 0x06, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   93     0x00, 0x00, 0x7E, 0x7E, 0x5A, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3C, 0x00, 0x00, 0x00, 0x00,
//   94     0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//   95     0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x6C, 0x38, 0x10, 0x00, 0x00, 0x00, 0x00,
//   96     0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xD6, 0xD6, 0xFE, 0x6C, 0x6C, 0x00, 0x00, 0x00, 0x00,
//   97     0x00, 0x00, 0xC6, 0xC6, 0x6C, 0x6C, 0x38, 0x38, 0x6C, 0x6C, 0xC6, 0xC6, 0x00, 0x00, 0x00, 0x00,
//   98     0x00, 0x00, 0x66, 0x66, 0x66, 0x66, 0x3C, 0x18, 0x18, 0x18, 0x18, 0x3C, 0x00, 0x00, 0x00, 0x00,
//   99     0x00, 0x00, 0xFE, 0xC6, 0x86, 0x0C, 0x18, 0x30, 0x60, 0xC2, 0xC6, 0xFE, 0x00, 0x00, 0x00, 0x00,
//  100     0x00, 0x00, 0x3C, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x3C, 0x00, 0x00, 0x00, 0x00,
//  101     0x00, 0x00, 0x00, 0x80, 0xC0, 0xE0, 0x70, 0x38, 0x1C, 0x0E, 0x06, 0x02, 0x00, 0x00, 0x00, 0x00,
//  102     0x00, 0x00, 0x3C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x3C, 0x00, 0x00, 0x00, 0x00,
//  103     0x10, 0x38, 0x6C, 0xC6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//  104     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00,
//  105     0x30, 0x30, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//  106     0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x0C, 0x7C, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 0x00, 0x00, 0x00,
//  107     0x00, 0x00, 0xE0, 0x60, 0x60, 0x78, 0x6C, 0x66, 0x66, 0x66, 0x66, 0xDC, 0x00, 0x00, 0x00, 0x00,
//  108     0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xC6, 0xC0, 0xC0, 0xC0, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//  109     0x00, 0x00, 0x1C, 0x0C, 0x0C, 0x3C, 0x6C, 0xCC, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 0x00, 0x00, 0x00,
//  110     0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xC6, 0xFE, 0xC0, 0xC0, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//  111     0x00, 0x00, 0x38, 0x6C, 0x64, 0x60, 0xF0, 0x60, 0x60, 0x60, 0x60, 0xF0, 0x00, 0x00, 0x00, 0x00,
//  112     0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x7C, 0x0C, 0xCC, 0x78, 0x00,
//  113     0x00, 0x00, 0xE0, 0x60, 0x60, 0x6C, 0x76, 0x66, 0x66, 0x66, 0x66, 0xE6, 0x00, 0x00, 0x00, 0x00,
//  114     0x00, 0x00, 0x18, 0x18, 0x00, 0x38, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3C, 0x00, 0x00, 0x00, 0x00,
//  115     0x00, 0x00, 0x06, 0x06, 0x00, 0x0E, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x66, 0x66, 0x3C, 0x00,
//  116     0x00, 0x00, 0xE0, 0x60, 0x60, 0x66, 0x6C, 0x78, 0x78, 0x6C, 0x66, 0xE6, 0x00, 0x00, 0x00, 0x00,
//  117     0x00, 0x00, 0x38, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x18, 0x3C, 0x00, 0x00, 0x00, 0x00,
//  118     0x00, 0x00, 0x00, 0x00, 0x00, 0xEC, 0xFE, 0xD6, 0xD6, 0xD6, 0xD6, 0xD6, 0x00, 0x00, 0x00, 0x00,
//  119     0x00, 0x00, 0x00, 0x00, 0x00, 0xDC, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66, 0x00, 0x00, 0x00, 0x00,
//  120     0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//  121     0x00, 0x00, 0x00, 0x00, 0x00, 0xDC, 0x66, 0x66, 0x66, 0x66, 0x66, 0x7C, 0x60, 0x60, 0xF0, 0x00,
//  122     0x00, 0x00, 0x00, 0x00, 0x00, 0x76, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x7C, 0x0C, 0x0C, 0x1E, 0x00,
//  123     0x00, 0x00, 0x00, 0x00, 0x00, 0xDC, 0x76, 0x62, 0x60, 0x60, 0x60, 0xF0, 0x00, 0x00, 0x00, 0x00,
//  124     0x00, 0x00, 0x00, 0x00, 0x00, 0x7C, 0xC6, 0x60, 0x38, 0x0C, 0xC6, 0x7C, 0x00, 0x00, 0x00, 0x00,
//  125     0x00, 0x00, 0x10, 0x30, 0x30, 0xFC, 0x30, 0x30, 0x30, 0x30, 0x36, 0x1C, 0x00, 0x00, 0x00, 0x00,
//  126     0x00, 0x00, 0x00, 0x00, 0x00, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0x76, 0x00, 0x00, 0x00, 0x00,
//  127     0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x66, 0x66, 0x66, 0x66, 0x3C, 0x18, 0x00, 0x00, 0x00, 0x00,
//  128     0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xD6, 0xD6, 0xFE, 0x6C, 0x00, 0x00, 0x00, 0x00,
//  129     0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0x6C, 0x38, 0x38, 0x38, 0x6C, 0xC6, 0x00, 0x00, 0x00, 0x00,
//  130     0x00, 0x00, 0x00, 0x00, 0x00, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0xC6, 0x7E, 0x06, 0x0C, 0xF8, 0x00,
//  131     0x00, 0x00, 0x00, 0x00, 0x00, 0xFE, 0xCC, 0x18, 0x30, 0x60, 0xC6, 0xFE, 0x00, 0x00, 0x00, 0x00,
//  132     0x00, 0x00, 0x0E, 0x18, 0x18, 0x18, 0x70, 0x18, 0x18, 0x18, 0x18, 0x0E, 0x00, 0x00, 0x00, 0x00,
//  133     0x00, 0x00, 0x18, 0x18, 0x18, 0x18, 0x00, 0x18, 0x18, 0x18, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00,
//  134     0x00, 0x00, 0x70, 0x18, 0x18, 0x18, 0x0E, 0x18, 0x18, 0x18, 0x18, 0x70, 0x00, 0x00, 0x00, 0x00,
//  135     0x00, 0x00, 0x76, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//  136     0x00, 0x00, 0x00, 0x00, 0x10, 0x38, 0x6C, 0xC6, 0xC6, 0xC6, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00
//  137 };
// 
//   128 bytes in section .data
// 1 536 bytes in section .rodata
// 
// 1 536 bytes of CONST memory
//   128 bytes of DATA  memory
//
//Errors: none
//Warnings: none
