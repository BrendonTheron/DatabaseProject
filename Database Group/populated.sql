CREATE TABLE INVOICE (
    INV_ID NUMBER CONSTRAINT NOT NULL, -- PK
    LEASE_ID NUMBER NOT NULL, -- PK+FK REFERENCE LEASE TABLE
    INV_SEM VARCHAR(6) CONSTRAINT NN_INV_SEM NOT NULL,
    INV_DUE DATE CONSTRAINT NN_INV_DUE NOT NULL,
    CONSTRAINT PK_INVOICE PRIMARY KEY (INV_ID, LEASE_ID),
    CONSTRAINT FK_INVOICE_LEASE FOREIGN KEY (LEASE_ID) REFERENCES LEASE(LEASE_ID))
;


INSERT INTO INVOICE VALUES (
(1, 1001, 'S12024', '2024-09-01'),
(2, 1002, 'S12024', '2024-09-01'),
(3, 1003, 'S22023', '2024-08-01'),
(4, 1004, 'S22024', '2024-07-01'),
(5, 1005, 'SS2022', '2024-09-01'),
(6, 1006, 'S12024', '2024-03-01'),
(7, 1007, 'S22024', '2023-09-01'),
(8, 1008, 'S22024', '2023-09-01'),
(9, 1009, 'S12025', '2023-06-01'),
(10, 1010, 'S12025', '2024-08-01'),
(11, 1011, 'S22018', '2024-04-01'),
(12, 1012, 'S22019', '2020-10-01'),
(13, 1013, 'SS2020', '2020-09-01'),
(14, 1014, 'S22024', '2020-09-01'),
(15, 1015, 'S22024', '2020-07-01'),
(16, 1016, 'S12018', '2024-03-01'),
(17, 1017, 'S12019', '2022-06-01'),
(18, 1018, 'S12022', '2022-05-01'),
(19, 1019, 'S22019', '2022-12-01'),
(20, 1020, 'S22023', '2021-11-01')
;



CREATE TABLE INVOICE_LINE (
    INV_ID NUMBER NOT NULL,  -- FK REFERENCE INVOICE TABLE
    INV_LINE_ID NUMBER NOT NULL,  -- PK
    INV_PAID_DATE DATE, -- NULLABLE
    INV_PAID_AMT NUMBER NOT NULL,
    INV_METHOD VARCHAR2(10), -- NULLABLE
    INV_REMIND1 DATE CONSTRAINT NN_INV_REMIND1 NOT NULL,
    INV_REMIND2 DATE, -- NULLABLE
    CONSTRAINT PK_INVOICE_LINE PRIMARY KEY (INV_ID, INV_LINE_ID),
    CONSTRAINT FK_INVOICE_LINE_INV FOREIGN KEY (INV_ID) REFERENCES INVOICE (INV_ID)
    CONSTRAINT CHK_INV_PAID_DATE_METHOD CHECK (
        (INV_PAID_DATE IS NULL AND INV_METHOD IS NULL) OR
        (INV_PAID_DATE IS NOT NULL AND INV_METHOD IS NOT NULL)))
;

INSERT INTO INVOICE_LINE VALUES
(1, 1, '2024-09-10', 500.00, 'Cheque', '2024-09-05', NULL),
(1, 2, NULL, 250.00, NULL, '2024-09-10', NULL),
(2, 1, '2024-09-15', 600.00, 'Credit Card', '2024-09-10', NULL),
(2, 2, NULL, 300.00, NULL, '2024-09-15', '2024-09-25'),
(3, 1, NULL, 550.00, NULL, '2024-10-01', NULL),
(4, 1, '2024-10-12', 620.00, 'Cheque', '2024-10-07', NULL),
(4, 2, NULL, 310.00, NULL, '2024-10-10', '2024-10-20'),
(5, 1, '2024-11-02', 580.00, 'Credit Card', '2024-10-28', NULL),
(5, 2, '2024-11-08', 290.00, 'Cheque', '2024-11-03', NULL),
(6, 1, NULL, 600.00, 'Cash', '2024-11-10', NULL),
(6, 2, '2024-11-20', 300.00, 'Credit Card', '2024-11-15', '2024-11-25'),
(7, 1, '2024-12-01', 630.00, 'Cheque', '2024-11-27', '2024-12-05'),
(8, 1, '2024-12-10', 650.00, NULL, '2024-12-05', NULL),
(9, 1, '2025-01-10', 700.00, 'Cash', '2024-01-05', NULL),
(10, 1, '2025-01-20', 720.00, 'Cheque', '2024-01-15', NULL),
(11, 1, '2025-02-05', 740.00, 'Credit Card', '2024-02-01', NULL),
(12, 1, '2025-02-15', 760.00, 'Cash', '2024-02-10', NULL),
(13, 1, '2025-03-05', 780.00, 'Cheque', '2024-03-01', NULL),
(14, 1, '2025-03-15', 800.00, 'Credit Card', '2024-03-10', NULL),
(15, 1, '2025-04-05', 820.00, 'Cash', '2024-04-01', NULL),
(16, 1, '2025-04-15', 840.00, 'Cheque', '2022-04-10', NULL),
(17, 1, NULL, 860.00, NULL, '2023-04-12', NULL),
(18, 1, '2025-05-05', 880.00, 'Cheque', '2022-05-01', NULL),
(19, 1, NULL, 900.00, NULL, '2025-05-02', '2023-05-12'),
(20, 1, '2025-06-05', 920.00, 'Credit Card', '2023-06-01', NULL)
;





CREATE TABLE INSPECTION (
    INSP_ID NUMBER NOT NULL,  -- PK
    ACCOM_ID NUMBER NOT NULL,  -- FK REFERENCE ACCOMMODATION TABLE
    STAFF_ID NUMBER NOT NULL,  -- FK REFERENCE STAFF TABLE
    INSP_DATE DATE CONSTRAINT NN_INSP_DATE NOT NULL,
    INSP_RESULT CHAR(1) CHECK (INSP_RESULT IN ('Y', 'N')) NOT NULL,  -- BOOLEAN TRUE/FALSE
    INSP_COMMENT VARCHAR2(50), -- NULLABLE
    CONSTRAINT PK_INSPECTION PRIMARY KEY (INSP_ID, ACCOM_ID, STAFF_ID),
    CONSTRAINT FK_INSPECTION_STAFF FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID),
    CONSTRAINT FK_INSPECTION_ACCOM FOREIGN KEY (ACCOM_ID) REFERENCES ACCOMMODATION(ACCOM_ID))
