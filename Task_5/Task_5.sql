-- Clustered index on Like predicate
-- For table add_country
-- SELECT * FROM add_country WHERE country LIKE 'Ма%';
-- Screenshots before_country and after_country

SELECT * FROM add_country WHERE country LIKE 'Ма%';
-- CREATE CLUSTERED INDEX cl_country ON add_country([country]);