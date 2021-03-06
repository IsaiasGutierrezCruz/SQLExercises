/*
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID
Input format

Column | Type 
ID | Integer
Name | String 
Marks | Integer

The STUDENTS table is describend as follos:
column only contains uppercase (A-Z) and lowercase (a-z) letters

Sample input
ID | Name | Marks 
1 | Ashley | 81
2 | Samantha | 75
3 | Julia | 76
4 | Belvet | 84
 */

SELECT NAME
FROM STUDENTS 
WHERE Marks > 75
ORDER BY RIGHT(Name, 3) DESC, ID ASC;
