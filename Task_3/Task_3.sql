--Querys with different types of table connections
SELECT * FROM doc_flight_report, cat_flight 
WHERE doc_flight_report.id_flight = cat_flight.id;

SELECT doc_ticket.id, doc_ticket.place  
FROM doc_ticket, doc_flight_report 
WHERE doc_ticket.flight_report = doc_flight_report.id AND doc_ticket.flight_report = 1;


--Querys with different types of predicate
--Like:
SELECT * FROM add_country WHERE country LIKE 'япони€';
--Any:
SELECT * FROM doc_ticket WHERE flight_report = ANY(
	SELECT id_flight_report FROM doc_shedule 
);
--Exists:
SELECT id FROM doc_flight_report WHERE EXISTS(
	SELECT id_flight_report FROM doc_shedule
);
--Between:
SELECT * FROM doc_ticket WHERE place BETWEEN 1 and 3; 
--In:
SELECT * FROM doc_flight_report WHERE id IN (
	SELECT id_flight_report FROM doc_shedule
);


--Querys with CASE
SELECT id, CASE	WHEN class = 0 THEN 'Econom'
						WHEN class = 1 THEN 'Busines'
						ELSE 'First class'
				END AS class_type
FROM doc_ticket;


--Querys with included functions
SELECT COALESCE(place, price, 0.0) FROM doc_ticket ;

--Querys string functions
SELECT UPPER(class_name) AS upper_class_name FROM add_class;
SELECT LOWER(class_name) AS upper_class_name FROM add_class;
SELECT REVERSE(class_name) AS reversed_class_name FROM add_class;
SELECT STUFF(class_name, 1, 0, 'Ёто класс ') AS stuff__class_name FROM add_class;
SELECT REPLACE(class_name, 'Ёконом', 'Econom') AS replaced_class_name FROM add_class;

--Querys with date functions
SELECT id, date_end, start_time, DATEADD(hour, 3,end_time) AS end_time_hours FROM cat_flight WHERE id = 1;
SELECT id, date_end, DATEPART(hour, start_time) AS start_time_hours, DATEPART(hour, end_time) AS end_time_hours FROM cat_flight;

--Querys with different types of sort
SELECT * FROM doc_ticket ORDER BY place;
SELECT class, COUNT(class) AS place_count  FROM doc_ticket GROUP BY class;


