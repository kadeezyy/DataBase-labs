-- Drop the tables if they exist
DROP TABLE IF EXISTS signal cascade;
DROP TABLE IF EXISTS planet cascade;
DROP TABLE IF EXISTS television_camera cascade;
DROP TABLE IF EXISTS antenna cascade;
DROP TABLE IF EXISTS remote_control CASCADE;
DROP TABLE IF EXISTS screen cascade;
DROP TABLE IF EXISTS person cascade;
DROP TABLE IF EXISTS sending_signal_to_antenna;
DROP TABLE IF EXISTS show_on_screen_from_antenna;
DROP TABLE IF EXISTS person_watches_screen;

-- Drop the ENUM types if they exist
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


create table remote_control
(
    id                  serial primary key
--     connected_screen_id int references screen (id)
);


create table screen
(
    id                       serial primary key,
    connected_remote_control int references remote_control (id)
);

create table person_watches_screen
(
    id                 SERIAL primary key,
    watching_person_id int references person (id),
    screen_id          int references screen (id)
);

create table television_camera
(
    id               serial primary key,
    text_description text
);

create table planet
(
    id           serial primary key,
    name         varchar(32),
    is_populated boolean
);


-- Create the ENUM type
CREATE TYPE antenna_size AS ENUM ('big', 'medium', 'small');

create table antenna
(
    id           serial primary key,
    antenna_type varchar(255),
    size         antenna_size
);


create table signal
(
    id                 serial primary key,
    signal_text        text,
    is_received        boolean,
    directed_to_planet int references planet (id),
    sent_via_antenna   int references antenna (id)
);

create table sending_signal_to_antenna
(
    id             serial primary key,
    signal_id int references signal (id),
    antenna_id int references antenna (id)
);

create table show_on_screen_from_antenna
(
    id              serial primary key,
    to_screen_id    int references screen (id),
    from_antenna_id int references antenna (id)
);
