REM example 1 page 236
CLS
DIM ws$(1 TO 5)
FOR i = 1 TO 5
        READ ws$(i)
NEXT i
INPUT "Enter a number from 1 to 5: ", n
PRINT "The "; ws$(n); " won World Series number"; n
DATA Red Sox, Giants, White Sox, Cubs, Cubs
END

