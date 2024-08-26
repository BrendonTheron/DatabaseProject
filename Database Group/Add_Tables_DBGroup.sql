
--INSERT DATA INTO UNIT BUILDING
INSERT INTO UNIT_BUILDING VALUES ('200', '37 Mary Street', 'Auckland', '0632');

--INSERT DATA INTO UNIT 
INSERT INTO UNIT VALUES ('1', 'Y', '260.00', 'N', '200');
INSERT INTO UNIT VALUES ('2', 'Y', '277.00', 'N', '200');
INSERT INTO UNIT VALUES ('3', 'N', '256.00', 'N', '200');
INSERT INTO UNIT VALUES ('4', 'N', '320.00', 'N', '200');
INSERT INTO UNIT VALUES ('5', 'Y', '306.00', 'N', '200');
INSERT INTO UNIT VALUES ('6', 'N', '236.00', 'N', '200');
INSERT INTO UNIT VALUES ('7', 'N', '232.00', 'N', '200');
INSERT INTO UNIT VALUES ('8', 'Y', '350.00', 'N', '200');
INSERT INTO UNIT VALUES ('9', 'Y', '370.00', 'Y', '200');
INSERT INTO UNIT VALUES ('10', 'Y', '220.00','N', '200');
INSERT INTO UNIT VALUES ('11', 'N', '286.00','Y', '200');
INSERT INTO UNIT VALUES ('12', 'N', '290.00','N', '200');

INSERT INTO MEMBER VALUES ('1', 'Simon', 'Dale', 'Male', '06/03/1990', '','simon.dale@gmail.com','1');
INSERT INTO MEMBER VALUES ('2', 'Marget', 'Hansey', '', '01/08/2004', '0275158965', '', '1');
INSERT INTO MEMBER VALUES ('3', 'Sally', 'Levine', 'Female', '04/01/2005', '0225673724', '', '2');
INSERT INTO MEMBER VALUES ('4', 'Sophie', 'Solace', 'Female', '05/05/1989', '0216678246', '', '2');
INSERT INTO MEMBER VALUES ('5', 'Alice', 'Elsher', 'Female', '08/03/1992', '', 'alice.elsher@gmail.com','3');
INSERT INTO MEMBER VALUES ('6', 'Steve', 'Hayes', 'Male', '10/04/1997', '', 'steve.hayes@gmail.com', '3');
INSERT INTO MEMBER VALUES ('7', 'Smith', 'Ford', '', '04/06/1998', '0277067672', '','4');
INSERT INTO MEMBER VALUES ('8', 'Sam', 'Beckett', '', '01/02/1988', '', 'sam.beckett@gmail.com', '4');
INSERT INTO MEMBER VALUES ('9', 'Alex', 'Cromwell', 'Male', '09/05/2000', '0275397891', '', '5');
INSERT INTO MEMBER VALUES ('10', 'Abby', 'Monroe', 'Female', '11/06/2000', '0269931178 ', '', '5');
INSERT INTO MEMBER VALUES ('11', 'Tom', 'West', 'Male', '05/09/2000', '', 'tom.west@gmail.com', '6');
INSERT INTO MEMBER VALUES ('12', 'Oscar', 'Langley', 'Male', '12/01/1988', '', 'oscar.langley@gmail.com', '6');
INSERT INTO MEMBER VALUES ('13', 'Liam', 'Madison', 'Male', '09/07/2005', '', 'liam.madison@gmail.com', '7');
INSERT INTO MEMBER VALUES ('14', 'Ben', 'Marley', '', '05/01/2001', '0218738280 ', '', '7');
INSERT INTO MEMBER VALUES ('15', 'Martin', 'Hope', '', '02/02/1989', '', 'martin.hope@gmail.com', '8');
INSERT INTO MEMBER VALUES ('16', 'Beth', 'Lopez', 'Female', '11/01/1984', '', 'beth.lopez@gmail.com', '8');
INSERT INTO MEMBER VALUES ('17', 'Amy', 'Jenkins', 'Female', '10/04/2005', '', 'amy.jenkins@gmail.com', '9');
INSERT INTO MEMBER VALUES ('18', 'Molly', 'McKenna', 'Male', '05/08/1992', '0280896087 ', '', '9');
INSERT INTO MEMBER VALUES ('19', 'Sofia', 'Gonzales', 'Male', '04/08/1985', '0263963453 ', '', '10');
INSERT INTO MEMBER VALUES ('20', 'Dave', 'Keller', 'Male', '03/08/2003', '', 'dave.keller@gmail.com', '10');
INSERT INTO MEMBER VALUES ('21', 'Tim', 'Adler', 'Male', '08/08/2009', '', 'tim.alder@gmail.com', '10');


