
CREATE VIEW ACCOM_VIEW AS
SELECT 
    CASE 
        WHEN ac.FLAT_ROOM_ID IS NOT NULL THEN
            CONCAT(f.FLAT_BUILDING_ID, '-', f.FLAT_ID, '-', ac.FLAT_ROOM_ID)
        WHEN ac.HALL_ROOM_ID IS NOT NULL THEN
            CONCAT(h.HALL_BUILDING_ID, '-', h.HALL_ID, '-', ac.HALL_ROOM_ID)
        WHEN ac.UNIT_ID IS NOT NULL THEN
            CONCAT(u.UNIT_BUILDING_ID, '-', ac.UNIT_ID, '-', ac.UNIT_ID)
    END AS ACCOM_ID,
    ac.*
FROM ACCOMMODATION ac
LEFT JOIN FLAT f
ON ac.FLAT_ROOM_ID = f.FLAT_ROOM_ID
LEFT JOIN HALL h 
ON ac.HALL_ROOM_ID = h.HALL_ROOM_ID
LEFT JOIN UNIT u 
ON ac.UNIT_ID = u.UNIT_ID;

INSERT INTO ACCOMMODATION VALUES 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 1), 
1, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 1), 
NULL, 1, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 1), 
NULL, NULL, 1); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 2), 
2, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 2), 
NULL, 2, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 2), 
NULL, NULL, 2); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 3), 
3, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 10), 
NULL, 10, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 3), 
NULL, NULL, 3); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 4), 
4, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 11), 
NULL, 11, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 4), 
NULL, NULL, 4); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 5), 
5, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 12), 
NULL, 12, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 5), 
NULL, NULL, 5); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 6), 
6, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 71), 
NULL, 71, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 6), 
NULL, NULL, 6); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 7), 
7, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 72), 
NULL, 72, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 7), 
NULL, NULL, 7); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 8), 
8, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 73), 
NULL, 73, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 8), 
NULL, NULL, 8); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 9), 
9, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 74), 
NULL, 74, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 9), 
NULL, NULL, 9); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 10), 
10, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 75), 
NULL, 75, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 10), 
NULL, NULL, 10); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 71), 
71, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 141), 
NULL, 141, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 11), 
NULL, NULL, 11); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 72), 
72, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 142), 
NULL, 142, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE UNIT_ID = 12), 
NULL, NULL, 12); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 73), 
73, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 143), 
NULL, 143, NULL);
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 74), 
74, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 144), 
NULL, 144, NULL);
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE FLAT_ROOM_ID = 75), 
75, NULL, NULL); 
((SELECT ACCOM_ID FROM ACCOM_VIEW WHERE HALL_ROOM_ID = 145), 
NULL, 145, NULL);



