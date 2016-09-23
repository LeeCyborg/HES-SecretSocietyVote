int inFavor = 0; 
boolean voted[] = { false, false, false, false, false, 
                    false, false, false, false, false,
                    false, false, false, false, false, 
                    false, false, false, false, false,
                    false, false, false, false, false, 
                    false, false, false, false, false,
                    false, false, false, false, false, 
                    false, false, false, false, false,
                    false, false, false, false, false};
void setup() {
  Serial.begin(9600); 
  for (int i = 2; i < 36; i++) { 
    pinMode(i, INPUT_PULLUP);
  }
}

void loop() {
  if(!digitalRead(2)){ 
    inFavor = 0;
      for(int i = 0; i < sizeof(voted); i ++){ 
        voted[i] = false;
      }
  }
  for(int i = 3; i < 36; i ++){ 
   // Serial.println(i);
      if(!digitalRead(i)){ 
          if(!voted[i]) { 
            voted[i] = true;
            inFavor +=1;
          }
      }
  }
  Serial.write(inFavor); 
}
