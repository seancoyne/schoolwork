REM Sean Coyne
REM Ch3 Project
REM pg 95 number 4
REM
REM   Program to compute finance charges
REM   and amount owed on a credit card
REM   statement.
REM
REM

CLS

REM first read statements

READ act1$
READ PastDue
READ Payment
READ Purchase

REM first formula -simplify to one

LET financeCharge = .015 * (PastDue - Payment)
LET amountDue = PastDue - Payment + Purchase + financeCharge

REM 2nd read statements

READ act2$
READ PastDue2
READ Payment2
READ Purchase2

REM second formula -simplify to one formula

LET financeCharge2 = .015 * (PastDue2 - Payment2)
LET amountDue2 = PastDue2 - Payment2 + Purchase2 + financeCharge2

REM headings

PRINT TAB(10); "Account"; TAB(20); "Past Due"; TAB(30); "Payments"; TAB(40); "Purchases"; TAB(50); "Finance"; TAB(60); "Current"
PRINT TAB(10); " Number"; TAB(20); "  Amount"; TAB(50); "Charges"; TAB(60); "Amt Due"

REM format string

LET a$ = "         \      \   ###.##    ###.##     ###.##    #.## $$#,###.##"

REM values
PRINT ""
PRINT USING a$; act1$; PastDue; Payment; Purchase; financeCharge; amountDue
PRINT USING a$; act2$; PastDue2; Payment2; Purchase2; financeCharge2; amountDue2


REM data

DATA "123-AB", 123.45, 10.00, 934.00
DATA "456-CD", 134.56, 134.56, 300.00

END





