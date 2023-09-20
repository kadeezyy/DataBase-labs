-- Insert data into the person table
INSERT INTO s341474.person (name, profession)
VALUES
    ('Bowman', 'scientist'),
    ('Poole', 'researcher');

-- Insert data into the remoteControl table (assuming there is one remote control)
INSERT INTO s341474.remoteControl (remote_control_id)
VALUES (1);

-- Insert data into the screen table (assuming there is one screen connected to the remote control)
INSERT INTO s341474.screen (connected_remote_control)
VALUES (1);

-- Insert data into the antenna table
INSERT INTO s341474.antenna (antenna_type, size)
VALUES ('Parabolic Antenna', 'big');

-- Insert data into the televisionCamera table
INSERT INTO s341474.televisionCamera (text_description)
VALUES ('Long-focus television camera on a parabolic antenna.');

-- Insert data into the planet table
INSERT INTO s341474.planet (name, is_populated)
VALUES ('Earth', TRUE);

-- Insert data into the signal table (assuming one signal)
INSERT INTO s341474.signal (signal_text, is_received, directed_to_planet, directed_via_antenna)
VALUES ('Signal description here', FALSE, 1, 1);

-- Insert data into the action_object table to represent the action of observing
-- Connect Bowman (person) observing the screen
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (1, 1, 1);

-- Insert data into the action_object table to represent the action of transmitting
-- Connect television camera transmitting to the remote control
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (2, 5, 1);

-- Insert data into the action_object table to represent the action of orienting
-- Connect antenna orienting towards Earth
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (3, 4, 6);

-- Insert data into the action_object table to represent the action of sending signals
-- Connect antenna sending signals
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (4, 4, 7);

-- Insert data into the action_object table to represent the action of receiving signals
-- Connect antenna receiving signals
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (5, 4, 7);

-- Insert data into the action_object table to represent the action of traveling
-- Connect signals traveling through space
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (6, 7, NULL);

-- Insert data into the action_object table to represent the action of potentially receiving
-- Connect signals potentially received by Earth
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (7, 1, 7);

-- Insert data into the action_object table to represent the action of non-reception
-- Connect signals not received by Earth
INSERT INTO s341474.action_object (action_id, subject_id, object_id)
VALUES (8, NULL, 7);
