DECLARE SUB tip (occupation$, bill!, percentTip!)
REM Sean Coyne
REM pg 114 #54
REM
REM
CLS
INPUT "Enter the person's occupation: ", occupation$
INPUT "Enter the amount of the bill: ", bill
INPUT "Enter the percentage tip: ", percentTip
CALL tip(occupation$, bill, percentTip)
END


SUB tip (occupation$, bill, percentTip)
LET a$ = "$$###.##"
LET tipAmt = bill * (percentTip / 100)
PRINT "Tip the "; occupation$; USING a$; tipAmt
END SUB

