10 DIM VALUES%(1000)
20 PRINT "This program computes the collatz coefficients for up to 1000 inputs"
30 PRINT "Please input the number of coefficients you want to compute"
40 INPUT LIMIT$
50 LIMIT% = STOI(LIMIT$)
60 IF LIMIT%<999 THEN GOTO 90
70 PRINT CONCAT(CONCAT("The number ", LIMIT$), " is too big")
80 STOP
90 FOR INDEX%=1 TO LIMIT% STEP 1
100 GOSUB 140
110 VALUES%(INDEX%)=RESULT%
120 NEXT INDEX%
130 GOTO 210
140 CURRENT%=INDEX%
150 COUNTER%=1
160 WHILE CURRENT% <> 1
170 IF CURRENT% % 2 = 1 THEN CURRENT% = 3*CURRENT%+1 ELSE CURRENT% = CURRENT% / 2
180 COUNTER% = COUNTER% + 1
190 WEND
195 RESULT%=COUNTER%
200 RETURN
210 FOR INDEX% = LIMIT% TO 0 STEP -1
220 PRINT CONCAT(CONCAT("The Collatz coefficient of ", ITOS(INDEX%)), CONCAT(" IS ", ITOS(VALUES%(INDEX%))))
230 NEXT INDEX%
240 STOP
