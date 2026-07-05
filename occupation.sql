select [Doctor], [Professor], [Singer], [Actor] FROM(
    select 
    Name,
    Occupation,
row_number() over (partition by Occupation order by Name asc) as sthidfkk
from OCCUPATIONS
) A
PIVOT (
    
    MAX(Name)
    for Occupation in([Doctor], [Professor], [Singer], [Actor])
) as B
  
--OCCUPATION(MEDIUM)-HACKERRANK--
-STEP 1: USE 'row_number() over (partition by Occupation order by Name asc) as sthidfkk' TO LABEL EACH NAME IN ORDER WHICH HAS SAME OCCUPATION.
 -EXAMPLE: A DOCTER 1
           B DOCTER 2 
-STEP 2: USE PIVOT TO CHANGE ROWS TO COLUMNS( HOWEVER, WHEN WE USE PIVOT, WE HAVE TO USE AGGREGATE FUNCTION IN IT. THEREFORE, I USE MAX FOR NAME JUST TO PASS ITS RULE.
         IT DOESN'T MATTER BECAUSE EACH ROW IS TRANSFORMED TO A BLOCK WHEN WE USE CLAUSE IN STEP 1 SO ADDING MAX IS NOT A PROBLEM)
 -EXAMPLE: DOCTOR  PROFESSOR
              A      C
              B      D
