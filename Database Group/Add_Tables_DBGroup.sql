--INSERTED
--FLAT_BUILDING DATA
INSERT INTO FLAT_BUILDING
VALUES ('100', '12 Happy Avenue', 'Auckland', '0632', '(09)', '4765578')
;

--INSERTED
--FLAT DATA
INSERT INTO FLAT VALUES ('101', '100');
INSERT INTO FLAT VALUES ('102', '100');
INSERT INTO FLAT VALUES ('103', '100');
INSERT INTO FLAT VALUES ('104', '100');
INSERT INTO FLAT VALUES ('105', '100');
INSERT INTO FLAT VALUES ('106', '100');
INSERT INTO FLAT VALUES ('107', '100');
INSERT INTO FLAT VALUES ('108', '100');
INSERT INTO FLAT VALUES ('109', '100');
INSERT INTO FLAT VALUES ('110', '100');
INSERT INTO FLAT VALUES ('111', '100');
INSERT INTO FLAT VALUES ('112', '100');
INSERT INTO FLAT VALUES ('113', '100');
INSERT INTO FLAT VALUES ('114', '100');
INSERT INTO FLAT VALUES ('201', '100');
INSERT INTO FLAT VALUES ('202', '100');
INSERT INTO FLAT VALUES ('203', '100');
INSERT INTO FLAT VALUES ('204', '100');
INSERT INTO FLAT VALUES ('205', '100');
INSERT INTO FLAT VALUES ('206', '100');
INSERT INTO FLAT VALUES ('207', '100');
INSERT INTO FLAT VALUES ('208', '100');
INSERT INTO FLAT VALUES ('209', '100');
INSERT INTO FLAT VALUES ('210', '100');
INSERT INTO FLAT VALUES ('211', '100');
INSERT INTO FLAT VALUES ('212', '100');
INSERT INTO FLAT VALUES ('213', '100');
INSERT INTO FLAT VALUES ('214', '100');
INSERT INTO FLAT VALUES ('301', '100');
INSERT INTO FLAT VALUES ('302', '100');
INSERT INTO FLAT VALUES ('303', '100');
INSERT INTO FLAT VALUES ('304', '100');
INSERT INTO FLAT VALUES ('305', '100');
INSERT INTO FLAT VALUES ('306', '100');
INSERT INTO FLAT VALUES ('307', '100');
INSERT INTO FLAT VALUES ('308', '100');
INSERT INTO FLAT VALUES ('309', '100');
INSERT INTO FLAT VALUES ('310', '100');
INSERT INTO FLAT VALUES ('311', '100');
INSERT INTO FLAT VALUES ('312', '100');
INSERT INTO FLAT VALUES ('313', '100');
INSERT INTO FLAT VALUES ('314', '100');
INSERT INTO FLAT VALUES ('401', '100');
INSERT INTO FLAT VALUES ('402', '100');
INSERT INTO FLAT VALUES ('403', '100');
INSERT INTO FLAT VALUES ('404', '100');
INSERT INTO FLAT VALUES ('405', '100');
INSERT INTO FLAT VALUES ('406', '100');
INSERT INTO FLAT VALUES ('407', '100');
INSERT INTO FLAT VALUES ('408', '100');
INSERT INTO FLAT VALUES ('409', '100');
INSERT INTO FLAT VALUES ('410', '100');
INSERT INTO FLAT VALUES ('411', '100');
INSERT INTO FLAT VALUES ('412', '100');
INSERT INTO FLAT VALUES ('413', '100');
INSERT INTO FLAT VALUES ('414', '100');
INSERT INTO FLAT VALUES ('501', '100');
INSERT INTO FLAT VALUES ('502', '100');
INSERT INTO FLAT VALUES ('503', '100');
INSERT INTO FLAT VALUES ('504', '100');
INSERT INTO FLAT VALUES ('505', '100');
INSERT INTO FLAT VALUES ('506', '100');
INSERT INTO FLAT VALUES ('507', '100');
INSERT INTO FLAT VALUES ('508', '100');
INSERT INTO FLAT VALUES ('509', '100');
INSERT INTO FLAT VALUES ('510', '100');
INSERT INTO FLAT VALUES ('511', '100');
INSERT INTO FLAT VALUES ('512', '100');
INSERT INTO FLAT VALUES ('513', '100'); 
INSERT INTO FLAT VALUES ('514', '100');

