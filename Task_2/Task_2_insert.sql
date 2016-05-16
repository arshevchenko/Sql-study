--Data for add_class
INSERT INTO add_class (class_name) VALUES ('Первый');
INSERT INTO add_class (class_name) VALUES ('Бизнес');
INSERT INTO add_class (class_name) VALUES ('Эконом');
GO

--Data for add_status.
INSERT INTO add_status (status_type) VALUES ('Посадка');
INSERT INTO add_status (status_type) VALUES ('В полете');
INSERT INTO add_status (status_type) VALUES ('Задержан');
INSERT INTO add_status (status_type) VALUES ('Прилетел');
INSERT INTO add_status (status_type) VALUES ('Планируется');
GO

--Data for add_country
INSERT INTO add_country (country) VALUES ('Англия');
INSERT INTO add_country (country) VALUES ('Россия');
INSERT INTO add_country (country) VALUES ('Япония');
INSERT INTO add_country (country) VALUES ('Америка');
INSERT INTO add_country (country) VALUES ('Турция');
INSERT INTO add_country (country) VALUES ('Италия');
INSERT INTO add_country (country) VALUES ('Египет');
INSERT INTO add_country (country) VALUES ('Мальта');
INSERT INTO add_country (country) VALUES ('ОАЭ');
INSERT INTO add_country (country) VALUES ('Израиль');
GO

--Data for cat_planes
INSERT INTO cat_planes (plane, place_count) VALUES ('Боинг 747', 800);
INSERT INTO cat_planes (plane, place_count) VALUES ('Боинг 787-8', 420);
INSERT INTO cat_planes (plane, place_count) VALUES ('Боинг 787-9', 330);
GO

--Data for cat_airports
INSERT INTO cat_airports (name, country) VALUES ('Домодедово', 1) ;
INSERT INTO cat_airports (name, country) VALUES ('Лондон-сити', 0);
INSERT INTO cat_airports (name, country) VALUES ('Нагасаки', 2);
INSERT INTO cat_airports (name, country) VALUES ('Дедхорс', 3);
INSERT INTO cat_airports (name, country) VALUES ('Трабзон', 4);
INSERT INTO cat_airports (name, country) VALUES ('Даламан', 4);
INSERT INTO cat_airports (name, country) VALUES ('Анталья', 4);
INSERT INTO cat_airports (name, country) VALUES ('Палермо', 5);
INSERT INTO cat_airports (name, country) VALUES ('Турин', 5);
INSERT INTO cat_airports (name, country) VALUES ('Тревизо', 5);
INSERT INTO cat_airports (name, country) VALUES ('Неаполь', 5);
INSERT INTO cat_airports (name, country) VALUES ('Каир', 6);
INSERT INTO cat_airports (name, country) VALUES ('Луксор', 6);
INSERT INTO cat_airports (name, country) VALUES ('Таба', 6);
INSERT INTO cat_airports (name, country) VALUES ('Хургада', 6);
INSERT INTO cat_airports (name, country) VALUES ('Асуан', 6);
INSERT INTO cat_airports (name, country) VALUES ('Мальта', 7);
INSERT INTO cat_airports (name, country) VALUES ('Дубай', 8);
INSERT INTO cat_airports (name, country) VALUES ('Шарджа', 8);
INSERT INTO cat_airports (name, country) VALUES ('Абу-Даби', 8);
INSERT INTO cat_airports (name, country) VALUES ('Эйлат', 9);
INSERT INTO cat_airports (name, country) VALUES ('Эйлат Овда', 9);

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