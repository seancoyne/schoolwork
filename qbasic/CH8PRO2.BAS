REM Sean Coyne
REM ch 8 Project
REM page 326 #1
REM
CLS
OPEN "f:\coynes\qbasic\drinks.dat" FOR INPUT AS #1
LET markettotal = 0

DO WHILE NOT EOF(1)
INPUT #1, name$, percent
LET marketshare = (percent / 100) * 40
LET markettotal = markettotal + marketshare
PRINT name$, marketshare
LOOP
LET topPercent = markettotal / 40
CLOSE #1
PRINT "The market share percentage for the top eight is: ", (topPercent * 100)
END


