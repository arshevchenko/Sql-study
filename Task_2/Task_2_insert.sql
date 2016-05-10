--Data for add_status.
INSERT INTO add_status (status_type) VALUES ('�������');
INSERT INTO add_status (status_type) VALUES ('� ������');
INSERT INTO add_status (status_type) VALUES ('��������');
INSERT INTO add_status (status_type) VALUES ('��������');
INSERT INTO add_status (status_type) VALUES ('�����������');

--Data for add_country
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('������');
INSERT INTO add_country (country) VALUES ('�������');

--Data for cat_companies
INSERT INTO cat_companies (name) VALUES ('��������');
INSERT INTO cat_companies (name) VALUES ('S7 Airlines');
INSERT INTO cat_companies (name) VALUES ('���������');
INSERT INTO cat_companies (name) VALUES ('Air One');

--Data for cat_planes
INSERT INTO cat_planes (plane, place_count) VALUES ('����� 747', 800);
INSERT INTO cat_planes (plane, place_count) VALUES ('����� 787-8', 420);
INSERT INTO cat_planes (plane, place_count) VALUES ('����� 787-9', 330);

--Data for cat_airports
INSERT INTO cat_airports (name, country) VALUES ('����������', 1) ;
INSERT INTO cat_airports (name, country) VALUES ('������-����', 0);
INSERT INTO cat_airports (name, country) VALUES ('��������', 2);
INSERT INTO cat_airports (name, country) VALUES ('�������', 3);

--Data for cat_flight 
INSERT INTO cat_flight (start_time, end_time, company, airport) VALUES ('09:38:10', '19:20:20', 0, 3);
INSERT INTO cat_flight (start_time, end_time, company, airport) VALUES ('08:10:11', '13:00:20', 1, 0);
INSERT INTO cat_flight (start_time, end_time, company, airport) VALUES ('10:22:10', '14:11:00', 2, 2);

--Data for doc_flight_report
INSERT INTO doc_flight_report (id_flight, id_plane, rl_time_begin, rl_time_end, flight_status) VALUES (0, 0, '09:40:20','19:32:10', 3);
INSERT INTO doc_flight_report (id_flight, id_plane, rl_time_begin, rl_time_end, flight_status) VALUES (1, 1, '08:09:15','13:12:55', 1);
INSERT INTO doc_flight_report (id_flight, id_plane, rl_time_begin, rl_time_end, flight_status) VALUES (2, 2, '10:22:10','13:55:42', 4);

--Data for doc_ticket
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (1, 2, 19999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (2, 2, 19999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (3, 2, 19999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (4, 2, 19999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (5, 1, 11999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (6, 1, 11999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (7, 1, 11999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (8, 0, 7999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (1, 2, 19999, 1);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (2, 2, 19999, 1);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (3, 1, 7999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (4, 1, 7999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (5, 0, 3999, 0);
INSERT INTO doc_ticket (place, class, price, flight_report) VALUES (6, 0, 3999, 0);

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