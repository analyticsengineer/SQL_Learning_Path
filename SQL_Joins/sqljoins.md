![Banner](https://github.com/analyticsengineer/SQL_Learning_Path/assets/83256563/e8dc87ea-f3de-44c1-a0dc-458f6c0bffa9)

#### 1. INNER JOIN
Returns records that have matching values in both tables.
```
SELECT *
FROM table1 INNER JOIN table1
AS table2 ON table1.column = table2.column;
```

#### 2. LEFT JOIN (or LEFT OUTER JOIN)
Returns all records from the left table, and the matched records from the right table.
```
SELECT *
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
```
#### 3. RIGHT JOIN (or RIGHT OUTER JOIN)
Returns all records from the right table, and the matched records from the left table.
```
SELECT *
FROM table1
RIGHT JOIN table2
ON table1.column = table2.column;
```
#### 4. FULL JOIN (or FULL OUTER JOIN)
Returns all records when there is a match in either the left or the right table.
```
SELECT *
FROM table1
FULL JOIN table2
ON table1.column = table2.column;
```
#### 5. CROSS JOIN
Returns the Cartesian product of the records from both tables.
```
SELECT *
FROM table1
CROSS JOIN table2;
```
#### 6. SELF JOIN
Returns records that have matching values in the same table.
```
SELECT *
FROM table1
INNER JOIN table1 AS table2
ON table1.column = table2.column;
```
