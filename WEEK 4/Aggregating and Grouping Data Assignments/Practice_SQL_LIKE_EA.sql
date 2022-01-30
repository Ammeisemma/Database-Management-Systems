-- Created by: Emmanuel Almonte.
-- Course: CIS 205.
-- Professor: Craig Nelson.
-- Last modified 08/09/21.


-- Example using the LIKE operator with the percentage wild card.
-- Finds employees whose first name start with "a".

SELECT
employeeNumber, lastName, firstName

FROM
employees

WHERE
firstName LIKE 'a%';

-- Example using LIKE operator to find employees whose last names end with "on".

SELECT
employeeNumber,
lastName,
firstName

FROM
employees

WHERE
lastName LIKE '%on';

-- Example of using LIKE operator to find employees whoc last name contains "on" anywhere in the their name.

SELECT
employeeNumber,
lastName,
firstName

FROM
employees

WHERE
lastname LIKE '%on%';

-- Example of LIKE operator using the underscore to find employees whose name start with T and end with m.

SELECT employeeNumber, lastName, firstName

FROM
employees

WHERE
firstname LIKE 'T_m';

-- Example using the NOT operator inside of the LIKE operator.

SELECT employeeNumber, lastName, firstName

FROM
employees

WHERE
lastName NOT LIKE 'B%';

-- Example of LIKE operator with an \ Charcter in order to using the underscore in the search.

SELECT productCode, productName

FROM
products

WHERE
productCode LIKE '%\_20%';

--  Example of LIKE operator with an "ESCAPE" Charcter in order to using the underscore in the search.

SELECT productCode, productName

FROM
products

WHERE
productCode LIKE '%$_20%' ESCAPE '$';