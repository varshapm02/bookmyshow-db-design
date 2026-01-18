USE bookmyshow;

-- Insert cities
INSERT INTO city (city_name) VALUES
('Hyderabad'),
('Bengaluru');

-- Insert theatres
INSERT INTO theatre (theatre_name, city_id) VALUES
('PVR Nexus Forum', 1),
('INOX GVK One', 1),
('Cinepolis Orion Mall', 2);

-- Insert screens
INSERT INTO screen (theatre_id, screen_name) VALUES
(1, 'Screen 1'),
(1, 'Screen 2'),
(2, 'Audi 1'),
(3, 'Hall A');

-- Insert languages
INSERT INTO language (language_name) VALUES
('Telugu'),
('Hindi'),
('English');

-- Insert formats
INSERT INTO format (format_name) VALUES
('2D'),
('3D');

-- Insert movies
INSERT INTO movie (movie_title, language_id, format_id) VALUES
('Dasara', 1, 1),
('Kisi Ka Bhai Kisi Ki Jaan', 2, 1),
('Tu Jhoothi Main Makkaar', 2, 1),
('Avatar: The Way of Water', 3, 2);

-- Insert movie shows
INSERT INTO movie_show (movie_id, screen_id, show_date, show_time) VALUES
(1, 1, '2023-04-25', '12:15:00'),
(1, 1, '2023-04-25', '15:15:00'),
(2, 1, '2023-04-25', '18:10:00'),
(2, 1, '2023-04-25', '21:20:00'),
(3, 2, '2023-04-25', '13:30:00'),
(4, 2, '2023-04-25', '17:45:00'),

(1, 3, '2023-04-26', '11:00:00'),
(3, 3, '2023-04-26', '14:30:00'),

(4, 4, '2023-04-25', '16:00:00');
