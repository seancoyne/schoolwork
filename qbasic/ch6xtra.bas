DECLARE SUB calctotal (number, day, totalcost)
DECLARE SUB getdata (number!, day!, totalcost!)
REM Sean Coyne
REM Chapter 6 Project Extra Credit
REM pg 231 #10
REM
REM
CLS

INPUT "Enter a day from 1 through 12: ", day

LET number = 0
LET totalcost = 0
LET a$ = "\      \$$######.##"

CALL getdata(number, day, totalcost)

PRINT USING a$; "Cost: "; totalcost

CALL calctotal(number, day, totalcost)

REM data
DATA 1,"partridge in a pear tree",27.50
DATA 2, "turtle doves",25.00
DATA 3,"French Hens",5.00
DATA 4,"calling birds",70.00
DATA 5,"golded rings",60.00
DATA 6,"geese-a-laying",25.00
DATA 7,"swans-a-swimming",1000.00
DATA 8,"maids-a-milking",4.25
DATA 9,"ladies dancing",289.50
DATA 10,"lords-a-leaping",292.50
DATA 11,"pipers piping",95.75
DATA 12,"drummers drumming",95.00

END

SUB calctotal (number, day, totalcost)
REM calculate the total cost of the twelve days of christmas
RESTORE
LET num = 0

DO

DO WHILE number <> 1
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 2
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 3
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 4
READ number, item$, cost
LET total = total + (number * cost)

LOOP

RESTORE

DO WHILE number <> 5
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 6
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 7
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 8
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 9
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 10
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 11
READ number, item$, cost
LET total = total + (number * cost)
LOOP

RESTORE

DO WHILE number <> 12
READ number, item$, cost
LET total = total + (number * cost)
LET num = num + 1
LOOP

RESTORE

LOOP UNTIL num = 12

LET b$ = "\                              \$$##########.##"
PRINT USING b$; "Total Cost for the twelve days: "; total

END SUB

SUB getdata (number, day, totalcost)
REM find out what items are given on what day, and the total cost for that day

PRINT "The Gifts for day"; day; "are:"
DO WHILE number <> day
READ number, item$, cost
PRINT number, item$
LET totalcost = totalcost + (cost * number)
LOOP

RESTORE

END SUB

