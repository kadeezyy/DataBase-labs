-- Вставка данных в таблицу "person"
INSERT INTO person (name, profession)
VALUES ('Боумен', 'scientist'),
       ('Пул', 'scientist');


-- Вставка данных в таблицу "remote_control"
INSERT INTO remote_control
    DEFAULT VALUES;

-- Вставка данных в таблицу "screen"
INSERT INTO screen (connected_remote_control)
VALUES (1);

-- Вставка данных в таблицу "person_watches_screen"
INSERT INTO person_watches_screen (watching_person_id, screen_id)
VALUES (1, 1);

-- Вставка данных в таблицу "television_camera"
INSERT INTO television_camera (text_description)
VALUES ('Длиннофокусная телевизионная камера на антенне');

-- Вставка данных в таблицу "planet"
INSERT INTO planet (name, is_populated)
VALUES ('Земля', true),
       ('Марс', false);

-- Вставка данных в таблицу "antenna"
INSERT INTO antenna (antenna_type, size)
VALUES ('параболическая', 'big');

-- Вставка данных в таблицу "signal"
INSERT INTO signal (signal_text, is_received, directed_to_planet, sent_via_antenna)
VALUES ('Пример сигнала 1', false, 1, 1),
       ('Пример сигнала 2', true, 2, 1);

-- Вставка данных в таблицу "sending_signal_to_antenna"
INSERT INTO sending_signal_to_antenna (signal_id, antenna_id)
VALUES (1, 1),
       (2, 1);

-- Вставка данных в таблицу "show_on_screen_from_antenna"
INSERT INTO show_on_screen_from_antenna (to_screen_id, from_antenna_id)
VALUES (1, 1);
