REM Sean Coyne
REM pg 245 #30
REM
REM
CLS
DIM bin(1 TO 5)
DIM cost(1 TO 5)
DIM sold(1 TO 5)
DIM leftover(1 TO 5)
DIM revday(1 TO 5)
LET revTotal = 0
FOR i = 1 TO 5
    READ bin(i), cost(i), sold(i)
    LET leftover(i) = 45 - sold(i)
    LET revday(i) = sold(i) * cost(i)
    LET revTotal = revTotal + revday(i)
    IF leftover(i) < 20 THEN
        PRINT bin(i)
    END IF
NEXT i
DATA 1,3.00,10
DATA 2,12.25,30
DATA 3,37.45,9
DATA 4,7.49,42
DATA 5,24.95,17
END