;

-- need some actual accom_ids
INSERT INTO INSPECTION VALUES
(1, 100-101-11, 201, '2024-01-10', 'Y', NULL),
(2, 100-101-11, 202, '2024-01-15', 'N', 'Minor issues found. Requires follow-up.'),
(3, 100-101-11, 203, '2024-02-05', 'Y', NULL),
(4, 100-101-11, 204, '2024-02-20', 'N', 'Safety concerns need immediate attention.'),
(5, 100-101-11, 205, '2024-03-01', 'Y', NULL),
(6, 100-101-11, 206, '2024-03-15', 'Y', NULL),
(7, 100-101-11, 207, '2024-04-10', 'N', 'Several maintenance issues detected.'),
(8, 100-101-11, 208, '2024-04-20', 'Y', NULL),
(9, 100-101-11, 209, '2024-05-05', 'Y', NULL),
(10, 100-101-11, 210, '2024-05-15', 'N', 'Issues with cleanliness observed.'),
(11, 100-101-11, 211, '2024-06-01', 'Y', NULL),
(12, 100-101-11, 212, '2024-06-15', 'N', 'Requires improvements in ventilation.'),
(13, 100-101-11, 213, '2024-07-10', 'Y', NULL),
(14, 100-101-11, 214, '2024-07-20', 'N', 'Maintenance required for plumbing.'),
(15, 100-101-11, 215, '2024-08-01', 'Y', NULL),
(16, 100-101-11, 216, '2024-08-15', 'Y', 'No issues reported.'),
(17, 100-101-11, 217, '2024-09-01', 'N', 'Electrical faults need attention.'),
(18, 100-101-11, 218, '2024-09-15', 'Y', NULL),
(19, 100-101-11, 219, '2024-10-01', 'N', 'Minor issues with cleanliness.'),
(20, 100-101-11, 220, '2024-10-15', 'Y', 'Inspection complete. No comments.')
;


