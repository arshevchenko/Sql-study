--Data for add_class
INSERT INTO add_class (class_name) VALUES ('������');
INSERT INTO add_class (class_name) VALUES ('������');
INSERT INTO add_class (class_name) VALUES ('������');
GO

--Data for add_status.
INSERT INTO add_status (status_type) VALUES ('�������');
INSERT INTO add_status (status_type) VALUES ('� ������');
INSERT INTO add_status (status_type) VALUES ('��������');
INSERT INTO add_status (status_type) VALUES ('��������');
INSERT INTO add_status (status_type) VALUES ('�����������');
GO

--Data for add_country
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('�������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('���');
INSERT INTO add_country (country) VALUES ('�������');
GO

--Data for cat_planes
INSERT INTO cat_planes (plane, place_count) VALUES ('����� 747', 800);
INSERT INTO cat_planes (plane, place_count) VALUES ('����� 787-8', 420);
INSERT INTO cat_planes (plane, place_count) VALUES ('����� 787-9', 330);
GO

--Data for cat_airports
INSERT INTO cat_airports (name, country) VALUES ('����������', 1) ;
INSERT INTO cat_airports (name, country) VALUES ('������-����', 0);
INSERT INTO cat_airports (name, country) VALUES ('��������', 2);
INSERT INTO cat_airports (name, country) VALUES ('�������', 3);
INSERT INTO cat_airports (name, country) VALUES ('�������', 4);
INSERT INTO cat_airports (name, country) VALUES ('�������', 4);
INSERT INTO cat_airports (name, country) VALUES ('�������', 4);
INSERT INTO cat_airports (name, country) VALUES ('�������', 5);
INSERT INTO cat_airports (name, country) VALUES ('�����', 5);
INSERT INTO cat_airports (name, country) VALUES ('�������', 5);
INSERT INTO cat_airports (name, country) VALUES ('�������', 5);
INSERT INTO cat_airports (name, country) VALUES ('����', 6);
INSERT INTO cat_airports (name, country) VALUES ('������', 6);
INSERT INTO cat_airports (name, country) VALUES ('����', 6);
INSERT INTO cat_airports (name, country) VALUES ('�������', 6);
INSERT INTO cat_airports (name, country) VALUES ('�����', 6);
INSERT INTO cat_airports (name, country) VALUES ('������', 7);
INSERT INTO cat_airports (name, country) VALUES ('�����', 8);
INSERT INTO cat_airports (name, country) VALUES ('������', 8);
INSERT INTO cat_airports (name, country) VALUES ('���-����', 8);
INSERT INTO cat_airports (name, country) VALUES ('�����', 9);
INSERT INTO cat_airports (name, country) VALUES ('����� ����', 9);

GO

--Data for cat_flight 
INSERT INTO cat_flight (start_time, end_time,  airport) VALUES ('2016-05-02 09:38:10', '2016-05-02 19:20:20',  3);
INSERT INTO cat_flight (start_time, end_time,  airport) VALUES ('2016-05-04 08:10:11', '2016-05-04 13:00:20',  0);
INSERT INTO cat_flight (start_time, end_time,  airport) VALUES ('2016-07-04 08:10:11', '2016-07-04 13:00:20',  2);
GO

--Data for doc_flight_report
INSERT INTO doc_flight_real (id_flight, id_plane, real_time_start, real_time_end, flight_status) VALUES (0, 0, '2016-05-02 09:40:20', '2016-05-02 19:32:10', 3);
INSERT INTO doc_flight_real (id_flight, id_plane, real_time_start, real_time_end, flight_status) VALUES (1, 1, '2016-05-04 08:09:15', '2016-05-04 13:12:55', 1);
INSERT INTO doc_flight_real (id_flight, id_plane, real_time_start, real_time_end, flight_status) VALUES (2, 2, '2016-07-04 08:10:11', '2016-07-04 13:00:20', 4);
GO

--Data for add_gate_status
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);
INSERT INTO add_gate_status (gate_status) VALUES (0);