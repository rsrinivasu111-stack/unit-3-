CREATE DATABASE Player;
USE Player;
CREATE TABLE PLAYER (
    Player_ID INT PRIMARY KEY,
    Player_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Team_ID INT,
    Position VARCHAR(50),
    Jersey_Number INT,
    Matches_Played INT,
    Date_of_Birth DATE,
    Contact_Number VARCHAR(15)
);

INSERT INTO PLAYER
(Player_ID, Player_Name, Age, Gender, Team_ID, Position,
 Jersey_Number, Matches_Played, Date_of_Birth, Contact_Number)
VALUES
(1, 'Rahul', 22, 'Male', 101, 'Raider', 7, 25, '2004-05-10', '9876543210'),

(2, 'Arjun', 21, 'Male', 102, 'Defender', 10, 30, '2005-02-15', '9876543211'),

(3, 'Kiran', 20, 'Male', 103, 'Batsman', 18, 20, '2006-01-20', '9876543212'),

(4, 'Ravi', 23, 'Male', 104, 'Forward', 9, 35, '2003-08-12', '9876543213'),

(5, 'Suresh', 19, 'Male', 105, 'Midfielder', 11, 18, '2007-03-25', '9876543214'),

(6, 'Vijay', 24, 'Male', 106, 'Bowler', 15, 40, '2002-06-18', '9876543215'),

(7, 'Anil', 18, 'Male', 107, 'Chess Player', 1, 50, '2008-01-05', '9876543216'),

(8, 'Rohan', 22, 'Male', 108, 'Chess Player', 2, 60, '2004-09-10', '9876543217'),

(9, 'Karthik', 21, 'Male', 109, 'Spiker', 12, 28, '2005-07-14', '9876543218'),

(10, 'Manoj', 20, 'Male', 110, 'Blocker', 6, 25, '2006-11-30', '9876543219');


SELECT * FROM PLAYER;

CREATE TABLE KABADDI (
    K_ID INT PRIMARY KEY,
    Player_ID INT,
    Raid_Points INT,
    Tackle_Points INT,
    Matches_Won INT,
    Super_Raids INT,
    Do_Or_Die_Raids INT,
    Average_Raid_Points DECIMAL(5,2),
    Average_Tackle_Points DECIMAL(5,2),
    Achievement VARCHAR(100),

    FOREIGN KEY (Player_ID)
    REFERENCES PLAYER(Player_ID)
);
INSERT INTO KABADDI
(K_ID, Player_ID, Raid_Points, Tackle_Points, Matches_Won,
 Super_Raids, Do_Or_Die_Raids, Average_Raid_Points,
 Average_Tackle_Points, Achievement)
VALUES

(101, 1, 350, 45, 20, 25, 40, 14.00, 1.80, 'Best Raider'),

(102, 2, 280, 120, 18, 15, 35, 9.33, 4.00, 'Best Defender'),

(103, 3, 420, 60, 25, 35, 50, 16.80, 2.40, 'Tournament Winner'),

(104, 4, 310, 95, 22, 20, 42, 12.40, 3.80, 'Best All Rounder'),

(105, 5, 500, 40, 28, 45, 60, 20.00, 1.60, 'Top Raider'),

(106, 6, 260, 150, 19, 12, 30, 10.40, 6.00, 'Best Tackler'),

(107, 7, 380, 75, 24, 30, 48, 15.20, 3.00, 'Young Star'),

(108, 8, 290, 110, 21, 18, 38, 11.60, 4.40, 'Best Defender'),

(109, 9, 450, 55, 27, 40, 55, 18.00, 2.20, 'Most Valuable Player'),

(110, 10, 330, 85, 23, 22, 45, 13.20, 3.40, 'Rising Player');


SELECT * FROM KABADDI;

#Top 5 Kabaddi Players
SELECT *
FROM KABADDI
ORDER BY Raid_Points DESC
LIMIT 5;

CREATE TABLE HOCKEY (
    H_ID INT PRIMARY KEY,
    Player_ID INT,
    Goals_Scored INT,
    Assists INT,
    Matches_Won INT,
    Penalty_Corners INT,
    Yellow_Cards INT,
    Red_Cards INT,
    Man_of_the_Match INT,
    Achievement VARCHAR(100),

    FOREIGN KEY (Player_ID)
    REFERENCES PLAYER(Player_ID)
);

INSERT INTO HOCKEY
(H_ID, Player_ID, Goals_Scored, Assists, Matches_Won,
Penalty_Corners, Yellow_Cards, Red_Cards,
Man_of_the_Match, Achievement)
VALUES

(201, 1, 45, 20, 22, 15, 1, 0, 6, 'Best Forward'),

