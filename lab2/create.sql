DROP TABLE IF EXISTS planet_populated CASCADE;
DROP TABLE IF EXISTS signal_direction CASCADE;
DROP TABLE IF EXISTS signal_to_screen CASCADE;
DROP TABLE IF EXISTS signal_to_antenna CASCADE;
DROP TABLE IF EXISTS signal CASCADE;
DROP TABLE IF EXISTS antenna CASCADE;
DROP TABLE IF EXISTS television_camera CASCADE;
DROP TABLE IF EXISTS person_watches_screen CASCADE;
DROP TABLE IF EXISTS show_on_screen_from_antenna CASCADE;
DROP TABLE IF EXISTS sending_signal_to_antenna CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS screen CASCADE;
DROP TABLE IF EXISTS remote_control CASCADE;
DROP TABLE IF EXISTS planet CASCADE;

-- Drop the ENUM types if they exist
DROP TYPE IF EXISTS antenna_size;
DROP TYPE IF EXISTS profession_type;

-- Create the ENUM types if they don't exist
CREATE TYPE profession_type AS ENUM ('scientist', 'researcher', 'pilot');
CREATE TYPE antenna_size AS ENUM ('big', 'medium', 'small');

-- Create tables with primary keys
CREATE TABLE planet
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(32) UNIQUE
);


CREATE TABLE planet_populated
(
    name VARCHAR(32),
    is_populated BOOLEAN,
    FOREIGN KEY (name) REFERENCES planet(name)
);

CREATE TABLE remote_control
(
    id SERIAL PRIMARY KEY
);

CREATE TABLE screen
(
    id                       SERIAL PRIMARY KEY,
    connected_remote_control INT REFERENCES remote_control (id)
);

CREATE TABLE person
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(32),
    profession profession_type
);

create table person_watches_screen
(
    id                 SERIAL primary key,
    watching_person_id int references person (id),
    screen_id          int references screen (id)
);


CREATE TABLE antenna
(
    id           SERIAL PRIMARY KEY,
    antenna_type VARCHAR(255),
    size         antenna_size
);

CREATE TABLE signal
(
    id          SERIAL PRIMARY KEY,
    signal_text TEXT,
    is_received BOOLEAN
);

-- Create new tables for 3NF
CREATE TABLE signal_direction
(
    id                    SERIAL PRIMARY KEY,
    signal_id             INT REFERENCES signal (id),
    directed_to_planet_id INT REFERENCES planet (id)
);

CREATE TABLE signal_to_antenna
(
    id         SERIAL PRIMARY KEY,
    signal_id  INT REFERENCES signal (id),
    antenna_id INT REFERENCES antenna (id)
);

CREATE TABLE signal_to_screen
(
    id         SERIAL PRIMARY KEY,
    screen_id  INT REFERENCES screen (id),
    antenna_id INT REFERENCES antenna (id)
);