CREATE TABLE STAFF (
    STAFF_ID NUMBER NOT NULL,  -- PK
    STAFF_FNAME VARCHAR2(20) CONSTRAINT NN_STAFF_FNAME NOT NULL,
    STAFF_LNAME VARCHAR2(20) CONSTRAINT NN_STAFF_LNAME NOT NULL,
    STAFF_DOB DATE CONSTRAINT NN_STAFF_DOB NOT NULL,
    STAFF_ADDR_CITY VARCHAR2(100) CONSTRAINT NN_STAFF_ADDR_CITY NOT NULL,  
    STAFF_ADDR_SUBURB VARCHAR2(100) CONSTRAINT NN_STAFF_ADDR_SUBURB NOT NULL,  
    STAFF_ADDR_STREET VARCHAR2(100) CONSTRAINT NN_STAFF_ADDR_STREET NOT NULL,  
    STAFF_ADDR_ZIP NUMBER(4) CONSTRAINT NN_STAFF_ADDR_ZIP NOT NULL,  
    STAFF_SEX VARCHAR2(10) CONSTRAINT NN_STAFF_SEX NOT NULL, -- WITH OPTION FOR "RATHER NOT SAY"
    CONSTRAINT PK_STAFF PRIMARY KEY (STAFF_ID))
;

INSERT INTO STAFF VALUES
(18597341, 'Albus', 'Dumbledore', '1964-10-15', 'Auckland', 'Northcote', 'Hogwarts School of Witchcraft and Wizardry', 0652, 'Male'),
(18764532, 'Severus', 'Snape', '1981-11-01', 'Auckland', 'Browns Bay', 'Hogwarts School of Witchcraft and Wizardry', 0630, 'Male'),
(19284756, 'Minerva', 'McGonagall', '1969-02-21', 'Auckland', 'Blockhouse Bay', 'Hogwarts School of Witchcraft and Wizardry', 0633, 'Female'),
(19374628, 'Sirius', 'Black', '1989-06-01', 'Auckland', 'Northcote', '12 Grimmauld Place', 0652, 'Male'),
(19485732, 'Remus', 'Lupin', '1989-04-25', 'Auckland', 'Browns Bay', 'Hogwarts School of Witchcraft and Wizardry', 0630, 'Male'),
(19573846, 'Rubeus', 'Hagrid', '1975-10-14', 'Auckland', 'Browns Bay', 'Hogwarts School of Witchcraft and Wizardry', 0630, 'Male'),
(20294876, 'Lucius', 'Malfoy', '1971-05-09', 'Auckland', 'Northcote', 'Malfoy Manor', 0652, 'Male'),
(21293487, 'Horace', 'Slughorn', '1968-06-05', 'Auckland', 'Auckland CBD', 'Hogwarts School of Witchcraft and Wizardry', 0601, 'Male'),
(21384756, 'Pomona', 'Sprout', '1968-09-28', 'Auckland', 'Blockhouse Bay', 'Hogwarts School of Witchcraft and Wizardry', 0633, 'Female'),
(21475839, 'Gilderoy', 'Lockhart', '1975-08-12', 'Auckland', 'Browns Bay', 'Hogwarts School of Witchcraft and Wizardry', 0630, 'Male'),
(21584629, 'Rita', 'Skeeter', '1978-04-26', 'Auckland', 'Northcote', 'Daily Prophet Office', 0652, 'Female'),
(22457839, 'Sybill', 'Trelawney', '1969-07-13', 'Auckland', 'Auckland CBD', 'Hogwarts School of Witchcraft and Wizardry', 0601, 'Prefer not to say');
(20322132, 'Charity', 'Burbage', '1970-10-20', 'Auckland', 'Blockhouse Bay', 'Hogwarts School of Witchcraft and Wizardry', 0633, 'Female'),
(16778722, 'Rolanda', 'Hooch', '1968-11-10', 'Auckland', 'Northcote', 'Hogwarts School of Witchcraft and Wizardry', 0652, 'Prefer not to say'),
(16287642, 'Filius', 'Flitwick', '1972-02-11', 'Auckland', 'Browns Bay', 'Hogwarts School of Witchcraft and Wizardry', 0630, 'Male'),
(22459515, 'Dolores', 'Umbridge', '1972-03-03', 'Auckland', 'Northcote', 'Hogwarts School of Witchcraft and Wizardry', 0652, 'Female'),
(22457456, 'Cuthbert', 'Binns', '1971-08-14', 'Auckland', 'Auckland CBD', 'Hogwarts School of Witchcraft and Wizardry', 0601, 'Male'),
(22457866, 'Septima', 'Vector', '1976-12-05', 'Auckland', 'Auckland CBD', 'Hogwarts School of Witchcraft and Wizardry', 0601, 'Female'),
(22457898, 'Amycus', 'Carrow', '1968-01-15', 'Auckland', 'Auckland CBD', 'Hogwarts School of Witchcraft and Wizardry', 0601, 'Male'),
(22457854, 'Alastor', 'Moody', '1969-05-24', 'Auckland', 'Northcote', 'Hogwarts School of Witchcraft and Wizardry', 0652, 'Male'),
(18654321, 'Argus', 'Filch', '1974-07-18', 'Auckland', 'Blockhouse Bay', 'Hogwarts School of Witchcraft and Wizardry', 0633, 'Male')
;