(202, 2, 38, 25, 20, 12, 2, 0, 5, 'Best Midfielder'),

(203, 3, 55, 18, 28, 20, 1, 0, 8, 'Tournament Winner'),

(204, 4, 42, 30, 25, 18, 3, 0, 7, 'Best Player'),

(205, 5, 60, 22, 30, 25, 1, 0, 10, 'Top Goal Scorer'),

(206, 6, 35, 28, 19, 10, 2, 1, 4, 'Best Defender'),

(207, 7, 50, 35, 26, 22, 1, 0, 9, 'Young Star'),

(208, 8, 40, 24, 21, 16, 2, 0, 5, 'Rising Player'),

(209, 9, 65, 30, 32, 28, 0, 0, 12, 'Most Valuable Player'),

(210, 10, 48, 26, 24, 19, 1, 0, 6, 'Best Attacker');

SELECT * FROM HOCKEY;

#Top 5 Hockey Players
SELECT *
FROM HOCKEY
ORDER BY Goals_Scored DESC
LIMIT 5;

CREATE TABLE CRICKET (
    C_ID INT PRIMARY KEY,
    Player_ID INT,
    Role VARCHAR(50),
    Runs_Scored INT,
    Wickets_Taken INT,
    Matches_Won INT,
    Centuries INT,
    Half_Centuries INT,
    Best_Bowling_Figures VARCHAR(20),
    Achievement VARCHAR(100),

    FOREIGN KEY (Player_ID)
    REFERENCES PLAYER(Player_ID)
);

INSERT INTO CRICKET
(C_ID, Player_ID, Role, Runs_Scored, Wickets_Taken,
 Matches_Won, Centuries, Half_Centuries,
 Best_Bowling_Figures, Achievement)
VALUES

(301, 1, 'Batsman', 4500, 5, 30, 12, 25, '1/20', 'Best Batsman'),

(302, 2, 'Bowler', 800, 150, 28, 0, 4, '6/25', 'Best Bowler'),

(303, 3, 'All Rounder', 3500, 95, 32, 8, 20, '5/30', 'Tournament Winner'),

(304, 4, 'Batsman', 5200, 10, 35, 15, 30, '2/15', 'Top Run Scorer'),

(305, 5, 'Wicket Keeper', 4000, 0, 26, 10, 22, '0/0', 'Best Wicket Keeper'),

(306, 6, 'Bowler', 600, 180, 34, 0, 2, '7/18', 'Best Bowler Award'),

(307, 7, 'All Rounder', 3800, 110, 31, 9, 18, '6/22', 'Young Star'),

(308, 8, 'Batsman', 4800, 2, 29, 14, 27, '1/10', 'Most Valuable Player'),

(309, 9, 'Bowler', 750, 200, 38, 0, 3, '8/15', 'Highest Wicket Taker'),

(310, 10, 'Batsman', 5500, 0, 40, 18, 35, '0/0', 'Player of Tournament');

SELECT * FROM CRICKET;

#Top 5 Cricket Players
SELECT *
FROM CRICKET
ORDER BY Runs_Scored DESC
LIMIT 5;

CREATE TABLE CHESS (
    Chess_ID INT PRIMARY KEY,
    Player_ID INT,
    Rating INT,
    Matches_Played INT,
    Wins INT,
    Losses INT,
    Draws INT,
    Best_Rating_Achieved INT,
    Titles_Won INT,
    Achievement VARCHAR(100),

    FOREIGN KEY (Player_ID)
    REFERENCES PLAYER(Player_ID)
);

INSERT INTO CHESS
(Chess_ID, Player_ID, Rating, Matches_Played, Wins,
 Losses, Draws, Best_Rating_Achieved, Titles_Won, Achievement)
VALUES

(401, 1, 1850, 50, 32, 10, 8, 1950, 2, 'District Champion'),

(402, 2, 2100, 60, 45, 8, 7, 2200, 5, 'State Champion'),

(403, 3, 1950, 55, 38, 9, 8, 2050, 3, 'Best Young Player'),

(404, 4, 2250, 70, 55, 7, 8, 2350, 8, 'National Champion'),

(405, 5, 1750, 45, 25, 12, 8, 1800, 1, 'Rising Star'),

(406, 6, 2050, 65, 48, 10, 7, 2150, 4, 'Tournament Winner'),

(407, 7, 2300, 80, 65, 5, 10, 2400, 10, 'Grandmaster Award'),

(408, 8, 1900, 52, 35, 9, 8, 2000, 2, 'Best Player Award'),

(409, 9, 2150, 75, 58, 8, 9, 2250, 6, 'International Winner'),

(410, 10, 2000, 60, 42, 11, 7, 2100, 3, 'Young Champion');

SELECT * FROM CHESS;

