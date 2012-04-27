REM Sean Coyne
REM ch 8 project
REM page 326 #1
REM
CLS
OPEN "f:\coynes\qbasic\drinks.dat" FOR OUTPUT AS #1
READ name$, percent
DO WHILE name$ <> "EOD"
        WRITE #1, name$, percent
        READ name$, percent
LOOP
CLOSE #1
DATA Coke Classic, 20.2
DATA Pepsi, 15.3
DATA Diet Coke, 9.4
DATA Mountain Dew, 5.7
DATA Dr. Pepper, 5.7
DATA Sprite, 5.6
DATA Diet Pepsi, 5.3
DATA 7 Up, 2.3
DATA EOD, 0
END


