drop table INVOICE cascade constraints;

CREATE TABLE INVOICE (
    INV_ID NUMBER CONSTRAINT NOT NULL, -- PK
    LEASE_ID NUMBER NOT NULL, -- PK+FK REFERENCE LEASE TABLE
    INV_DUE DATE CONSTRAINT NN_INV_DUE NOT NULL,
    INV_SEM NUMBER(1) CONSTRAINT NN_INV_SEM NOT NULL,
    CONSTRAINT PK_INVOICE PRIMARY KEY (INV_ID, LEASE_ID),
    CONSTRAINT FK_INVOICE_LEASE FOREIGN KEY (LEASE_ID) REFERENCES LEASE(LEASE_ID)
);

CREATE TABLE INVOICE_LINE (
    INV_ID NUMBER NOT NULL,  -- FK REFERENCE INVOICE TABLE
    INV_LINE_ID NUMBER NOT NULL,  -- PK
    INV_PAID DATE CONSTRAINT NN_INV_PAID NOT NULL,
    INV_METHOD VARCHAR2(10) CONSTRAINT NN_INV_METHOD NOT NULL,
    INV_REMIND1 DATE CONSTRAINT NN_INV_REMIND1 NOT NULL,
    INV_REMIND2 DATE CONSTRAINT NN_INV_REMIND2 NOT NULL,
    CONSTRAINT PK_INVOICE_LINE PRIMARY KEY (INV_ID, INV_LINE_ID),
    CONSTRAINT FK_INVOICE_LINE_INV FOREIGN KEY (INV_ID) REFERENCES INVOICE (INV_ID)
)

CREATE TABLE INSPECTION (
    INSP_ID NUMBER NOT NULL,  -- PK
    ACCOM_ID NUMBER NOT NULL,  -- FK REFERENCE ACCOMMODATION TABLE
    STAFF_ID NUMBER NOT NULL,  -- FK REFERENCE STAFF TABLE
    INSP_DATE DATE CONSTRAINT NN_INSP_DATE NOT NULL,
    INSP_RESULT CHAR(1) CHECK (INSP_RESULT IN ('T', 'F')) NOT NULL,  -- BOOLEAN TRUE/FALSE
    INSP_COMMENT VARCHAR2(50),
    CONSTRAINT PK_INSPECTION PRIMARY KEY (INSP_ID, ACCOM_ID, STAFF_ID),
    CONSTRAINT FK_INSPECTION_STAFF FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID),
    CONSTRAINT FK_INSPECTION_ACCOM FOREIGN KEY (ACCOM_ID) REFERENCES ACCOMMODATION(ACCOM_ID)
);

CREATE TABLE STAFF (
    STAFF_ID NUMBER NOT NULL,  -- PK
    STAFF_FNAME VARCHAR2(20) CONSTRAINT NN_STAFF_FNAME NOT NULL,
    STAFF_LNAME VARCHAR2(20) CONSTRAINT NN_STAFF_LNAME NOT NULL,
    STAFF_ADDRESS VARCHAR2(100) CONSTRAINT NN_STAFF_ADDRESS NOT NULL,  
    STAFF_SEX VARCHAR2(10) CONSTRAINT NN_STAFF_SEX NOT NULL, -- SHOULD THIS BE NULLABLE? OR OPTION FOR "RATHER NOT SAY"
    CONSTRAINT PK_STAFF PRIMARY KEY (STAFF_ID)
);

CREATE TABLE STAFF_HISTORY (
    STAFF_ID NUMBER NOT NULL,  -- PK+FK REFERENCE STAFF TABLE
    STAFF_START DATE NOT NULL,  -- PK
    STAFF_END DATE,  -- NULLABLE ALLOWING FOR ONGOING POSITIONS
    STAFF_POSITION VARCHAR2(20) CONSTRAINT NN_STAFF_POSITION NOT NULL,
    STAFF_LOCATION VARCHAR2(20) CONSTRAINT NN_STAFF_LOCATION NOT NULL,
    DEG_DEPT VARCHAR2(50),  -- FK REFERECE DEGREE
    CONSTRAINT PK_STAFF_HISTORY PRIMARY KEY (STAFF_ID, STAFF_START),
    CONSTRAINT FK_STAFF_HISTORY_STAFF FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID),
    CONSTRAINT FK_STAFF_HISTORY_DEPT FOREIGN KEY (DEG_DEPT) REFERENCES DEPARTMENT(DEG_DEPT)
);

