/*
	Format.cpp - Library for formatting floats as a String object
	Created by Derek Chafin, August 30, 2011
	Released into the public domain.
*/
#include "WProgram.h"
#include "Format.h"

String formatFloat(double value, int places, int* string_width)
{
  //if value is positive infinity
  if (isinf(value) > 0)
  {
    return "+Inf";
  }
    
  //Arduino does not seem to have negative infinity
  //keeping this code block for reference
  //if value is negative infinity
  if(isinf(value) < 0)
  {
    return "-Inf";
  }
  
  //if value is not a number
  if(isnan(value) > 0)
  {
    return "NaN";
  }
  
  //always include a space for the dot
  int num_width = 1;

  //if the number of decimal places is less than 1
  if (places < 1)
  {
    //set places to 1
    places = 1;
    
    //and truncate the value
    value = (float)((int)value);
  }
  
  //add the places to the right of the decimal
  num_width += places;
  
  //if the value does not contain an integral part  
  if (value < 1.0 && value > -1.0)
  {
    //add one for the integral zero
    num_width++;
  }
  else
  {
    //get the integral part and
    //get the number of places to the left of decimal
    num_width += ((int)log10((int)value)) + 1;
  }
  //if the value in less than 0
  if (value < 0.0)
  {
    //add a space for the minus sign
    num_width++;
  }
  
  //make a string the size of the number
  //plus 1 for string terminator
  char s[num_width + 1]; 
  
  //put the string terminator at the end
  s[num_width] = '\0';
  
  
  //initalize the array to all zeros
  for (int i = 0; i < num_width; i++)
  {
    s[i] = '0';
  }
  
  //characters that are not changed by 
  //the function below will be zeros
  
  //set the out variable string width
  //lets the caller know what we came up with
  *string_width = num_width;
  
  //use the avr-libc function dtosrtf to format the value
  return String(dtostrf(value,num_width,places,s));  
}