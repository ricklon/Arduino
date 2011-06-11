//************************************************************************
//*	Arduino String Test
//*		(C) 2010 by Rick Anderson
//*		Open source as per standard Arduino code
//*
//************************************************************************
//*	Oct 16,	2010	<ROA> Started on String Test
//************************************************************************

#include	"WProgram.h"
#include	"HardwareSerial.h"
#include	<ArduinoTestSuite.h>

#ifndef F
#define F(s) (s)
#endif

//************************************************************************
void setup()
{
  int startMemoryUsage;

  ATS_begin("Arduino", "Test of String Library");

  String stringOne = String("stringThree = ");
  String stringTwo = String("this string");
  int i=0;

  stringOne = "test one test";
  ATS_PrintTestStatus("43. replace", stringOne.replace("test", "1234") == "1234 one 1234");
  stringOne = "test one test two";
  ATS_PrintTestStatus("44. replace", stringOne.replace("test", "1234") == "1234 one 1234 two");
  stringOne = "zero test one test two";
  ATS_PrintTestStatus("45. replace", stringOne.replace("test", "12345") == F("zero 12345 one 12345 two"));
  stringOne = "zero test one test";
  ATS_PrintTestStatus("46. replace", stringOne.replace("test", "1234") == "zero 1234 one 1234");
  
  stringOne = "test one test";
  ATS_PrintTestStatus("47. replace", stringOne.replace("test", "123") == "123 one 123");
  stringOne = "test one test two";
  ATS_PrintTestStatus("48. replace", stringOne.replace("test", "123") == "123 one 123 two");
  stringOne = F("zero test one test two");
  ATS_PrintTestStatus("49. replace", stringOne.replace("test", "12") == "zero 12 one 12 two");
  stringOne = "zero test one test";
  ATS_PrintTestStatus("50. replace", stringOne.replace("test", "1") == "zero 1 one 1");

  stringOne = "test one test";
  ATS_PrintTestStatus("51. replace", stringOne.replace("test", "12345") == "12345 one 12345");
  stringOne = "test one test two";
  ATS_PrintTestStatus("52. replace", stringOne.replace("test", "123456") == "123456 one 123456 two");
  stringOne = F("zero test one test two");
  ATS_PrintTestStatus("53. replace", stringOne.replace("test", "1234567") == F("zero 1234567 one 1234567 two"));
  stringOne = "zero test one test";
  ATS_PrintTestStatus("54. replace", stringOne.replace("test", "12345678") == F("zero 12345678 one 12345678"));

  stringOne = F("zero test one test");
  ATS_PrintTestStatus("55. replace char", stringOne.replace('e', 'X') == "zXro tXst onX tXst");
  
  stringOne = "Zero";
  stringTwo = "oNe";
  ATS_PrintTestStatus("56. add", stringOne + "124" + stringTwo + 5678 == "Zero124oNe5678");
  ATS_PrintTestStatus("57. toUpperCase", stringOne.toUpperCase() == "ZERO");
  ATS_PrintTestStatus("58. toLowerCase", stringTwo.toLowerCase() == "one");
  stringOne = "-1234567";
  ATS_PrintTestStatus("59. toInt", stringOne.toInt() == -1234567L);
  stringOne = "12345";
  ATS_PrintTestStatus("60. toInt", stringOne.toInt() == 12345);
  

  stringOne = F("flash string");
  ATS_PrintTestStatus("61. assign flash string", stringOne == "flash string");
  stringOne += F(" test");
  ATS_PrintTestStatus("62. append flash string", stringOne == "flash string test");
  ATS_PrintTestStatus("63. append flash string", stringOne == F("flash string test"));
  ATS_PrintTestStatus("64. add flash string", F("1234 ") + stringOne == "1234 flash string test");

  /*
    * Test complete
   */

  ATS_end();
  Serial.println();
  Serial.println(F("Print flash string"));
}


//************************************************************************
void loop()
{


}












