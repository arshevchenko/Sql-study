-- Clustered index on Like predicate
-- For table add_country
-- SELECT * FROM add_country WHERE country LIKE '��%';
-- Screenshots before_country and after_country

SELECT * FROM add_country WHERE country LIKE '��%';
-- CREATE CLUSTERED INDEX cl_country ON add_country([country]);