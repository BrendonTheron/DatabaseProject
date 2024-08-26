

CREATE TABLE UNIT_BUILDING (
    UNIT_BUILDING_ID NUMBER NOT NULL, --PK
    UNIT_BUILDING_STREET VARCHAR2(50) NOT NULL, 
    UNIT_BUILDING_CITY VARCHAR2(50) NOT NULL,
    UNIT_BUILDING_ZIP VARCHAR2(50) NOT NULL,
    CONSTRAINT PK_UNIT_BUILDING PRIMARY KEY (UNIT_BUILDING_ID)  --PK
);

CREATE TABLE LEASE (
    LEASE_ID NUMBER NOT NULL, -- PK
    LEASE_RENT NUMBER(10,2) NOT NULL, 
    LEAS_START DATE CONSTRAINT NN_LEASE_START NOT NULL,
    LEASE_END DATE CONSTRAINT NN_LEASE_END NOT NULL
    ACCOM_ID NUMBER NOT NULL, -- FK
    STU_ID NUMBER NOT NULL, -- FK
    CONSTRAINT PK_LEASE PRIMARY KEY (LEASE_ID),
    CONSTRAINT FK_LEASE_ACCOMMODATION FOREIGN KEY (ACCOM_ID) REFERENCES ACCOMMODATION(ACCOM_ID)
    CONSTRAINT FK_LEASE_STUDENT FOREIGN KEY (STU_ID) REFERENCES STUDENT(STU_ID)
);

CREATE TABLE UNIT (
    UNIT_ID NUMBER NOT NULL,  -- PK
    UNIT_FURNISHED CHAR(1) CHECK (UNIT_FURNISHED IN ('T', 'F')) NOT NULL,  -- BOOLEAN TRUE/FALSE
    UNIT_RENT NUMBER(10, 2) NOT NULL,  
    UNIT_MEMCOUNT NUMBER(20) CONSTRAINT NN_UNIT_MEMCOUNT NOT NULL, --AMOUNT OF CURRENT MEMBERS
    UNIT_ISAVAIL CHAR(1) CHECK (UNIT_ISAVAIL IN ('T', 'F')) NOT NULL, 
    UNIT_BUILDING_ID NUMBER NOT NULL, -- FK 
    CONSTRAINT PK_UNIT PRIMARY KEY (UNIT_ID),
    CONSTRAINT FK_UNIT_UNIT_BUILDING FOREIGN KEY (UNIT_BUILDING_ID) REFERENCES UNIT_BUILDING(UNIT_BUILDING_ID)
);

CREATE TABLE MEMBER (
    MEM_ID NUMBER NOT NULL,  -- PK
    MEM_FNAME VARCHAR2(20) CONSTRAINT NN_MEM_FNAME NOT NULL,
    MEM_LNAME VARCHAR2(20) CONSTRAINT NN_MEM_LNAME NOT NULL,
    MEM_SEX VARCHAR2(10) CONSTRAINT NN_MEM_SEX NULL, 
    MEM_DOB DATE CONSTRAINT NN_MEM_DOB NOT NULL,  
    MEM_PHONE VARCHAR2(15),
    MEM_EMAIL VARCHAR2(50), 
    UNIT_ID NUMBER NOT NULL,  -- FK 
    CONSTRAINT PK_MEMBER PRIMARY KEY (MEM_ID),
    CONSTRAINT FK_MEMBER_UNIT FOREIGN KEY (UNIT_ID) REFERENCES UNIT(UNIT_ID),
    CONSTRAINT FK_MEMBER_PHONE_EMAIL CHECK (MEM_PHONE IS NOT NULL OR MEM_EMAIL IS NOT NULL)  -- MAKE IT THAT THEY CAN EITHER GIVE EMAIL OR PHONE NUM
);
