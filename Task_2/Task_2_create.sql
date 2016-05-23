CREATE TABLE add_class(
    id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	class_name VARCHAR(255) UNIQUE NOT NULL 
);
GO

CREATE TABLE add_country(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	country VARCHAR(255) UNIQUE NOT NULL
);
GO

CREATE TABLE add_status(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	status_type VARCHAR(255) UNIQUE NOT NULL
);
GO

CREATE TABLE cat_airports(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	name VARCHAR(255) NOT NULL,
	country INT FOREIGN KEY REFERENCES add_country(id)
);
GO

CREATE TABLE cat_planes(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	plane VARCHAR(255) NOT NULL,
	place_count INT 
);
GO

CREATE TABLE cat_flight(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	start_time DATETIME NOT NULL,
	end_time DATETIME NOT NULL,
	airport INT FOREIGN KEY REFERENCES cat_airports(id)
);
GO

CREATE TABLE doc_ticket(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	place INT NOT NULL,
	class INT FOREIGN KEY REFERENCES add_class(id),
	price FLOAT  NOT NULL,
	sold BIT DEFAULT 0 NOT NULL
);

CREATE TABLE doc_flight_real(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	id_flight INT FOREIGN KEY REFERENCES cat_flight(id),
	id_plane INT FOREIGN KEY REFERENCES cat_planes(id),
	real_time_start DATETIME NOT NULL,
	real_time_end DATETIME NOT NULL,
	flight_status INT FOREIGN KEY REFERENCES add_status(id) 
);

ALTER TABLE doc_ticket ADD flight_report INT FOREIGN KEY  REFERENCES doc_flight_real(id);
GO

CREATE TABLE doc_ticket_report(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	id_ticket INT FOREIGN KEY REFERENCES doc_ticket(id),
	sell_time DATETIME NOT NULL,
	period INT NOT NULL
);
GO

CREATE TABLE add_gate_status(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	gate_status BIT NOT NULL
);
GO

CREATE TABLE doc_shedule(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	id_flight_report INT FOREIGN KEY REFERENCES doc_flight_real(id),
	gate_num INT FOREIGN KEY REFERENCES add_gate_status(id)
);
GO

CREATE TABLE trigger_permissions(
	id INT IDENTITY(0, 1) PRIMARY KEY NONCLUSTERED,
	op_name VARCHAR(255) NOT NULL,
	have_permission BIT DEFAULT(0) NOT NULL
);
GO
