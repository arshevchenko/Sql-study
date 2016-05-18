 -- Procedure for counting and summing
 -- classes sold ticket revenue
CREATE PROCEDURE soldTicketQtySum
	@FlightNum AS INT,
	@ClassType AS INT
  AS
	SELECT dt.flight_report,
				ac.class_name,
				COUNT(*) AS quantity,
				SUM(dt.price) AS Total_Sum
	FROM doc_ticket AS dt
	JOIN add_class AS ac
	ON ac.id = dt.class
	WHERE dt.class = @ClassType AND sold = 1 AND dt.flight_report = @FlightNum
	GROUP BY dt.flight_report, ac.class_name
GO

EXEC soldTicketQtySum  0, 1;
GO

-- Procedure for checking
-- availability of flight
-- by DATETIME
CREATE PROCEDURE checkFlgAva
	@dateCheck DATETIME,
	@result VARCHAR(50) OUTPUT
  AS
	IF EXISTS(SELECT * FROM cat_flight WHERE start_time LIKE @dateCheck)
		BEGIN
			SELECT * FROM cat_flight WHERE start_time LIKE @dateCheck;
			SET @result = 'Available';
		END
	ELSE
		BEGIN
			SET @result = 'Not Available';
		END
GO

DECLARE @res VARCHAR(50);

EXEC checkFlgAva '2016-02-05T09:38:10', @res OUTPUT;
SELECT @res AS [Availability];
EXEC checkFlgAva '2016-01-05T09:38:10', @res OUTPUT;
SELECT @res AS [Availability];
GO
