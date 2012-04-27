DECLARE SUB printLists (name$(), growth!(), loserNum!, loserVal!(), loser$(), gainer$(), gainerVal!(), num!)
DECLARE SUB inputGL (name$(), growth!(), loserNum!, loserVal!(), loser$(), gainer$(), gainerVal!(), num!)
DECLARE SUB findGL (loserNum!, num!, growth!())
DECLARE SUB inputdata (num!, name$(), growth!())
DECLARE SUB sortlist (num!, name$(), growth())
REM Sean Coyne
REM chapter 7 project
REM page 296 #4
REM
CLS
REM get number
INPUT "Number of Soft Drinks: ", num
REM dimension arrays
DIM name$(1 TO num)
DIM growth(1 TO num)
REM input data into array
CALL inputdata(num, name$(), growth())
REM bubble sort list from lowest to highest
CALL sortlist(num, name$(), growth())
REM find number of gainers and losers
CALL findGL(loserNum, num, growth())
REM dimension loser and gainer arrays
DIM loser$(1 TO loserNum)
DIM loserVal(1 TO loserNum)
DIM gainer$((loserNum + 1) TO num)
DIM gainerVal((loserNum + 1) TO num)
REM put data into loser and gainer arrays
CALL inputGL(name$(), growth(), loserNum, loserVal(), loser$(), gainer$(), gainerVal(), num)
REM print lists
CALL printLists(name$(), growth(), loserNum, loserVal(), loser$(), gainer$(), gainerVal(), num)
END

SUB findGL (loserNum, num, growth())
LET loserNum = 0
FOR i = 1 TO num
	IF growth(i) < 0 THEN
		LET loserNum = loserNum + 1
	END IF
NEXT i
LET gainerNum = num - loserNum
END SUB

SUB inputdata (num, name$(), growth())
FOR i = 1 TO num
	INPUT "Name, Percent Growth: ", name$(i), growth(i)
NEXT i
END SUB

SUB inputGL (name$(), growth(), loserNum, loserVal(), loser$(), gainer$(), gainerVal(), num)
FOR i = 1 TO loserNum
	LET loser$(i) = name$(i)
	LET loserVal(i) = growth(i)
NEXT i


FOR i = (loserNum + 1) TO num
	LET gainer$(i) = name$(i)
	LET gainerVal(i) = growth(i)
NEXT i
END SUB

SUB printLists (name$(), growth(), loserNum, loserVal(), loser$(), gainer$(), gainerVal(), num)
PRINT "Losers:"
FOR i = 1 TO loserNum
	PRINT loser$(i); TAB(35); loserVal(i)
NEXT i

REM Blank Line
PRINT " "

PRINT "Gainers:"
FOR i = (loserNum + 1) TO num
	PRINT gainer$(i); TAB(35); gainerVal(i)
NEXT i
END SUB

SUB sortlist (num, name$(), growth())
FOR passNum = 1 TO (num - 1)
	FOR i = 1 TO (num - passNum)
		IF growth(i) > growth(i + 1) THEN
			SWAP growth(i), growth(i + 1)
			SWAP name$(i), name$(i + 1)
		END IF
	NEXT i
NEXT passNum
END SUB

