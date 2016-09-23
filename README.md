# HES-SecretSocietyVote

1. Download Processing and Arduino
2. votething -> Open votething.pde
3. Find the Serial port by UNCOMMENTING line 14
4. Press RUN
5. Check the PRINT for ""/dev/cu.usbmodem1451"" 
6. Whichever number that is, put it in line 13 "  String portName = Serial.list()[NUMBER HERE];" 
7. Recomment line 14
Enjoy

No Pins 21 and 23!!

If you need to edit Arduino code: 
Change Serial.write to Serial.println 