--INSERTED
--FLAT_ROOM DATA
INSERT INTO FLAT_ROOM VALUES ('1', '101', '210.00', 'Y');
INSERT INTO FLAT_ROOM VALUES ('2', '101', '190.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('3', '101', '223.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('4', '101', '165.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('5', '101', '180.00', 'Y');
INSERT INTO FLAT_ROOM VALUES ('6', '102', '200.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('7', '102', '212.00', 'Y');
INSERT INTO FLAT_ROOM VALUES ('8', '102', '175.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('9', '102', '198.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('10', '102', '188.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('71', '201', '192.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('72', '201', '212.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('73', '201', '189.00', 'Y');
INSERT INTO FLAT_ROOM VALUES ('74', '201', '170.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('75', '201', '174.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('191', '311', '160.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('192', '311', '180.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('193', '311', '172.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('194', '311', '189.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('195', '311', '190.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('239', '408', '174.00', 'Y');
INSERT INTO FLAT_ROOM VALUES ('240', '408', '210.00', 'Y');
INSERT INTO FLAT_ROOM VALUES ('241', '408', '191.00', 'Y');
INSERT INTO FLAT_ROOM VALUES ('242', '408', '200.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('271', '502', '198.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('272', '502', '205.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('273', '502', '185.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('274', '502', '179.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('275', '503', '170.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('276', '503', '165.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('277', '503', '190.00', 'N');
INSERT INTO FLAT_ROOM VALUES ('278', '503', '189.00', 'Y');

--INSTERED
--HALL DATA
INSERT INTO HALL VALUES ('201', 'Weka');
INSERT INTO HALL VALUES ('202', 'Tui');
INSERT INTO HALL VALUES ('203', 'Pukeko');

--HALL_BUILDING
INSERT INTO HALL VALUES ('Weka', '16287642', '5 Pretty Parade', 'Auckland', '0632', '(09)', '4783526');
INSERT INTO HALL VALUES ('Tui', '16778722', '8 Cool Crescent', 'Auckland', '0632', '(09)', '4783428');
INSERT INTO HALL VALUES ('Pukeko', '20322132', '17 Allgood Avenue', 'Auckland', '0632', '(09)', '4783662');

--WAITING ON ACCESS_REQ (BRENDAN)
--HALL_ROOM DATA
INSERT INTO HALL_ROOM VALUES ('1', '201', '270.00', 'VEGAN', 'null');
INSERT INTO HALL_ROOM VALUES ('2', '201', '290.00', 'NA', 'null');
INSERT INTO HALL_ROOM VALUES ('3', '201', '250.00', 'GLUTEN_FREE', 'null');
INSERT INTO HALL_ROOM VALUES ('4', '201', '272.00', 'VVEGITARIAN', 'null');
INSERT INTO HALL_ROOM VALUES ('5', '201', '288.00', 'NA', 'null');
INSERT INTO HALL_ROOM VALUES ('71', '202', '290.00', 'VEGITARIAN_GLUTEN_FREEE', 'null');
INSERT INTO HALL_ROOM VALUES ('72', '202', '300.00', 'GLUTEN_FREE', 'null');
INSERT INTO HALL_ROOM VALUES ('73', '202', '295.00', 'NA', 'null');
INSERT INTO HALL_ROOM VALUES ('74', '202', '310.00', 'VEGAN', 'N');
INSERT INTO HALL_ROOM VALUES ('75', '202', '305.00', 'NA', 'N');
INSERT INTO HALL_ROOM VALUES ('141', '203', '287.00', 'VEGAN_GLUTEN_FREE', 'Y');
INSERT INTO HALL_ROOM VALUES ('142', '203', '290.00', 'GLUTEN_FREE', 'N');
INSERT INTO HALL_ROOM VALUES ('143', '203', '298.00', 'NA', 'N');
INSERT INTO HALL_ROOM VALUES ('144', '203', '305.00', 'NA', 'Y');
INSERT INTO HALL_ROOM VALUES ('145', '203', '300.00', 'DAIRY_FREE_VEGITARIAN', 'N');


--INSERTED
--DIET DATA
INSERT INTO DIET VALUES ('VEGAN', 'Y', 'Y', 'N', 'Y', 'N');
INSERT INTO DIET VALUES ('VEGITARIAN', 'N', 'N', 'N', 'Y', 'N');
INSERT INTO DIET VALUES ('GLUTEN_FREE', 'N', 'N', 'Y', 'N', 'N');
INSERT INTO DIET VALUES ('VEGAN_GLUTEN_FREE', 'Y', 'Y', 'Y', 'Y', 'N');
INSERT INTO DIET VALUES ('VEGITARIAN_GLUTEN_FREE', 'N', 'N', 'Y', 'Y', 'N');
INSERT INTO DIET VALUES ('DAIRY_FREE_VEGITARIAN', 'N', 'Y', 'N', 'Y', 'N');




