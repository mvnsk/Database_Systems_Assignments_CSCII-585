/*
We could have 24 new columns (along with one roomNum column), one for each hour of the day,which would hold the groupName that has booked the room
for that hour.
The groups are supposed to make a new reservation for each hour they need a room. 
The groups can only modify a field if its value is NUll.
  
Note: Table created using Oracle Live SQL 
*/

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
hour_num_1 VARCHAR2(10), 
hour_num_2 VARCHAR2(10),
hour_num_3 VARCHAR2(10),
hour_num_4 VARCHAR2(10),
hour_num_5 VARCHAR2(10),
hour_num_6 VARCHAR2(10),
hour_num_7 VARCHAR2(10),
hour_num_8 VARCHAR2(10),
hour_num_9 VARCHAR2(10),
hour_num_10 VARCHAR2(10),
hour_num_11 VARCHAR2(10),
hour_num_12 VARCHAR2(10),
hour_num_13 VARCHAR2(10),
hour_num_14 VARCHAR2(10),
hour_num_15 VARCHAR2(10),
hour_num_16 VARCHAR2(10),
hour_num_17 VARCHAR2(10),
hour_num_18 VARCHAR2(10),
hour_num_19 VARCHAR2(10),
hour_num_20 VARCHAR2(10),
hour_num_21 VARCHAR2(10),
hour_num_22 VARCHAR2(10),
hour_num_23 VARCHAR2(10),
hour_num_24 VARCHAR2(10),
PRIMARY KEY (roomNum));