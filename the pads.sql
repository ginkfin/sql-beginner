SELECT 
CONCAT(Name,'(',LEFT(Occupation,1),')') as sthidfkk
FROM OCCUPATIONS
order by CONCAT(Name,'(',LEFT(Occupation,1),')') asc
;
select 
 concat('There are a total of ',count(Occupation),' ',lower(Occupation),'s.') as ocurrences
 from OCCUPATIONS
 group by Occupation
 order by count(Occupation) asc, Occupation asc;

-- EXPLANATION --

-- FIRST REQUIREMENT:
-- STEP 1: Format - Extract the first letter of Occupation and append it to Name using CONCAT() and LEFT().
-- STEP 2: Sort - Order the formatted names in ascending order.

-- SECOND REQUIREMENT:
-- STEP 1: Aggregate - Group data by Occupation to calculate the total count.
-- STEP 2: Format - Build the required output string using CONCAT() and LOWER().
-- STEP 3: Sort - Order by count (ASC), then by Occupation (ASC) to break ties.
