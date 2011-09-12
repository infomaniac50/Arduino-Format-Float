/*
Format Float Demo
version 1
Derek Chafin

Takes a float type and formats it as a String object.

*/

#include <Format.h>

//Test Values

//Note: Arduino does not use negative infinity. 
//Thus when the library gets this value
//it prints positive infinity.
float neginf = -3.4028235E+39;
float posinf = 3.4028235E+39;
float nan = 0.0/0.0;
float negfrac = -0.5;
float posfrac = 0.5;
float posnum = 1.0;
float negnum = -1.0;
float posnumfrac = 1.5;
float negnumfrac = -1.5;
float bigposnum = 30.0;
float bignegnum = -30.0;
int string_width;

void setup()
{
  Serial.begin(9600);
  
  //test non numbers
  Serial.println(formatFloat(posinf, 1, &string_width));
  Serial.println(formatFloat(neginf, 1, &string_width));
  Serial.println(formatFloat(nan, 1, &string_width));
  Serial.println("");
  
  //test perfect place  
  Serial.print(" -0.d: ");
  Serial.print(formatFloat(negfrac, 1, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  0.d:  ");
  Serial.print(formatFloat(posfrac, 1, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" -d.0: ");
  Serial.print(formatFloat(negnum, 1, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  d.0:  ");
  Serial.print(formatFloat(posnum, 1, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" -d.d: ");
  Serial.print(formatFloat(negnumfrac, 1, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  d.d:  ");
  Serial.print(formatFloat(posnumfrac, 1, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("-dd.d:");
  Serial.print(formatFloat(bignegnum, 1, &string_width));  
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" dd.d: ");
  Serial.print(formatFloat(bigposnum, 1, &string_width));  
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.println("");


  //test truncation
  Serial.print(" -0.0:  ");
  Serial.print(formatFloat(negfrac, 0, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  0.0:  ");
  Serial.print(formatFloat(posfrac, 0, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" -d.0: ");
  Serial.print(formatFloat(negnum, 0, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  d.0:  ");
  Serial.print(formatFloat(posnum, 0, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" -d.0: ");
  Serial.print(formatFloat(negnumfrac, 0, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  d.0:  ");
  Serial.print(formatFloat(posnumfrac, 0, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("-dd.0:");
  Serial.print(formatFloat(bignegnum, 0, &string_width));  
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" dd.0: ");
  Serial.print(formatFloat(bigposnum, 0, &string_width));  
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.println("");  
  
  //test expansion
  Serial.print(" -0.d0: ");
  Serial.print(formatFloat(negfrac, 2, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  0.d0:  ");
  Serial.print(formatFloat(posfrac, 2, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" -d.00: ");
  Serial.print(formatFloat(negnum, 2, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  d.00:  ");
  Serial.print(formatFloat(posnum, 2, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" -d.d0: ");
  Serial.print(formatFloat(negnumfrac, 2, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("  d.d0:  ");
  Serial.print(formatFloat(posnumfrac, 2, &string_width));
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print("-dd.d0:");
  Serial.print(formatFloat(bignegnum, 2, &string_width));  
  Serial.print(" ");
  Serial.println(String(string_width));
  Serial.print(" dd.d0: ");
  Serial.print(formatFloat(bigposnum, 2, &string_width));  
  Serial.print(" ");
  Serial.println(String(string_width));


}

void loop()
{
  delay(1000);
}
