-- CREATE TABLE ipl_player(
--     player_id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     team VARCHAR(50),
--     role VARCHAR(50),
--     runs_scored INT CHECK (runs_scored>0),
--     wickets_taken INT CHECK (wickets_taken>0)

-- );

-- ALTER TABLE ipl_player
-- ADD COLUMN nock_name VARCHAR(50);

INSERT INTO ipl_player
(name, team, role, runs_scored, wickets_taken, nock_name)
VALUES
('Virat Kohli', 'RCB', 'Batsman', 741, 2, 'King Kohli'),

('Rohit Sharma', 'MI', 'Batsman', 523, 1, 'Hitman'),

('MS Dhoni', 'CSK', 'Wicket Keeper', 188, 2, 'Captain Cool'),

('Jasprit Bumrah', 'MI', 'Bowler', 25, 21, 'Boom Boom'),

('KL Rahul', 'LSG', 'Wicket Keeper', 520, 1, 'KL'),

('Hardik Pandya', 'MI', 'All Rounder', 310, 11, 'Kung Fu Pandya'),

('Shubman Gill', 'GT', 'Batsman', 620, 2, 'Prince'),

('Ravindra Jadeja', 'CSK', 'All Rounder', 267, 16, 'Sir Jadeja'),

('Rashid Khan', 'GT', 'Bowler', 45, 19, 'Rash'),

('Rinku Singh', 'KKR', 'Batsman', 420, 1, 'Lord Rinku');

-- SELCETING
SELECT * FROM ipl_player;

SELECT name, nock_name , team FROM ipl_player;

--!FILTERING

SELECT * FROM ipl_player WHERE team = 'MI';

SELECT * FROM ipl_player WHERE wickets_taken>5;

-- ! logical operators (and or)

SELECT * FROM ipl_player WHERE wickets_taken>10 AND runs_scored>100 ;
SELECT * FROM ipl_player WHERE team='CSK' OR team='MI' ;


-- !  pattern matching


SELECT * FROM ipl_player WHERE name LIKE '__s%'; -- third letter s  '%s%'kahi bhi s ho 
-- WE USE ILIKE WHEN WE WANT TO CHECJ FOR UPEER AND LOWER CASE BOTH




-- IN SAMAJH KAM AYYA
SELECT * FROM ipl_player WHERE team IN ('MI', 'GT','CSK');



SELECT * FROM ipl_player WHERE wickets_taken BETWEEN 10 AND 30;
SELECT * FROM ipl_player WHERE team != 'RCB';





-- SORTING

SELECT  name, nock_name, wickets_taken FROM ipl_player 
ORDER BY wickets_taken DESC;


SELECT name, wickets_taken, team FROM ipl_player 
ORDER BY team ASC ,wickets_taken DESC;




-- pagenation


SELECT   name, team FROM ipl_player 
ORDER BY runs_scored DESC
LIMIT 3;
--LIMIT ASSUME OFFSET IS 0 
-- OFFESET MEAN IT WIIL SKIP ROWS 
SELECT   name, team FROM ipl_player 
ORDER BY runs_scored DESC
LIMIT 3 OFFSET 3;


-- FORMULA FOR PAGENATION 
-- OFFSET (page - 1)* LIMIT





-- modify data in runtime


SELECT 
name , nock_name , wickets_taken , (wickets_taken * 100) AS wickets_in_hunderds
FROM ipl_player;


-- how you can get distinct values

SELECT distinct role FROM ipl_player;

-- what is DQL 
