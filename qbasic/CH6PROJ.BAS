DECLARE SUB showmenu (startbal!, totalamtc!, totaldeposit!, servcharg!, closebal!, numcheck!)
DECLARE SUB table (startbal!, totalamtc!, totaldeposit!, servcharg!, closebal!, numcheck!)
DECLARE SUB check (startbal!, totalamtc!, totaldeposit!, servcharg!, closebal!, numcheck!)
DECLARE SUB deposit (startbal!, totalamtc!, totaldeposit!, servcharg!, closebal!, numcheck!)
DECLARE SUB quit (startbal!, totalamtc!, totaldeposit!, servcharg!, closebal!, numcheck!)

REM Sean Coyne
REM Ch 6 Project
REM pg 226 #2
REM -------------------------------------------------------------------------------------------
REM variables:
REM
REM totalamtc is total amount in checks
REM totaldeposit is total amount in deposits
REM startbal is the starting balance
REM servcharg is the service charge total
REM closebal is the closing balance for the day
REM numcheck is the total number of checks
REM tran$ is the transaction type for menu chooser
REM a$ is the print using format for displaying the table
REM ---------------------------------------------------------------------------------------------

CLS
REM zero the variables to allow for running tally
LET totalamtc = 0
LET totaldeposit = 0
LET numcheck = 0
INPUT "Enter balance at beginning of month: ", startbal
CALL showmenu(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
CALL table(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
END

SUB check (startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
REM get amount of check and add to total
INPUT "Enter an Amount: ", amt
LET totalamtc = (totalamtc + amt)
LET numcheck = (numcheck + 1)
CALL showmenu(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
END SUB

SUB deposit (startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
REM get amount of deposit and add to total
INPUT "Enter an Amount: ", dep
LET totaldeposit = (totaldeposit + dep)
CALL showmenu(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
END SUB

SUB quit (startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
REM quit the program and calculate the totals
LET closebal = (startbal + totaldeposit - totalamtc)
IF closebal < 300 THEN
    LET servcharg = (.25 * numcheck)
    LET closebal = (closebal - servcharg)
ELSE LET closebal = closebal
END IF
END SUB

SUB showmenu (startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
REM menu chooser
INPUT "Enter a transaction (C, D, Q): ", trans$
SELECT CASE trans$
    CASE "C", "c"
         CALL check(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
    CASE "D", "d"
         CALL deposit(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
    CASE "Q", "q"
         CALL quit(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
    CASE ELSE
         PRINT "Invalid Response."
         PRINT "Enter C, D, or Q for Check, Deposit, or Quit."
         CALL showmenu(startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
END SELECT
END SUB

SUB table (startbal, totalamtc, totaldeposit, servcharg, closebal, numcheck)
REM print the totals
LET a$ = "\                      \#######.##"
PRINT USING a$; "Beginning Balance:"; startbal
PRINT USING a$; "Total amount of checks:"; totalamtc
PRINT USING a$; "Total amout of deposits:"; totaldeposit
PRINT USING a$; "Service Charge:"; servcharg
PRINT USING a$; "Closing Balance:"; closebal
END SUB

