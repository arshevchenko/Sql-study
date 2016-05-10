--Data for add_status.
INSERT INTO add_status (status_type) VALUES ('Посадка');
INSERT INTO add_status (status_type) VALUES ('В полете');
INSERT INTO add_status (status_type) VALUES ('Задержан');
INSERT INTO add_status (status_type) VALUES ('Прилетел');
INSERT INTO add_status (status_type) VALUES ('Планируется');

--Data for add_country
INSERT INTO add_country (country) VALUES ('Англия');
INSERT INTO add_country (country) VALUES ('Россия');
INSERT INTO add_country (country) VALUES ('Япония');
INSERT INTO add_country (country) VALUES ('Америка');

--Data for cat_companies
INSERT INTO cat_companies (name) VALUES ('Аэрофлот');
INSERT INTO cat_companies (name) VALUES ('S7 Airlines');
INSERT INTO cat_companies (name) VALUES ('Трансаеро');
INSERT INTO cat_companies (name) VALUES ('Air One');

--Data for cat_planes
INSERT INTO cat_planes (plane, place_count) VALUES ('Боинг 747', 800);
INSERT INTO cat_planes (plane, place_count) VALUES ('Боинг 787-8', 420);
INSERT INTO cat_planes (plane, place_count) VALUES ('Боинг 787-9', 330);

--Data for cat_airports
INSERT INTO cat_airports (name, country) VALUES ('Домодедово', 1) ;
INSERT INTO cat_airports (name, country) VALUES ('Лондон-сити', 0);
INSERT INTO cat_airports (name, country) VALUES ('Нагасаки', 2);
INSERT INTO cat_airports (name, country) VALUES ('Дедхорс', 3);

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