CREATE TABLE UNIT (
    UNIT_NUM NUMBER NOT NULL,  -- PK
    UNIT_ISFURNISHED CHAR(1) CHECK (UNIT_ISFURNISHED IN ('T', 'F')) NOT NULL,  -- BOOLEAN TRUE/FALSE
    UNIT_MRENT NUMBER(10, 2) NOT NULL,  -- MONTHLY RENT 2DP
    ACC_ID NUMBER NOT NULL,  -- FK REFERENCE ACCOMMODATION TABLE
    UNIT_MEMCOUNT NUMBER(20) CONSTRAINT NN_UNIT_MEMCOUNT NOT NULL, --AMOUNT OF CURRENT MEMBERS
    CONSTRAINT PK_UNIT PRIMARY KEY (UNIT_NUM),
    CONSTRAINT FK_UNIT_ACCOM FOREIGN KEY (ACC_ID) REFERENCES ACCOMMODATION(ACC_ID)
);

CREATE TABLE MEMBER (
    MEM_ID NUMBER NOT NULL,  -- PK
    MEM_FNAME VARCHAR2(20) CONSTRAINT NN_MEM_FNAME NOT NULL,
    MEM_LNAME VARCHAR2(20) CONSTRAINT NN_MEM_LNAME NOT NULL,
    MEM_SEX VARCHAR2(10) CONSTRAINT NN_MEM_SEX NOT NULL, -- SHOULD THIS BE NULLABLE? OR OPTION FOR "RATHER NOT SAY"
    MEM_DOB DATE CONSTRAINT NN_MEM_DOB NOT NULL,  
    MEM_PHONE VARCHAR2(15),
    MEM_EMAIL VARCHAR2(50), 
    UNIT_NUM NUMBER NOT NULL,  -- FK REFERENCE UNIT TABLE
    CONSTRAINT PK_MEMBER PRIMARY KEY (MEM_ID),
    CONSTRAINT FK_MEMBER_UNIT FOREIGN KEY (UNIT_NUM) REFERENCES UNIT(UNIT_NUM)
    CONSTRAINT CK_MEMBER_PHONE_EMAIL CHECK (MEM_PHONE IS NOT NULL OR MEM_EMAIL IS NOT NULL)  -- MAKE IT THAT THEY CAN EITHER GIVE EMAIL OR PHONE NUM
);

CREATE TABLE FLAT_ROOM (
    ACCOM_ID NUMBER NOT NULL,  -- PK+FK REFERENCE ACCOMMODATION TABLE
    FLAT_NUM NUMBER NOT NULL,  -- PK+FK FLAT TABLE
    STU_ID NUMBER,  -- FK REFERENCE STUDENT TABLE
    FLAT_ROOM_RENT NUMBER(10, 2) NOT NULL,
    CONSTRAINT PK_FLAT_ROOM PRIMARY KEY (ACCOM_ID, FLAT_NUM),
    CONSTRAINT FK_FLAT_ROOM_ACCOM FOREIGN KEY (ACCOM_ID) REFERENCES ACCOMMODATION(ACCOM_ID),
    CONSTRAINT FK_FLAT_ROOM_FLAT FOREIGN KEY (FLAT_NUM) REFERENCES FLAT(FLAT_NUM),
    CONSTRAINT FK_FLAT_ROOM_STUDENT FOREIGN KEY (STU_ID) REFERENCES STUDENT(STU_ID)
);

CREATE TABLE FLAT (
    FLAT_NUM NUMBER NOT NULL,  -- Pk
    FLAT_ADDRESS VARCHAR2(100) NOT NULL,
    FLAT_ROOM_AVAIL NUMBER(20) NOT NULL,  -- AVAILABLE ROOMS
    CONSTRAINT PK_FLAT PRIMARY KEY (FLAT_NUM)
);

CREATE TABLE HALL_ROOM (
    ACCOM_ID NUMBER NOT NULL,  -- PK+FK REFERENCE ACCOMMODATION TABLE
    HALL_NAME VARCHAR2(50) NOT NULL,  -- PK
    HALL_ROOM_NUM NUMBER(10) NOT NULL,
    HALL_ROOM_RENT NUMBER(10, 2) NOT NULL,
    HALL_ROOM_DIET VARCHAR2(50), 
    CONSTRAINT PK_HALL_ROOM PRIMARY KEY (ACCOM_ID, HALL_NAME),
    CONSTRAINT FK_HALL_ROOM_ACCOM FOREIGN KEY (ACCOM_ID) REFERENCES ACCOMMODATION(ACCOM_ID)
);-- SHOULD THIS HAVE STU_ID?

CREATE TABLE HALL (
    HALL_NAME VARCHAR2(50) NOT NULL,  -- PK
    HALL_ADDR VARCHAR2(100) NOT NULL,
    HALL_PHONE VARCHAR2(15) NOT NULL, 
    STAFF_ID NUMBER NOT NULL,  -- FK REFERENCE STAFF TABLE
    HALL_ROOM_AVAIL NUMBER(20) NOT NULL,  -- AVAILABLE ROOMS
    CONSTRAINT PK_HALL PRIMARY KEY (HALL_NAME),
    CONSTRAINT FK_HALL_STAFF FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID)
);
