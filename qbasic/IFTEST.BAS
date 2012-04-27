REM find the larger of two numbers
CLS
INPUT "First Number"; firstNum
INPUT "Second Number"; secondNum
IF firstNum > secondNum THEN
                LET largerNum = firstNum
        ELSE
                LET largerNum = secondNum
END IF
PRINT "The larger number is"; largerNum
END

