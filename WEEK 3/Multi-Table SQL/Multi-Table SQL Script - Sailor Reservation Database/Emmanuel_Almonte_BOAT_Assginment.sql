-- Created by: Emmanuel Almonte.

-- Result for information request 1.
--Find the Boat ID, Sailor names and sailor ages of the sailor that reserved boat 3   

SELECT sname, age, bid_FK
FROM Sailor
JOIN Reservation
ON Sailor.sid = Reservation.sid_FK
WHERE bid_FK = 3;

-- Result for information request 2.
--Find the Boat ID,  Boat Color, names and ages of the sailor that reserved red or green boat
SELECT bid, color, sid, sname, age
FROM Sailor
JOIN Reservation 
ON Sailor.sid = Reservation.sid_FK
JOIN Boat
ON Boat.bid = Reservation.bid_FK
WHERE color = "Red" OR color = "Green";


-- End of information request.