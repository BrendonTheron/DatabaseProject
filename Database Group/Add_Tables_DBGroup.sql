--CREATED
CREATE TABLE FLAT_ROOM (
    FLAT_ROOM_ID VARCHAR2(3) NOT NULL,  --PK
    FLAT_ID NUMBER NOT NULL,
    FLAT_ROOM_RENT NUMBER(10, 2) NOT NULL,
    FLATT_ROOM_ISAVAIL CHAR(1) NOT NULL,
    CONSTRAINT PK_FLAT_ROOM PRIMARY KEY (FLAT_ROOM_ID),   --PK
    CONSTRAINT FK_FLAT_ROOM_FLAT FOREIGN KEY (FLAT_ID) REFERENCES FLAT(FLAT_ID)  --FK TO FLAT
);    
   
--CREATED
CREATE TABLE FLAT (
    FLAT_ID NUMBER NOT NULL,  -- PK
    FLAT_BUILDING_ID NUMBER NOT NULL, --FK 
    CONSTRAINT PK_FLAT PRIMARY KEY (FLAT_ID),  --PK
    CONSTRAINT FK_FLAT_FLAT_BUILDING_ID FOREIGN KEY (FLAT_BUILDING_ID) REFERENCES FLAT_BUILDING(FLAT_BUILDING_ID) --FK TO FLAT_BUILDING
);

--CREATED
CREATE TABLE FLAT_BUILDING (
    FLAT_BUILDING_ID NUMBER NOT NULL, --PK
    FLAT_BUILDING_STREET VARCHAR2(50) NOT NULL, 
    FLAT_BUILDING_CITY VARCHAR2(50) NOT NULL,
    FLAT_BUILDING_ZIP VARCHAR2(50) NOT NULL,
    CONSTRAINT PK_FLAT_BUILDING PRIMARY KEY (FLAT_BUILDING_ID)  --PK
);

--CREATED
CREATE TABLE HALL_ROOM (
    HALL_ROOM_ID VARCHAR2(3),       --PK1
    HALL_ID VARCHAR2(50) NOT NULL,  --FK1
    HALL_ROOM_RENT NUMBER(10, 2) NOT NULL,
    HALL_ROOM_DIET VARCHAR2(50), 
    HALL_ROOM_ISAVAIL CHAR(1) NOT NULL, --NOT SURE HOW TO MAKE IT Y/N ONLY
    CONSTRAINT PK_HALL_ROOM PRIMARY KEY (HALL_ROOM_ID, HALL_), --PK
    CONSTRAINT FK_HALL_ROOM_HALL FOREIGN KEY (HALL_ID) REFERENCES HALL(HALL_ID) --FK TO HALL
    );

--CREATED
CREATE TABLE HALL (
    HALL_ID VARCHAR2(3) NOT NULL,  --PK
    STAFF_ID NUMBER NOT NULL,
    HALL_NAME VARCHAR2(15) NOT NULL,
    HALL_STREET VARCHAR2(50) NOT NULL,
    HALL_CITY VARCHAR2(50) NOT NULL,
    HALL_ZIP VARCHAR2(10) NOT NULL,
    HALL_AREA_CODE NUMBER NOT NULL,
    HALL_PHONE NUMBER NOT NULL, 
    CONSTRAINT PK_HALL PRIMARY KEY (HALL_ID),  --PK
--TO ADD
    CONSTRAINT FK_HALL_STAFF FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID),  --FK TO STAFF
    CONSTRAINT FK_HALL_ROOM_DIET_HALL_ROOM FOREIGN KEY (HALL_ROOM_DIET) REFERENCES DIET(HALL_ROOM_DIET)  --FK TO DIET
);

--CREATED
CREATE TABLE DIET (
    HALL_ROOM_DIET VARCHAR2(50), --PK
    VEGAN CHAR(1) NOT NULL, 
    DAIRY_FREE CHAR(1) NOT NULL, 
    GLUTEN_FREE CHAR(1) NOT NULL, 
    VEGETARIAN CHAR(1) NOT NULL, 
    NA CHAR(1) NOT NULL,
    ALLERGY VARCHAR(200), 
    CONSTRAINT PK_HALL_ROOM_DIET PRIMARY KEY (HALL_ROOM_DIET)
);