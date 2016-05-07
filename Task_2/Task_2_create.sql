CREATE TABLE add_class(
    id INT IDENTITY(0, 1) PRIMARY KEY,
	class_name VARCHAR(255) NOT NULL ,
	class_priority INT NOT NULL
);

CREATE TABLE add_country(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	country VARCHAR(255) NOT NULL
);

CREATE TABLE add_status(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	status_type VARCHAR(255) NOT NULL
);

CREATE TABLE cat_companies(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE cat_airports(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	country INT FOREIGN KEY REFERENCES add_country(id)
);

CREATE TABLE cat_planes(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	plane VARCHAR(255) NOT NULL,
	place_count INT 
);

CREATE TABLE cat_flight(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	date_end DATE,
	start_time TIME,
	end_time TIME,
	company INT FOREIGN KEY REFERENCES cat_companies(id),
	airport INT FOREIGN KEY REFERENCES cat_airports(id)
);

CREATE TABLE doc_ticket(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	place INT,
	class INT FOREIGN KEY REFERENCES add_class(id),
	price FLOAT 
);

CREATE TABLE doc_flight_report(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	id_flight INT FOREIGN KEY REFERENCES cat_flight(id),
	id_plane INT FOREIGN KEY REFERENCES cat_planes(id),
	rl_time_begin TIME,
	rl_time_end TIME,
	flight_status INT FOREIGN KEY REFERENCES add_status(id) 
);

ALTER TABLE doc_ticket ADD flight_report INT FOREIGN KEY  REFERENCES doc_flight_report(id);


CREATE TABLE doc_ticket_report(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	id_ticket INT FOREIGN KEY REFERENCES doc_ticket(id),
	sell_time DATETIME,
	period DATE
);

CREATE TABLE doc_shedule(
	id INT IDENTITY(0, 1) PRIMARY KEY,
	id_flight_report INT FOREIGN KEY REFERENCES doc_flight_report(id),
	gate_num INT
);


INSERT INTO add_class (class_name, class_priority) VALUES ('������', 0);
INSERT INTO add_class (class_name, class_priority) VALUES ('������', 1);
INSERT INTO add_class (class_name, class_priority) VALUES ('������', 2);
INSERT INTO add_class (class_name, class_priority) VALUES ('TEST', 3);


DELETE  FROM add_class WHERE class_priority = 3;