CREATE TABLE STAFF_HISTORY (
    STAFF_ID NUMBER NOT NULL,  -- PK+FK REFERENCE STAFF TABLE
    STAFF_START DATE NOT NULL,  -- PK
    STAFF_END DATE,  -- NULLABLE ALLOWING FOR ONGOING POSITIONS
    STAFF_POSITION VARCHAR2(20) CONSTRAINT NN_STAFF_POSITION NOT NULL,
    STAFF_LOCATION VARCHAR2(20) CONSTRAINT NN_STAFF_LOCATION NOT NULL,
    DEG_DEPT VARCHAR2(50),  -- FK REFERECE DEGREE, nullable
    CONSTRAINT PK_STAFF_HISTORY PRIMARY KEY (STAFF_ID, STAFF_START),
    CONSTRAINT FK_STAFF_HISTORY_STAFF FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID),
    CONSTRAINT FK_STAFF_HISTORY_DEPT FOREIGN KEY (DEG_DEPT) REFERENCES DEPARTMENT(DEG_DEPT))
;

INSERT INTO STAFF_HISTORY VALUES
(18597341, '2018-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(18764532, '2018-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(19284756, '2019-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(19374628, '2019-09-01', '2022-06-30', 'Professor', 'Oteha Campus', 00), -- dept id
(19485732, '2019-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(19573846, '2019-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(20294876, '2020-09-01', NULL, 'Advisor', 'Oteha Campus', 00), -- dept id
(21293487, '2021-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(21384756, '2021-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(21475839, '2021-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(21584629, '2021-09-01', NULL, 'Administrative Assistant', 'Accomodation Office', NULL),
(22457839, '2022-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(20322132, '2020-09-01', NULL, 'Hall Manager', 'Pukeko Hall', NULL),
(16778722, '2016-09-01', NULL, 'Hall Manager', 'Tui Hall', NULL),
(16287642, '2016-09-01', NULL, 'Hall Manager', 'Weka Hall', NULL),
(22459515, '2022-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(22457456, '2022-09-01', NULL, 'Advisor', 'Oteha Campus', 00), -- dept id
(22457866, '2022-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(22457898, '2022-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(22457854, '2022-09-01', NULL, 'Professor', 'Oteha Campus', 00), -- dept id
(18654321, '2018-09-01', NULL, 'Cleaner', 'Tui Hall', NULL)
;
