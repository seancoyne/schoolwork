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
FOR i = 1 TO num
	INPUT "Name, Percent Growth: ", name$(i), growth(i)
NEXT i


	
REM bubble sort list from lowest to highest
FOR passNum = 1 TO (num - 1)
	FOR i = 1 TO (num - passNum)
		IF growth(i) > growth(i + 1) THEN
			SWAP growth(i), growth(i + 1)
			SWAP name$(i), name$(i + 1)
		END IF
	NEXT i
NEXT passNum
			
REM find number of gainers and losers
LET loserNum = 0
FOR i = 1 TO num
	IF growth(i) < 0 THEN
		LET loserNum = loserNum + 1
	END IF
NEXT i
LET gainerNum = num - loserNum

REM dimension loser and gainer arrays
DIM loser$(1 TO loserNum)
DIM loserVal(1 TO loserNum)
DIM gainer$((loserNum + 1) TO num)
DIM gainerVal((loserNum + 1) TO num)

REM put data into loser array
FOR i = 1 TO loserNum
	LET loser$(i) = name$(i)
	LET loserVal(i) = growth(i)
NEXT i

REM put data into gainer array
FOR i = (loserNum + 1) TO num
	LET gainer$(i) = name$(i)
	LET gainerVal(i) = growth(i)
NEXT i



REM print lists

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

END





