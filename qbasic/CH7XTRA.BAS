DECLARE SUB menu ()
DECLARE SUB Add ()
DECLARE SUB remove ()
DECLARE SUB addwaiting ()
DECLARE SUB addflight (name$, seatchoice!)
REM Sean Coyne
REM ch7 extra credit
REM pg 298 number 8
REM
REM
CLS

REM set variables
LET numLeft = 0
REM display menu
PRINT "(1) Add a passenger to the flight or waiting list."
PRINT "(2) Remove a passenger from the flight."
PRINT "(3) Quit"
INPUT "What would you like to do?", a
CALL menu
END

SUB Add
INPUT "Name of passenger: ", name$

REM display chart of seats here

IF numLeft <> 0 THEN
        INPUT "Which seat would you like?", seatchoice
        CALL addflight(name$, seatchoice)
ELSE
        PRINT "No seats available, placing name on waiting list."
        CALL addwaiting(name$)
END SUB

SUB addflight (name$, seatchoice)
LET seat$(seatchoice) = name$
END SUB

SUB addwaiting (numWaiting, name$)

END SUB

SUB menu
SELECT CASE a
        CASE 1
                CALL Add
        CASE 2
                CALL remove
        CASE 3
                END
        CASE ELSE
                PRINT "Invalid choice, please choose again."
                CALL menu
END SELECT
END SUB

SUB remove
INPUT "Name of passenger?", name$

REM search seat array for name$

REM delete name$ from array if found

REM make seat available if waiting list empty

REM if people in waiting list then add first one to seat and reorgainize list

END SUB

