-- Created By: Emmanuel Almonte.
-- Course and Instructor: CIS 205, Craig Nelson.
-- Created On: July 16, 2021.


-- Find the sid and  names of sailors who have reserved both a red boat or a green boat.
-- Result for information request 1
SELECT sailor.sid, sname, color
FROM sailor
JOIN reservation
ON sailor.sid = reservation.sid
JOIN boat
ON boat.bid = reservation.bid
WHERE color = "Red" OR
      color = "Green";

-- Find the names of sailors who have reserved both a red boat and a green boat.
-- Result for information request 2

SELECT DISTINCT sailor.sid, sname
FROM sailor
JOIN reservation
ON sailor.sid = reservation.sid
JOIN boat
ON boat.bid = reservation.bid
WHERE color = "Red"
AND sailor.sid IN 

(SELECT sailor.sid
FROM sailor
JOIN reservation
ON sailor.sid = reservation.sid
JOIN boat
ON boat.bid = reservation.bid
WHERE color = "Green");

--Find the sids and names of all sailors who have reserved red boats but not green boats.
-- Result for information request 3


SELECT DISTINCT sailor.sid, sname
FROM sailor
JOIN reservation
ON sailor.sid = reservation.sid
JOIN boat
ON boat.bid = reservation.bid
WHERE color = "Red"
AND sailor.sid NOT IN 

(SELECT sailor.sid
FROM sailor
JOIN reservation
ON sailor.sid = reservation.sid
JOIN boat
ON boat.bid = reservation.bid
WHERE color = "Green");