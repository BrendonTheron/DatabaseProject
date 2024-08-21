--CREATED WITHOUT FKS
CREATE TABLE FLAT_ROOM (
    ACCOM_ID NUMBER NOT NULL,  -- PK+FK REFERENCE ACCOMMODATION TABLE
    FLAT_NUM NUMBER NOT NULL,  -- PK+FK FLAT TABLE
    STU_ID NUMBER,  -- is this FK need?
    FLAT_ROOM_RENT NUMBER(10, 2) NOT NULL,
    CONSTRAINT PK_FLAT_ROOM PRIMARY KEY (ACCOM_ID, FLAT_NUM), 

    CONSTRAINT FK_FLAT_ROOM_ACCOM FOREIGN KEY (ACCOM_ID) REFERENCES ACCOMMODATION(ACCOM_ID), --waiting on other entities
    CONSTRAINT FK_FLAT_ROOM_FLAT FOREIGN KEY (FLAT_NUM) REFERENCES FLAT(FLAT_NUM),
    CONSTRAINT FK_FLAT_ROOM_STUDENT FOREIGN KEY (STU_ID) REFERENCES STUDENT(STU_ID)
);

--CREATED
CREATE TABLE FLAT (
    FLAT_NUM NUMBER NOT NULL,  -- Pk
    FLAT_ADDRESS VARCHAR2(100) NOT NULL,
    FLAT_ROOM_AVAIL NUMBER(20) NOT NULL,
    CONSTRAINT PK_FLAT PRIMARY KEY (FLAT_NUM)
);

--CREATED WITHOUT FKS
CREATE TABLE HALL_ROOM (
    ACCOM_ID NUMBER NOT NULL,  -- PK+FK REFERENCE ACCOMMODATION TABLE
    HALL_NAME VARCHAR2(50) NOT NULL,  -- PK
    HALL_ROOM_NUM NUMBER(10) NOT NULL,
    HALL_ROOM_RENT NUMBER(10, 2) NOT NULL,
    HALL_ROOM_DIET VARCHAR2(50), 
    CONSTRAINT PK_HALL_ROOM PRIMARY KEY (ACCOM_ID, HALL_NAME),
    CONSTRAINT FK_HALL_ROOM_ACCOM FOREIGN KEY (ACCOM_ID) REFERENCES ACCOMMODATION(ACCOM_ID)
);-- SHOULD THIS HAVE STU_ID?

--CREATED WITHOUT FKS
CREATE TABLE HALL (
    HALL_NAME VARCHAR2(50) NOT NULL,  -- PK
    HALL_ADDR VARCHAR2(100) NOT NULL,
    HALL_PHONE VARCHAR2(15) NOT NULL, 
    STAFF_ID NUMBER NOT NULL,  -- FK REFERENCE STAFF TABLE
    HALL_ROOM_AVAIL NUMBER(20) NOT NULL,  -- AVAILABLE ROOMS
    CONSTRAINT PK_HALL PRIMARY KEY (HALL_NAME),
    CONSTRAINT FK_HALL_STAFF FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID)
);
