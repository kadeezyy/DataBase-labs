-- Insert data into the planet table
INSERT INTO planet (name)
VALUES
    ('Mars'),
    ('Earth'),
    ('Venus');

-- Insert data into the planet_populated table
INSERT INTO planet_populated (name, is_populated)
VALUES
    ('Earth', true),
    ('Mars', false);

-- Insert data into the remote_control table
INSERT INTO remote_control DEFAULT VALUES;

-- Insert data into the screen table
INSERT INTO screen (connected_remote_control)
VALUES (1);

-- Insert data into the person table
INSERT INTO person (name, profession)
VALUES
    ('John Doe', 'scientist'),
    ('Alice Smith', 'researcher');

-- Insert data into the television_camera table
INSERT INTO television_camera (text_description)
VALUES
    ('High-resolution camera for remote viewing'),
    ('Wide-angle camera for monitoring');

-- Insert data into the antenna table
INSERT INTO antenna (antenna_type, size)
VALUES
    ('Parabolic', 'big'),
    ('Dipole', 'medium');

-- Insert data into the signal table
INSERT INTO signal (signal_text, is_received)
VALUES
    ('Activate security system', false),
    ('Open the door', true);

-- Insert data into the signal_direction table
INSERT INTO signal_direction (signal_id, directed_to_planet_id)
VALUES
    (1, 2),
    (2, 3);

-- Insert data into the signal_to_antenna table
INSERT INTO signal_to_antenna (signal_id, antenna_id)
VALUES
    (1, 1),
    (2, 2);

-- Insert data into the signal_to_screen table
INSERT INTO signal_to_screen (screen_id, antenna_id)
VALUES
    (1, 1),
    (1, 2);
