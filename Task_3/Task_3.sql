--Querys with different types of table connections
SELECT * FROM doc_flight_report, cat_flight WHERE doc_flight_report.id_flight = cat_flight.id;
SELECT doc_ticket.id, doc_ticket.place  FROM doc_ticket, doc_flight_report WHERE doc_ticket.flight_report = doc_flight_report.id AND doc_ticket.flight_report = 1;

--Querys with different types of predicate


--Querys with different types of sort
SELECT * FROM doc_ticket ORDER BY place;

