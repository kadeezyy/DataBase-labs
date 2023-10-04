-- Drop the tables if they exist
DROP TABLE IF EXISTS signal CASCADE;
DROP TABLE IF EXISTS signal_direction CASCADE;
DROP TABLE IF EXISTS planet CASCADE;
DROP TABLE IF EXISTS television_camera CASCADE;
DROP TABLE IF EXISTS antenna CASCADE;
DROP TABLE IF EXISTS remote_control CASCADE;
DROP TABLE IF EXISTS screen CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS person_watches_screen CASCADE;
DROP TABLE IF EXISTS signal_to_antenna CASCADE;
DROP TABLE IF EXISTS signal_to_screen CASCADE;

-- Drop the ENUM types if they exis
DROP TYPE IF EXISTS antenna_type;
DROP TYPE IF EXISTS antenna_size;
DROP TYPE IF EXISTS profession_type;

-- Create the ENUM type if it doesn't exist
CREATE TYPE profession_type AS ENUM ('scientist', 'researcher', 'pilot');

-- Create the person table if it doesn't exist with a foreign key reference to profession_type
CREATE TABLE IF NOT EXISTS person
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(32),
    profession profession_type
);

CREATE TABLE IF NOT EXISTS remote_control
(
    id SERIAL PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS screen
(
    id                       SERIAL PRIMARY KEY,
    connected_remote_control INT REFERENCES remote_control (id)
);

CREATE TABLE IF NOT EXISTS person_watches_screen
(
    id                SERIAL PRIMARY KEY,
    watching_person_id INT REFERENCES person (id),
    screen_id          INT REFERENCES screen (id)
);

CREATE TABLE IF NOT EXISTS television_camera
(
    id               SERIAL PRIMARY KEY,
    text_description TEXT
);

CREATE TABLE IF NOT EXISTS planet
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(32),
    is_populated BOOLEAN
);

-- Create the ENUM type
CREATE TYPE antenna_size AS ENUM ('big', 'medium', 'small');

CREATE TABLE IF NOT EXISTS antenna
(
    id           SERIAL PRIMARY KEY,
    antenna_type VARCHAR(255),
    size         antenna_size
);

CREATE TABLE IF NOT EXISTS signal
(
    id          SERIAL PRIMARY KEY,
    signal_text TEXT,
    is_received BOOLEAN
);

-- Create the new tables for 3NF
CREATE TABLE IF NOT EXISTS signal_direction
(
    id                    SERIAL PRIMARY KEY,
    signal_id             INT REFERENCES signal (id),
    directed_to_planet_id INT REFERENCES planet (id)
);

CREATE TABLE IF NOT EXISTS signal_to_antenna
(
    id         SERIAL PRIMARY KEY,
    signal_id  INT REFERENCES signal (id),
    antenna_id INT REFERENCES antenna (id)
);

CREATE TABLE IF NOT EXISTS signal_to_screen
(
    id         SERIAL PRIMARY KEY,
    screen_id  INT REFERENCES screen (id),
    antenna_id INT REFERENCES antenna (id)
);
