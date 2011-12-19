/*
	Format.h - Library for formatting floats as a String object
	Created by Derek Chafin, August 30, 2011
	Released into the public domain.
*/
#ifndef Format_h
#define Format_h

#if (ARDUINO >= 100)
 #include "Arduino.h"
#else
 #include "WProgram.h"
#endif

String formatFloat(double value, int places, int* string_width);
#endif