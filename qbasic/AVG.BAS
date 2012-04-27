DECLARE SUB displayAvg (x!, y!, z!, avg!)
DECLARE SUB inputNumbers (x!, y!, z!)
DECLARE SUB calculateAvg (x!, y!, z!, avg!)
REM Sean Coyne
REM pg 124 #30
REM
CLS
CALL inputNumbers(x, y, z)
CALL calculateAvg(x, y, z, avg)
CALL displayAvg(x, y, z, avg)

SUB calculateAvg (num1, num2, num3, avg)
LET avg = (num1 + num2 + num3) / 3
END SUB

SUB displayAvg (num1, num2, num3, avg)
PRINT "The average of"; num1; ","; num2; "and"; num3; "is"; avg
END SUB

SUB inputNumbers (num1, num2, num3)
INPUT "Input three numbers separated by comma: "; num1, num2, num3
END SUB

