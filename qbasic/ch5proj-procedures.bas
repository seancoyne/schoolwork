 REM Sean Coyne
 REM Chapter 5 Project
 REM American Heart Association
 REM
 REM
 REM
 CLS
 
call inputInfo (food$, calories, fat)

 
LET percent = calcPercent(calories, fat)

call displayResults(food$, calories, fat, percent)


 END

SUB inputInfo (food$, calories, fat)
 INPUT "Enter name of food:", food$
 INPUT "Enter number of calories per serving:", calories
 INPUT "Enter grams of fat per serving:", fat
END SUB

FUNCTION calcPercent (calories, fat)
let calcPercent = (((fat * 9) / calories) * 100)
END FUNCTION

SUB displayResults(food$, calories, fat, percent)
 PRINT food$; " contains "; percent; "% calories from fat"
 IF percent < 30 THEN
 PRINT food$; " meets the AHA recomendation"
 ELSE
 PRINT food$; " exceeds the AHA recomendation"
 END IF
END SUB