-- Without encryption
-- UI created view selection
SELECT * FROM fullTicket2;
EXEC sp_helptext fullTicket2;
GO

-- Creation of new VIEW with ENCRYPTION
CREATE VIEW fullTicket2 WITH ENCRYPTION 
AS
SELECT        TOP (1) dbo.doc_ticket.id AS [�������� �����], dbo.add_class.class_name AS �����, dbo.doc_ticket.place AS �����, dbo.doc_flight_real.real_time_start, 
                         dbo.doc_flight_real.real_time_end AS [����� �������], dbo.cat_planes.plane AS �������, dbo.add_country.country AS ������, dbo.cat_airports.name AS ��������, 
                         dbo.doc_ticket.price AS ����
FROM            dbo.doc_ticket INNER JOIN
                         dbo.doc_flight_real ON dbo.doc_ticket.flight_report = dbo.doc_flight_real.id INNER JOIN
                         dbo.cat_planes ON dbo.doc_flight_real.id_plane = dbo.cat_planes.id INNER JOIN
                         dbo.cat_flight ON dbo.doc_flight_real.id_flight = dbo.cat_flight.id INNER JOIN
                         dbo.cat_airports ON dbo.cat_flight.airport = dbo.cat_airports.id INNER JOIN
                         dbo.add_country ON dbo.cat_airports.country = dbo.add_country.id INNER JOIN
                         dbo.add_class ON dbo.doc_ticket.class = dbo.add_class.id;
GO


-- View with Encryption
SELECT * FROM fullTicket2;
EXEC sp_helptext fullTicket2;