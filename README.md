# bookmyshow-db-design
Relational database design for a movie ticket booking system, focused on normalized schema design and SQL queries using MySQL.
BookMyShow – Theatre Shows & Timings Database Design
1.	Assignment Overview
This project focuses on designing a normalized relational database schema for a movie ticketing platform similar to BookMyShow.
The goal is to model:
•	Theatres and their screens
•	Movies running in a theatre
•	Show dates and timings
•	Queries that support the UI flow where users select a theatre → date → view shows
The database is designed to comply with 1NF, 2NF, 3NF, and BCNF and is fully executable on MySQL.
2.	Problem Statement
For a given theatre:
•	Display the next 7 available dates
•	On selecting a date, list:
•	Movies running in that theatre
•	Their respective show timings

3.	Database Design
Entities Identified
•	City
•	Theatre
•	Screen
•	Movie
•	Language
•	Format
•	Movie_Show

4.	Design Principles
•	No data redundancy
•	Proper use of foreign keys
•	All tables normalized up to BCNF
•	Suitable for real-world scalability

5.	Technologies Used
•	Database: MySQL
•	SQL Standard: ANSI SQL (MySQL compatible)
6.	Table Overview
    Table Name	      Description
    city	        Stores city/location details
    theatre	      Stores theatre information
    screen	      Represents individual screens in a theatre
    language	    Movie language master
    format	      Movie format (2D, 3D, etc.)
    movie	        Movie details
    movie_show	  Individual movie show timings

7.	Sample Data
Sample records are included to demonstrate:
•	Multiple movies in a theatre
•	Multiple shows per movie
•	Multiple screens per theatre
Refer to sample_data.sql for details.

8.	How to Run
1.	Create a MySQL database
CREATE DATABASE bookmyshow;
USE bookmyshow;
2.	Run schema
SOURCE schema.sql;
3.	Insert sample data
SOURCE sample_data.sql;
4.	Execute queries
SOURCE queries.sql;

