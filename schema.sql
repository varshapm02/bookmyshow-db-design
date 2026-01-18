CREATE DATABASE bookmyshow;
USE bookmyshow;

CREATE TABLE city (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE theatre (
    theatre_id INT AUTO_INCREMENT PRIMARY KEY,
    theatre_name VARCHAR(150) NOT NULL,
    city_id INT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE screen (
    screen_id INT AUTO_INCREMENT PRIMARY KEY,
    theatre_id INT NOT NULL,
    screen_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id),
    UNIQUE (theatre_id, screen_name)
);

CREATE TABLE language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    language_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE format (
    format_id INT AUTO_INCREMENT PRIMARY KEY,
    format_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_title VARCHAR(200) NOT NULL,
    language_id INT NOT NULL,
    format_id INT NOT NULL,
    FOREIGN KEY (language_id) REFERENCES language(language_id),
    FOREIGN KEY (format_id) REFERENCES format(format_id)
);

CREATE TABLE movie_show (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    screen_id INT NOT NULL,
    show_date DATE NOT NULL,
    show_time TIME NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (screen_id) REFERENCES screen(screen_id),
    UNIQUE (screen_id, show_date, show_time)
);
