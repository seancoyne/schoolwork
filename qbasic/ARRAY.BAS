CLS
DIM num(1 TO 3)
LET total = 0

FOR i = 1 TO 3
        INPUT "Input num(i)"; num(i)
        LET total = total + num(i)
NEXT i

LET avg = total / 3
PRINT avg
DATA 92,93,94
END

