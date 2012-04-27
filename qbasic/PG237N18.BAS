REM Sean Coyne
REM pg 243 # 18
REM
REM
CLS
DIM name$(1 TO 8)
DIM score$(1 TO 8)
LET total = 0
LET highScore = 0
FOR student = 1 TO 8
    READ name$(student), score(student)
    LET total = total + score(student)
    IF score(student) > highScore THEN
        LET highScore = score(student)
        LET highScorer$ = name$(student)
    END IF
NEXT student
PRINT highScorer$, highScore
DATA Richard Dolen,135,Geraldine Ferraro,114
DATA James B. Fraser,92,John H. Maltby,91
DATA Paul H. Monsky,150,Max A. Plager,114
DATA Robert A. Schade,91,Barbara M. White,124
END

