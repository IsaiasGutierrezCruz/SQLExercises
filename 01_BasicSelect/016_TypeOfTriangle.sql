/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table: 
- Equilateral: it's a triangle with 3 sides of equal length 
- Isosceles: It's a triangle with 2 sides of equal length 
- Scalene: it's a triangle with 3 sides of different lengths 
- Not A Triangle: The given values of A, B, and C don't form a triangle

Input format 
The TRIANGLES table is described as follows:
Column | Type 
--- | ---
A | Integer
B | Integer
C | Integer

Each row in the table dentoes the lengths of each of a triangle's three sides 

Sample input: 
A | B | C
--- | --- | ---
20 | 20 | 23
20 | 20 | 20 
20 | 21 | 22
13 | 14 | 30

Sample output: 
Isosceles
Equilateral
Scalene
Not A Triangle
Explanation

Values in the tuple (20,20,23) form an Isosceles triangle, because A = B.
Values in the tuple (20, 20, 20)  form an Equilateral triangle, because A = B= C. Values in the tuple (20,21,22) form a Scalene triangle, because A dif B dif C.
Values in the tuple (13,14,30) cannot form a triangle because the combined value of sides A and B is not larger than that of side C.
*/
SELECT 
CASE 
  WHEN 2 * GREATEST(A, B, C) < (A + B + C) THEN 
    CASE 
      WHEN A = B AND B = C THEN "Equilateral"
      WHEN A = B OR A = C  OR B = C THEN "Isosceles"
      ELSE "Scalene"
    END
  ELSE "Not A Triangle"
END
FROM TRIANGLES;
