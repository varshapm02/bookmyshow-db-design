USE bookmyshow;

-- P2: List all shows on a given date at a given theatre
-- Replace theatre name and date as needed

SELECT
    m.movie_title,
    l.language_name,
    f.format_name,
    ms.show_time,
    s.screen_name
FROM movie_show ms
JOIN movie m ON ms.movie_id = m.movie_id
JOIN language l ON m.language_id = l.language_id
JOIN format f ON m.format_id = f.format_id
JOIN screen s ON ms.screen_id = s.screen_id
JOIN theatre t ON s.theatre_id = t.theatre_id
WHERE t.theatre_name = 'PVR Nexus Forum'
AND ms.show_date = '2023-04-25'
ORDER BY m.movie_title, ms.show_time;