INSERT INTO SEMESTER VALUES ('S12019', '20/02/2019', '31/05/2019');
INSERT INTO SEMESTER VALUES ('S22019', '20/07/2019', '21/10/2019');
INSERT INTO SEMESTER VALUES ('S32019', '10/11/2019', '6/02/2020');

INSERT INTO SEMESTER VALUES ('S12020', '21/02/2020', '30/05/2020');
INSERT INTO SEMESTER VALUES ('S22020', '19/07/2020', '27/10/2020');
INSERT INTO SEMESTER VALUES ('S32020', '9/11/2020', '6/02/2021');

INSERT INTO SEMESTER VALUES ('S12021', '22/02/2021', '3/06/2021');
INSERT INTO SEMESTER VALUES ('S22021', '18/07/2021', '30/10/2021');
INSERT INTO SEMESTER VALUES ('S32021', '8/11/2021', '7/02/2022');

INSERT INTO SEMESTER VALUES ('S12022', '23/02/2022', '2/06/2022');
INSERT INTO SEMESTER VALUES ('S22022', '17/07/2022', '29/10/2022');
INSERT INTO SEMESTER VALUES ('S32022', '7/11/2022', '6/02/2023');

INSERT INTO SEMESTER VALUES ('S12023', '24/02/2023', '29/05/2023');
INSERT INTO SEMESTER VALUES ('S22023', '16/07/2023', '28/10/2023');
INSERT INTO SEMESTER VALUES ('S32023', '6/11/2023', '5/02/2024');

INSERT INTO SEMESTER VALUES ('S12024', '25/02/2024', '30/05/2024');
INSERT INTO SEMESTER VALUES ('S22024', '15/07/2024', '30/10/2024');
INSERT INTO SEMESTER VALUES ('S32024', '5/11/2024', '5/02/2025');

INSERT INTO SEMESTER VALUES ('S12025', '26/02/2025', '31/05/2025');
INSERT INTO SEMESTER VALUES ('S22025', '17/07/2025', '26/10/2025');
INSERT INTO SEMESTER VALUES ('S32025', '4/11/2025', '6/02/2026');
INSERT INTO SEMESTER VALUES ('S12026', '24/02/2026', '6/06/2026');


INSERT INTO LEASE VALUES ('1', '60.00', 'S12019', 'S32019', '0', '0');
INSERT INTO LEASE VALUES ('2', '70.00', 'S22019', 'S12020', '0', '0');
INSERT INTO LEASE VALUES ('3', '55.00', 'S32019', 'S22020', '0', '0');
INSERT INTO LEASE VALUES ('4', '65.00', 'S12020', 'S32020', '0', '0');
INSERT INTO LEASE VALUES ('5', '70.00', 'S22020', 'S12021', '0', '0');
INSERT INTO LEASE VALUES ('6', '55.00', 'S32020', 'S22021', '0', '0');
INSERT INTO LEASE VALUES ('7', '60.00', 'S12021', 'S32021', '0', '0');
INSERT INTO LEASE VALUES ('8', '55.00', 'S22021', 'S12022', '0', '0');
INSERT INTO LEASE VALUES ('9', '75.00', 'S32021', 'S22022', '0', '0');
INSERT INTO LEASE VALUES ('10', '50.00', 'S12022', 'S32022', '0', '0');
INSERT INTO LEASE VALUES ('11', '65.00', 'S22022', 'S12023', '0', '0');
INSERT INTO LEASE VALUES ('12', '55.00', 'S32022', 'S22023', '0', '0');
INSERT INTO LEASE VALUES ('13', '60.00', 'S12023', 'S32023', '0', '0');
INSERT INTO LEASE VALUES ('14', '70.00', 'S22023', 'S12024', '0', '0');
INSERT INTO LEASE VALUES ('15', '65.00', 'S32023', 'S22024', '0', '0');
INSERT INTO LEASE VALUES ('16', '55.00', 'S12024', 'S32024', '0', '0');
INSERT INTO LEASE VALUES ('17', '60.00', 'S22024', 'S12025', '0', '0');
INSERT INTO LEASE VALUES ('18', '75.00', 'S32024', 'S22025', '0', '0');
INSERT INTO LEASE VALUES ('19', '55.00', 'S12025', 'S32025', '0', '0');
INSERT INTO LEASE VALUES ('20', '60.00', 'S22025', 'S12026', '0', '0');


