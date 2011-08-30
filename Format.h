/*
	Format.h - Library for formatting floats as a String object
	Created by Derek Chafin, August 30, 2011
	Released into the public domain.
*/
#ifndef Format_h
#define Format_h

#include "WProgram.h"

String formatFloat(double value, int places, int* string_width);
#endif