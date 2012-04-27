REM Sean Coyne
REM
REM chapter 3.5 number 32
REM

CLS

READ occu$, jobs, change, weekly
READ occu2$, jobs2, change2, weekly2
READ occu3$, jobs3, change3, weekly3

REM headings

PRINT "                                 Number                 Weekly"
PRINT "                                 of Jobs       %        Median"
PRINT "                   Occupation    in 1990     Change     Earning"

REM format definitions

LET b$ = "\                        \ #,###,###       ##      $$#,###"
LET a$ = "\                  \ #,###,###       ##      $$#,###"
LET c$ = "\       \  #,###,###       ##      $$#,###"

PRINT ""

REM data

PRINT USING a$; TAB(30 - LEN(occu$)); occu$; jobs; change; weekly
PRINT USING b$; TAB(30 - LEN(occu2$)); occu2$; jobs2; change2; weekly2
PRINT USING c$; TAB(30 - LEN(occu3$)); occu3$; jobs3; change3; weekly3

DATA "Computer Programmer",565000, 63, 653
DATA "Teacher, Secondary School", 1280000,45,648
DATA "Physician",580000,41,2996

END



