DECLARE SUB displayBill (pizza!, fries!, sodas!, total!)
DECLARE FUNCTION calcTotal! (pizza!, fries!, sodas!)
DECLARE SUB requestOrder (pizza!, fries!, sodas!)
REM Sean Coyne
REM Ch 4 Project
REM pg 141 number 4
REM
CLS

CALL requestOrder(pizza, fries, sodas)

LET total = calcTotal(pizza, fries, sodas)

CALL displayBill(pizza, fries, sodas, total)

END

FUNCTION calcTotal (pizza, fries, sodas)
REM calculate total

LET pizzaTot = pizza * 1.25
LET friTot = fries * 1
LET sodaTot = sodas * .75

calcTotal = pizzaTot + friTot + sodaTot

END FUNCTION

SUB displayBill (pizza, fries, sodas, total)
REM display itemized bill

PRINT ""
PRINT TAB(10); "Item"; TAB(30); "Quantity"; TAB(40); "Price"
PRINT TAB(10); "pizza slices"; TAB(30); pizza; TAB(40); USING "###.##"; pizza * 1.25
PRINT TAB(10); "fries"; TAB(30); fries; TAB(40); USING "###.##"; fries * 1
PRINT TAB(10); "soft drinks"; TAB(30); sodas; TAB(40); USING "###.##"; sodas * .75
PRINT ""

PRINT TAB(10); "Total"; TAB(40); USING "###.##"; total
END SUB

SUB requestOrder (pizza, fries, sodas)
REM request customer order

INPUT "How many pizza slices? ", pizza
INPUT "How many fries? ", fries
INPUT "How many soft drinks? ", sodas
END SUB

