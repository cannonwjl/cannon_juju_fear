#ifndef __LED_H__
#define __LED_H__

#include "common.h"
#include "MK60_port.h"
#include "MK60_gpio.h"

#define LEDCTRL  PTC2_OUT
#define BEEP_ON  PTC3_OUT=1
#define BEEP_OFF PTC3_OUT=0


extern int  BEEP_TIMES;


void LedBeep_init(void);
void Beep(int Times );
void Led(int State );
void Beep_A(int Times );

#endif  //__LED_H__


