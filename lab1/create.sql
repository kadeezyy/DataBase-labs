-- Create the ENUM type
CREATE TYPE s341474.profession_type AS ENUM ('scientist', 'researcher', 'pilot');

-- Create the person table with a foreign key reference to profession_type
CREATE TABLE s341474.person
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(32),
    profession s341474.profession_type
);

-- Create the screen table
CREATE TABLE s341474.screen
(
    screen_id                SERIAL PRIMARY KEY,
    connected_remote_control INT REFERENCES s341474.remoteControl (remote_control_id)
);

-- Create the remoteControl table
CREATE TABLE s341474.remoteControl
(
    remote_control_id SERIAL PRIMARY KEY
);

-- Create the ENUM type
CREATE TYPE s341474.antenna_size AS ENUM ('big', 'medium', 'small');

-- Create the antenna table with a foreign key reference to antenna_size
CREATE TABLE s341474.antenna
(
    antenna_id   SERIAL PRIMARY KEY,
    antenna_type VARCHAR(255),
    size         s341474.antenna_size
);

-- Create the televisionCamera table
CREATE TABLE s341474.televisionCamera
(
    television_camera_id SERIAL PRIMARY KEY,
    text_description     TEXT
);

-- Create the planet table
CREATE TABLE s341474.planet
(
    planet_id    SERIAL PRIMARY KEY,
    name         VARCHAR(255),
    is_populated BOOLEAN
);

-- Create the signal table with foreign key references
CREATE TABLE s341474.signal
(
    signal_id            SERIAL PRIMARY KEY,
    signal_text          TEXT,
    is_received          BOOLEAN,
    directed_to_planet   INT REFERENCES s341474.planet (planet_id),
    directed_via_antenna INT REFERENCES s341474.antenna (antenna_id)
);

-- Create a table to represent actions
CREATE TABLE s341474.action
(
    action_id   SERIAL PRIMARY KEY,
    action_type VARCHAR(255),
    description TEXT
);

-- Create a table to represent relationships between actions and objects
CREATE TABLE s341474.action_object
(
    action_object_id SERIAL PRIMARY KEY,
    action_id        INT REFERENCES s341474.action (action_id),
    subject_id       INT,
    object_id        INT
);

-- Insert data for actions and descriptions
INSERT INTO s341474.action (action_type, description)
VALUES ('Observing', 'Bowman and Poole were observing the screen.'),
       ('Transmitting', 'The long-focus television camera was transmitting images to the remote control.'),
       ('Orienting', 'The parabolic antenna was orienting itself precisely towards Earth.'),
       ('Sending Signals', 'Signals were being sent in both directions using the antennas.'),
       ('Receiving Signals', 'Signals were being received by the antennas.'),
       ('Traveling', 'The signals traveled through space.'),
       ('Potentially Receiving',
        'The signals, if ever received, would be received by Earth, possibly centuries later.'),
       ('Non-Reception', 'If not received, the signals would continue into the vast emptiness of space.');

