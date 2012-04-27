 REM Sean Coyne
 REM Chapter 5 Project
 REM American Heart Association
 REM
 REM
 REM
 CLS
 INPUT "Enter name of food:", food$
 INPUT "Enter number of calories per serving:", calories
 INPUT "Enter grams of fat per serving:", fat
 
 LET percent = (((fat * 9) / calories) * 100)

 PRINT food$; " contains "; percent; "% calories from fat"
 IF percent < 30 THEN
 PRINT food$; " meets the AHA recomendation"
 ELSE
 PRINT food$; " exceeds the AHA recomendation"
 END IF
 END


