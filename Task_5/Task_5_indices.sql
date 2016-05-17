-- Covering Index
-- Nonclustered type
-- Query:  SELECT place FROM doc_ticket WHERE place > 200;

CREATE NONCLUSTERED INDEX cl_place ON doc_ticket([place]);

-- Composite index
-- Clustered type
-- Query:   SELECT a.name, c.country FROM cat_airports AS a
--				JOIN add_country AS c ON a.country = c.id;

CREATE CLUSTERED INDEX cl_country ON add_country([id], [country]);

-- Unique index
-- Clustered index
-- Query:  SELECT name FROM cat_airports WHERE name LIKE 'Ï%';

CREATE CLUSTERED INDEX air_name ON cat_airports([name]);