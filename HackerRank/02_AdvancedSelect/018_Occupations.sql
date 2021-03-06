/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:
Column | Type 
--- | ---
Name | String
Occupation | String

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor

Sample input
Name | Occupation
--- | ---
Samantha | Doctor 
Julia | Actor 
Maria | Actor 
Meera | Singer 
Ashely | Professor
Ketty | Professor
Christeen | Professor
Jane | Actor 
Jenny | Doctor 
Priya | Singer

Sample output
Jenny Asshley Meera Jane 
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria

Explanation

The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.
*/

SELECT Name AS Doctor, Name AS Professor, Name AS Singer, Name AS Actor 
FROM OCCUPATIONS
GROUP BY Occupation 
ORDER BY Name ASC;

SELECT Name
FROM OCCUPATIONS
WHERE Occupation = "Doctor"
ORDER BY Name ASC;

SELECT 
  IF (Occupation='Doctor', Name, )
