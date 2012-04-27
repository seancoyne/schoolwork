REM Sean Coyne
REM pg 217 number 28
REM
REM
CLS
LET i = 1
PRINT TAB(10); "Name"; TAB(20); "Att"; TAB(30); "Comp"; TAB(40); "Yards"; TAB(50); "PctComp"; TAB(60); "AvgGain"
DO WHILE i <= 4
READ name$, att, comp, yards
LET pctcomp = comp / att
LET avggain = yards / comp
LET a$ = "##.##"
PRINT TAB(10); name$; TAB(20); att; TAB(30); comp; TAB(40); yards; TAB(50); USING a$; pctcomp; TAB(60); avggain
LET i = i + 1
LOOP
DATA "Elway",466,287,3328
DATA "Favre",543,325,3899
DATA "Johnson",311,195,2258
DATA "Young",316,214,2410
END

