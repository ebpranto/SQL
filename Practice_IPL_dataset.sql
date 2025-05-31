-- --------------------------Practice on IPL dataset-----------------------------------

-- find the top 5 batsman in IPL
SELECT batter, SUM(batsman_run) AS 'total_run'
FROM campusx.ipl
GROUP BY batter
ORDER BY total_run DESC LIMIT 5;

-- find the 2nd highest 6 hitter batsman  in IPL
SELECT batter, COUNT(*)
FROM campusx.ipl
WHERE batsman_run = 6
GROUP BY batter
ORDER BY COUNT(*) DESC LIMIT 1, 1;

-- FIND top 10 batsman with centuries in IPL
SELECT batter, SUM(batsman_run) AS 'TOTAL_RUN'
FROM campusx.ipl
GROUP BY batter
ORDER BY TOTAL_RUN DESC LIMIT 10;


-- Find the top 5 batsman with highest strike rate who have played a min of 1000 balls
SELECT batter, SUM(batsman_run), COUNT(batsman_run) AS 'No_balls',
ROUND((SUM(batsman_run) / COUNT(batsman_run)) * 100, 2) AS 'strike_rate'
FROM campusx.ipl
GROUP BY batter
HAVING No_balls > 100
ORDER BY strike_rate DESC LIMIT 5;





