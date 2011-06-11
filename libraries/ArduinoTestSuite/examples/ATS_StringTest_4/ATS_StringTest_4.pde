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

  String stringOne;
  String stringTwo;
  int i=0;

  stringOne = F("tst");
  char *ptr = NULL;
  stringOne.append(ptr);
  ATS_PrintTestStatus("65. append", stringOne == "tst");
  ATS_PrintTestStatus("66. concat", stringOne + "123" + ptr + "hi" == "tst123hi");
  ATS_PrintTestStatus("67. append", stringOne == "tst");

  stringOne = F("TST");
  stringOne.append("");
  ATS_PrintTestStatus("68. append", stringOne == "TST");
  ATS_PrintTestStatus("69. concat", stringOne + "" == "TST");
  ATS_PrintTestStatus("70. append", stringOne == "TST");

  stringOne = F("ZXDY");
  stringOne.append("123");
  ATS_PrintTestStatus("71. append", stringOne == "ZXDY123");
  ATS_PrintTestStatus("72. concat", stringOne + "567" == "ZXDY123567");
  ATS_PrintTestStatus("73. append", stringOne == "ZXDY123");

  stringOne = F("ra");
  stringOne.append(F("573"));
  ATS_PrintTestStatus("74. append", stringOne == "ra573");
  ATS_PrintTestStatus("75. concat", stringOne + F("4543") == "ra5734543");
  ATS_PrintTestStatus("76. append", stringOne == "ra573");

  char c = '7';
  unsigned char uc = '9';
  stringOne = F("tywe");
  stringOne.append(c);
  stringOne.append(uc);
  ATS_PrintTestStatus("77. append", stringOne == F("tywe79"));
  stringOne += uc;
  stringOne += c;
  ATS_PrintTestStatus("78. append", stringOne == F("tywe7997"));
  c = '.';
  ATS_PrintTestStatus("79. concat", stringOne + c == F("tywe7997."));
  uc = 'R';
  ATS_PrintTestStatus("80. concat", stringOne + uc == F("tywe7997R"));
  ATS_PrintTestStatus("81. append", stringOne == F("tywe7997"));

  i = -32768;
  stringOne = F("u572h");
  stringOne.append(i);
  ATS_PrintTestStatus("82. append", stringOne == F("u572h-32768"));
  stringOne += i;
  ATS_PrintTestStatus("83. append", stringOne == F("u572h-32768-32768"));
  i = -25000;
  ATS_PrintTestStatus("84. concat", stringOne + i == F("u572h-32768-32768-25000"));
  ATS_PrintTestStatus("85. append", stringOne == F("u572h-32768-32768"));

  i = 24173;
  stringOne = F("5u1klj");
  stringOne.append(i);
  ATS_PrintTestStatus("86. append", stringOne == F("5u1klj24173"));
  stringOne += i;
  ATS_PrintTestStatus("87. append", stringOne == F("5u1klj2417324173"));
  ATS_PrintTestStatus("88. concat", stringOne + i == F("5u1klj241732417324173"));
  ATS_PrintTestStatus("89. append", stringOne == F("5u1klj2417324173"));

  unsigned int u = 65190;
  stringOne = F("i8skjm");
  stringOne.append(u);
  ATS_PrintTestStatus("90. append", stringOne == F("i8skjm65190"));
  stringOne += u;
  ATS_PrintTestStatus("91. append", stringOne == F("i8skjm6519065190"));
  ATS_PrintTestStatus("92. concat", stringOne + u == F("i8skjm651906519065190"));
  ATS_PrintTestStatus("93. append", stringOne == F("i8skjm6519065190"));

  long n = -91093847;
  stringOne = F("ywh");
  stringOne.append(n);
  ATS_PrintTestStatus("94. append", stringOne == F("ywh-91093847"));
  stringOne += n;
  ATS_PrintTestStatus("95. append", stringOne == F("ywh-91093847-91093847"));
  ATS_PrintTestStatus("96. concat", stringOne + n == F("ywh-91093847-91093847-91093847"));
  ATS_PrintTestStatus("97. append", stringOne == F("ywh-91093847-91093847"));

  unsigned long un = 4294961479;
  stringOne = F("iu");
  stringOne.append(un);
  ATS_PrintTestStatus("98. append", stringOne == F("iu4294961479"));
  un -= 4;
  stringOne += un;
  ATS_PrintTestStatus("99. append", stringOne == F("iu42949614794294961475"));
  ATS_PrintTestStatus("100. concat", stringOne + un == "iu429496147942949614754294961475");
  ATS_PrintTestStatus("101. append", stringOne == F("iu42949614794294961475"));

  /*
    * Test complete
   */

  ATS_end();
}


//************************************************************************
void loop()
{

}


