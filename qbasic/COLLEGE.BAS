REM Sean Coyne
REM pg 70 # 22
CLS
READ name$, enrollment, faculty
LET ratio1 = enrollment / faculty
PRINT name$; " Student/Faculty Ratio"; ratio1
READ name$, enrollment, faculty
LET ratio2 = enrollment / faculty
PRINT name$; ratio2
READ name$, enrollment, faculty
LET ratio3 = enrollment / faculty
PRINT name$; ratio3
LET total = ratio1 + ratio2 + ratio3
PRINT "Total Student/Faculty Ratio"; total
DATA "Ohio State",48352,2518
DATA "Univ. of MD, College Park",31475,1849
DATA "Princeton",6340,890
END


