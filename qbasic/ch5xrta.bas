REM Sean Coyne
REM Ch 5 project extra credit
REM page 180 number 6
REM
REM days = days in month
REM m = number of month
REM y = year
REM d = date
REM x = number of the day of the week
REM w = number to divide by 7 to get day of week
REM

CLS

INPUT "Enter Year (xxxx)", y
INPUT "Enter Month (1-12)", m


IF m = 2 OR m = 1 THEN
	LET m = m + 12
	LET y = y - 1
ELSE
	LET m = m
END IF

SELECT CASE m
CASE 13, 3, 5, 7, 8, 10, 12
	LET days = 31
CASE (14 AND y MOD 4 = 0), (m = 14 AND y MOD 100 = 0 AND y MOD 400 <> 0)
	LET days = 29
CASE (14 AND y MOD 4 <> 0)
	LET days = 28
CASE 4, 6, 9, 11
	LET days = 30
END SELECT

SELECT CASE days
CASE 31
	INPUT "Enter Date (1-31)", d
CASE 30
	INPUT "Enter Date (1-30)", d
CASE 29
	INPUT "Enter Date (1-29)", d
CASE 28
	INPUT "Enter Data (1-28)", d
END SELECT

LET w = d + 2 * m + INT(.6 * (m + 1)) + y + INT(y / 4) - INT(y / 100) + INT(y / 400) + 2

LET x = w MOD 7

SELECT CASE x
CASE 0
	PRINT "The day of the week was Saturday"
CASE 1
	PRINT "The day of the week was Sunday"
CASE 2
	PRINT "The day of the week was Monday"
CASE 3
	PRINT "The day of the week was Tuesday"
CASE 4
	PRINT "The day of the week was Wednesday"
CASE 5
	PRINT "The day of the week was Thursday"
CASE 6
	PRINT "The day of the week was Friday"
END SELECT

END
	

