-- View with CHECK OPTION
-- Display information about sold tickets
-- on current month

CREATE VIEW ticketReportMonth 
AS
SELECT ticket.id, 
			t_report.sell_time, 
			ticket.place, 
			ticket.class,
			ticket.price,
			t_report.period
FROM doc_ticket_report AS t_report
JOIN doc_ticket AS ticket
ON t_report.id_ticket = ticket.id
WHERE t_report.period = datepart(month, GETDATE())
WITH CHECK OPTION;

