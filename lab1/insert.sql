-- Вставка данных в таблицу "person"
INSERT INTO person (name, profession)
VALUES ('Боумен', 'scientist'),
       ('Пул', 'scientist');

-- Вставка данных в таблицу "remote_control"
INSERT INTO remote_control
    DEFAULT
VALUES;

-- Вставка данных в таблицу "screen"
INSERT INTO screen (connected_remote_control)
VALUES (1);
-- Предположим, что экран связан с удаленным управлением с id=1

-- Вставка данных в таблицу "person_watches_screen"
INSERT INTO person_watches_screen (watching_person_id, screen_id)
VALUES (1, 1);
-- Предположим, что человек с id=1 наблюдает экран с id=1

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
VALUES ('Пример сигнала 1', false, 1, 1), -- Предположим, что сигнал отправлен на Землю через антенну с id=1
       ('Пример сигнала 2', true, 2, 1);
-- Предположим, что сигнал успешно принят с антенны с id=1

-- Вставка данных в таблицу "sending_signal_to_antenna"
INSERT INTO sending_signal_to_antenna (signal_id, antenna_id)
VALUES (1, 1), -- Связываем сигнал с id=1 с антенной с id=1
       (2, 1);
-- Связываем сигнал с id=2 с антенной с id=1

-- Вставка данных в таблицу "show_on_screen_from_antenna"
INSERT INTO show_on_screen_from_antenna (to_screen_id, from_antenna_id)
VALUES (1, 1);
-- Связываем экран с id=1 с антенной с id=1


-- Вставка 10 записей в таблицу "person"
INSERT INTO person (name, profession)
VALUES ('Иванов', 'scientist'),
       ('Петров', 'researcher'),
       ('Сидоров', 'pilot'),
       ('Козлов', 'scientist'),
       ('Смирнов', 'researcher'),
       ('Васильев', 'pilot'),
       ('Попов', 'scientist'),
       ('Лебедев', 'researcher'),
       ('Николаев', 'pilot'),
       ('Ильин', 'scientist');

-- Вставка 10 записей в таблицу "remote_control"
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;
INSERT INTO remote_control DEFAULT
VALUES;

-- Вставка 10 записей в таблицу "screen"
INSERT INTO screen (connected_remote_control)
VALUES (1),
       (2),
       (3),
       (4),
       (5),
       (6),
       (7),
       (8),
       (9),
       (10);

-- Вставка 10 записей в таблицу "person_watches_screen"
INSERT INTO person_watches_screen (watching_person_id, screen_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10);

-- Вставка 10 записей в таблицу "television_camera"
INSERT INTO television_camera (text_description)
VALUES ('Камера 1'),
       ('Камера 2'),
       ('Камера 3'),
       ('Камера 4'),
       ('Камера 5'),
       ('Камера 6'),
       ('Камера 7'),
       ('Камера 8'),
       ('Камера 9'),
       ('Камера 10');

-- Вставка 10 записей в таблицу "planet"
INSERT INTO planet (name, is_populated)
VALUES ('Меркурий', false),
       ('Венера', false),
       ('Марс', false),
       ('Юпитер', false),
       ('Сатурн', false),
       ('Уран', false),
       ('Нептун', false),
       ('Плутон', false),
       ('Земля', true),
       ('Луна', false);

-- Вставка 10 записей в таблицу "antenna"
INSERT INTO antenna (antenna_type, size)
VALUES ('параболическая', 'big'),
       ('плоская', 'medium'),
       ('параболическая', 'big'),
       ('плоская', 'medium'),
       ('параболическая', 'big'),
       ('плоская', 'medium'),
       ('параболическая', 'big'),
       ('плоская', 'medium'),
       ('параболическая', 'big'),
       ('плоская', 'medium');

-- Вставка 10 записей в таблицу "signal"
INSERT INTO signal (signal_text, is_received, directed_to_planet, sent_via_antenna)
VALUES ('Сигнал 1', true, 1, 1),
       ('Сигнал 2', true, 2, 2),
       ('Сигнал 3', true, 3, 3),
       ('Сигнал 4', true, 4, 4),
       ('Сигнал 5', true, 5, 5),
       ('Сигнал 6', true, 6, 6),
       ('Сигнал 7', true, 7, 7),
       ('Сигнал 8', true, 8, 8),
       ('Сигнал 9', true, 9, 9),
       ('Сигнал 10', true, 10, 10);

-- Вставка 10 записей в таблицу "sending_signal_to_antenna"
INSERT INTO sending_signal_to_antenna (signal_id, antenna_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10);

-- Вставка 10 записей в таблицу "show_on_screen_from_antenna"
INSERT INTO show_on_screen_from_antenna (to_screen_id, from_antenna_id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10);