#Top 5 Chess Players
SELECT *
FROM CHESS
ORDER BY Rating DESC
LIMIT 5;

CREATE TABLE VOLLEYBALL (
    V_ID INT PRIMARY KEY,
    Player_ID INT,
    Points_Scored INT,
    Spikes INT,
    Blocks INT,
    Aces INT,
    Matches_Won INT,
    Man_of_the_Match INT,
    Set_Wins INT,
    Achievement VARCHAR(100),

    FOREIGN KEY (Player_ID)
    REFERENCES PLAYER(Player_ID)
);

INSERT INTO VOLLEYBALL
(V_ID, Player_ID, Points_Scored, Spikes, Blocks, Aces,
 Matches_Won, Man_of_the_Match, Set_Wins, Achievement)
VALUES

(501, 1, 350, 180, 45, 25, 22, 5, 60, 'Best Spiker'),

(502, 2, 420, 210, 50, 30, 25, 7, 70, 'Tournament Winner'),

(503, 3, 380, 190, 60, 22, 20, 4, 55, 'Best Blocker'),

(504, 4, 500, 250, 55, 40, 30, 10, 80, 'Player of Tournament'),

(505, 5, 320, 150, 40, 35, 18, 3, 48, 'Rising Star'),

(506, 6, 450, 220, 70, 28, 27, 8, 75, 'Best All Rounder'),

(507, 7, 550, 280, 65, 45, 35, 12, 90, 'National Champion'),

(508, 8, 400, 200, 58, 32, 23, 6, 65, 'Best Attacker'),

(509, 9, 480, 240, 75, 38, 29, 9, 82, 'Most Valuable Player'),

(510, 10, 360, 175, 48, 27, 21, 5, 58, 'Young Champion');

SELECT * FROM VOLLEYBALL;

#Top 5 Volleyball Players
SELECT P.Player_Name, P.Age, K.Raid_Points, K.Achievement
FROM PLAYER P
JOIN KABADDI K ON P.Player_ID = K.Player_ID
ORDER BY K.Raid_Points DESC
LIMIT 5;

#Find the Youngest Player with the Biggest Achievement
SELECT P.Player_ID, P.Player_Name, P.Age, 'Kabaddi' AS Sport, K.Achievement
FROM PLAYER P
JOIN KABADDI K ON P.Player_ID = K.Player_ID

UNION ALL

SELECT P.Player_ID, P.Player_Name, P.Age, 'Hockey' AS Sport, H.Achievement
FROM PLAYER P
JOIN HOCKEY H ON P.Player_ID = H.Player_ID

UNION ALL
SELECT P.Player_ID, P.Player_Name, P.Age, 'Cricket' AS Sport, C.Achievement
FROM PLAYER P
JOIN CRICKET C ON P.Player_ID = C.Player_ID

UNION ALL

SELECT P.Player_ID, P.Player_Name, P.Age, 'Chess' AS Sport, CH.Achievement
FROM PLAYER P
JOIN CHESS CH ON P.Player_ID = CH.Player_ID

UNION ALL

SELECT P.Player_ID, P.Player_Name, P.Age, 'Volleyball' AS Sport, V.Achievement
FROM PLAYER P
JOIN VOLLEYBALL V ON P.Player_ID = V.Player_ID

ORDER BY Age ASC
LIMIT 1;

#Youngest player with a major achievement
SELECT *
FROM (
    SELECT P.Player_Name, P.Age, 'Kabaddi' AS Sport, K.Achievement
    FROM PLAYER P
    JOIN KABADDI K ON P.Player_ID = K.Player_ID

    UNION ALL

    SELECT P.Player_Name, P.Age, 'Hockey' AS Sport, H.Achievement
    FROM PLAYER P
    JOIN HOCKEY H ON P.Player_ID = H.Player_ID

    UNION ALL

    SELECT P.Player_Name, P.Age, 'Cricket' AS Sport, C.Achievement
    FROM PLAYER P
    JOIN CRICKET C ON P.Player_ID = C.Player_ID

    UNION ALL

    SELECT P.Player_Name, P.Age, 'Chess' AS Sport, CH.Achievement
    FROM PLAYER P
    JOIN CHESS CH ON P.Player_ID = CH.Player_ID

    UNION ALL

    SELECT P.Player_Name, P.Age, 'Volleyball' AS Sport, V.Achievement
    FROM PLAYER P
    JOIN VOLLEYBALL V ON P.Player_ID = V.Player_ID
) AS All_Players
WHERE Achievement LIKE '%Champion%'
   OR Achievement LIKE '%Winner%'
   OR Achievement LIKE '%Most Valuable Player%'
   OR Achievement LIKE '%Player of Tournament%'
ORDER BY Age ASC
LIMIT 1;