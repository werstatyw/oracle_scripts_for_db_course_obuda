-- Create tables
CREATE TABLE Students
(
    neptunID CHAR(6) NOT NULL
        CHECK (neptunID LIKE 'OE%'),
    fname VARCHAR2(30) NOT NULL,
    sname VARCHAR2(30) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR2(50),
    CONSTRAINT Students_pk PRIMARY KEY(neptunID)
);

CREATE TABLE Courses
(
    CourseID NUMBER(11) NOT NULL,
    name VARCHAR2(50) NOT NULL,
    announced DATE NOT NULL,
    credit NUMBER(2)
        CHECK (credit > 0),
    classroomID NUMBER(11),
    preconditionID NUMBER(11),
    CONSTRAINT Courses_pk PRIMARY KEY(CourseID)
);

CREATE TABLE Educators
(
    educatorID NUMBER(11) NOT NULL,
    sname VARCHAR2(30) NOT NULL,
    fname VARCHAR2(30) NOT NULL,
    salary NUMBER(6)
        CHECK (salary > 0),
    CONSTRAINT Educators_pk PRIMARY KEY(educatorID)
);

CREATE TABLE Classrooms
(
    classroomID NUMBER(11) NOT NULL,
    capacity NUMBER(11)
        CHECK (capacity > 0),
    CONSTRAINT Classrooms_pk PRIMARY KEY(classroomID)
);

CREATE TABLE Lessonbook
(
    LessonbookID NUMBER(11) NOT NULL,
    neptunID CHAR(6) NOT NULL,
    educatorID NUMBER(11) NOT NULL,
    CourseID NUMBER(11) NOT NULL,
    grade NUMBER(1)
        CHECK (grade BETWEEN 1 AND 5),
    evaluation NUMBER(1)
        CHECK (evaluation BETWEEN 1 AND 5),
    CONSTRAINT Lessonbook_pk PRIMARY KEY(LessonbookID)
);


-- Create FKs
ALTER TABLE Courses
    ADD    FOREIGN KEY (preconditionID)
    REFERENCES Courses(CourseID)
;
    
ALTER TABLE Courses
    ADD    FOREIGN KEY (classroomID)
    REFERENCES Classrooms(classroomID)
;
    
ALTER TABLE Lessonbook
    ADD    FOREIGN KEY (neptunID)
    REFERENCES Students(neptunID)
;
    
ALTER TABLE Lessonbook
    ADD    FOREIGN KEY (educatorID)
    REFERENCES Educators(educatorID)
;
    
ALTER TABLE Lessonbook
    ADD    FOREIGN KEY (CourseID)
    REFERENCES Courses(CourseID)
;

-- Classrooms

INSERT INTO Classrooms VALUES (1,22);
INSERT INTO Classrooms VALUES (2,22);
INSERT INTO Classrooms VALUES (3,22);
INSERT INTO Classrooms VALUES (4,25);
INSERT INTO Classrooms VALUES (5,25);
INSERT INTO Classrooms VALUES (6,25);
INSERT INTO Classrooms VALUES (7,25);
INSERT INTO Classrooms VALUES (8,25);
INSERT INTO Classrooms VALUES (9,25);
INSERT INTO Classrooms VALUES (10,25);
INSERT INTO Classrooms VALUES (11,25);
INSERT INTO Classrooms VALUES (12,30);
INSERT INTO Classrooms VALUES (13,30);
INSERT INTO Classrooms VALUES (14,30);
INSERT INTO Classrooms VALUES (15,30);
INSERT INTO Classrooms VALUES (16,30);
INSERT INTO Classrooms VALUES (17,35);
INSERT INTO Classrooms VALUES (18,35);
INSERT INTO Classrooms VALUES (19,40);
INSERT INTO Classrooms VALUES (20,15);
INSERT INTO Classrooms VALUES (21,20);
INSERT INTO Classrooms VALUES (22,15);
INSERT INTO Classrooms VALUES (23,20);

-- Educators

INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (373,'John','Bass',212651);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (374,'Armando','Slater',162134);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (375,'Rhiannon','Pennington',265365);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (376,'Abigail','Thomas',392938);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (377,'Nora','Pennington',151121);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (378,'John','Vang',364022);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (379,'Porter','Hooper',232403);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (380,'Ocean','Leonard',NULL);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (381,'Iliana','Mathews',308665);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (382,'Natalie','Mccarty',312991);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (383,'Kelly','Bentley',366342);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (384,'Eliana','Thompson',355073);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (385,'John','Mitchell',311003);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (386,'Kai','Riley',355682);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (387,'Noelani','Cochran',235839);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (388,'Emma','Bowers',290193);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (389,'Allistair','Randolph',353792);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (390,'John','Gibbs',203080);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (391,'Blythe','Black',219409);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (392,'Leonard','Griffin',362017);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (393,'Trevor','Hooper',333835);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (394,'Alan','Fuentes',353610);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (395,'Margaret','Mueller',206558);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (396,'Jelani','Petersen',346723);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (397,'Selma','Neal',349540);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (398,'Jenette','Jackson',351939);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (399,'Keefe','Bauer',354312);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (400,'Erica','Long',170731);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (401,'Uma','Alexander',168082);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (402,'James','York',291997);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (403,'Jordan','Harmon',295823);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (404,'Ocean','Potts',265343);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (405,'Jackson','Vega',317577);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (406,'Calvin','Patrick',321064);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (407,'Kelly','Kerr',267875);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (408,'Megan','Nieves',242917);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (409,'Maggie','Vaughan',NULL);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (410,'Chancellor','Riley',178904);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (411,'Ian','Booker',345914);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (412,'Tallulah','Ayala',362935);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (413,'Hilda','Rosario',310155);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (414,'Lynn','Mullen',274189);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (415,'Steven','Lawson',196795);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (416,'Akeem','Rowland',177451);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (417,'Bethany','Hooper',392432);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (418,'Quin','Black',362587);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (419,'Cassidy','Rose',268472);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (420,'Kimberley','Charles',208740);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (421,'Forrest','Anderson',298583);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (422,'Oliver','Harrison',166887);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (423,'Karyn','Silva',375179);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (424,'Jordan','Hale',160871);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (425,'John','Ware',244652);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (426,'Lacota','Barker',256375);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (427,'Oliver','Hicks',NULL);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (428,'Raymond','Mullen',196586);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (429,'Odette','Hardy',366010);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (430,'Dacey','Ball',204700);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (431,'Jesse','Holloway',195303);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (432,'Owen','Barrett',376543);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (433,'Vielka','Levine',168588);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (434,'Dylan','Miles',312074);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (435,'Magee','Weiss',358962);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (436,'Steven','Huffman',200575);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (437,'Rooney','Black',195788);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (438,'Forrest','Heath',157722);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (439,'Jordan','Hubbard',153159);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (440,'Barbara','Walton',307135);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (441,'Bruce','Porter',380992);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (442,'Barbara','Dickerson',296150);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (443,'Lacy','Lynn',299455);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (444,'Logan','Faulkner',154499);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (445,'Barbara','Black',398153);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (446,'Holmes','Jefferson',230346);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (447,'Calista','Ball',399245);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (448,'Rashad','Greer',229492);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (449,'Alvin','Porter',331340);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (450,'Oliver','Hopper',171172);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (451,'Jonas','Mckee',339392);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (452,'Jerry','Goff',271729);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (453,'Barbara','Johnston',200922);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (454,'Mannix','Thomas',373923);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (455,'Brent','Collins',158024);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (456,'Tanner','Jarvis',263481);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (457,'Stacy','Terrell',NULL);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (458,'Carson','Puckett',179473);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (459,'Ashton','Summers',295549);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (460,'Hasad','Dodson',158555);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (461,'Clarke','Gilbert',376511);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (462,'Leonard','Schmidt',241381);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (463,'Fritz','Mills',224798);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (464,'Aspen','Ramos',305729);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (465,'Mariko','Bradford',164821);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (466,'Maxwell','Morin',240500);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (467,'Kessie','Shaw',142513);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (468,'Myra','Warner',NULL);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (469,'Owen','Poole',381119);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (470,'Herman','Ballard',196759);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (471,'Priscilla','Sanford',326383);
INSERT INTO Educators (educatorID,fname,sname,salary) VALUES (472,'Malcolm','Vasquez',318605);

-- Students

INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OES3J4','Ayala','Burton',TO_DATE('06/15/2000','MM/DD/YYYY'),'dui.lectus@ipsumac.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEM4F8','Merritt','Jelani',TO_DATE('01/09/2000','MM/DD/YYYY'),'Praesent.eu.nulla@sedconsequat.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEB9R3','Delaney','Basil',TO_DATE('03/28/1999','MM/DD/YYYY'),'accumsan.interdum@seddui.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OER0M6','Glover','Emery',TO_DATE('11/30/1998','MM/DD/YYYY'),'diam.Pellentesque@molestie.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEG3Z3','Hyde','Mona',TO_DATE('12/25/1999','MM/DD/YYYY'),'tellus.justo@Utnecurna.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OET9M4','Levine','Deacon',TO_DATE('01/03/1999','MM/DD/YYYY'),'luctus@Integer.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEB1X1','Hunt','Wynter',TO_DATE('02/07/2000','MM/DD/YYYY'),'rutrum.lorem@ametultricies.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OER1K2','Velasquez','Theodore',TO_DATE('08/04/1999','MM/DD/YYYY'),'ipsum.dolor.sit@estNunclaoreet.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OER8E1','Suarez','Brenna',TO_DATE('04/02/1998','MM/DD/YYYY'),'mauris.rhoncus@Sedcongue.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEV3L6','Murray','Adara',TO_DATE('09/20/1998','MM/DD/YYYY'),'dolor.Fusce@risusIn.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEP6H4','Gaines','Finn',TO_DATE('02/24/1999','MM/DD/YYYY'),'Nam.consequat@idmagnaet.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEP0U6','Mason','Colt',TO_DATE('12/06/1999','MM/DD/YYYY'),'varius.Nam.porttitor@interdum.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEL5Z9','Cardenas','Kadeem',TO_DATE('09/17/1999','MM/DD/YYYY'),'magna@tellusAeneanegestas.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEI7J0','Rhodes','Sharon',TO_DATE('05/02/2000','MM/DD/YYYY'),'sem@ac.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEE3R5','Adams','Cathleen',TO_DATE('04/13/1999','MM/DD/YYYY'),'ipsum.nunc@Nulla.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ2Q7','Zamora','Rebecca',TO_DATE('07/14/2000','MM/DD/YYYY'),'nec@consectetuermauris.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEB4M0','Garcia','Aretha',TO_DATE('11/20/1999','MM/DD/YYYY'),'a.facilisis.non@malesuadafamesac.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEO2Q8','Hancock','Baxter',TO_DATE('05/22/1998','MM/DD/YYYY'),'enim.nisl@ullamcorper.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEZ4W0','Rivers','Ashton',TO_DATE('05/01/1999','MM/DD/YYYY'),'mollis@congueturpis.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEG9D8','Bryan','Rachel',TO_DATE('08/28/2000','MM/DD/YYYY'),'orci.lacus.vestibulum@blanditenim.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEH6D3','Foreman','Zeph',TO_DATE('03/15/2000','MM/DD/YYYY'),'venenatis.lacus.Etiam@ante.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEU8I5','Watts','Vanna',TO_DATE('12/25/1999','MM/DD/YYYY'),'mi@utquamvel.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ4P0','Dean','Noah',TO_DATE('02/08/1999','MM/DD/YYYY'),'auctor.nunc.nulla@etpedeNunc.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEH3E5','Norman','Cedric',TO_DATE('12/21/1999','MM/DD/YYYY'),'imperdiet.ornare.In@tellus.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEU3F3','Richardson','Kameko',TO_DATE('08/20/2000','MM/DD/YYYY'),'Fusce@gravida.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEV4U9','Deleon','Stephen',TO_DATE('02/12/1999','MM/DD/YYYY'),'Integer.sem@sit.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ5N9','Crane','Timothy',TO_DATE('05/27/1998','MM/DD/YYYY'),'vulputate@interdum.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEO9J8','Ayers','Peter',TO_DATE('05/26/2000','MM/DD/YYYY'),'velit@orci.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEV5D1','Sears','Claudia',TO_DATE('03/30/1999','MM/DD/YYYY'),'Morbi@mifelis.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEX2K1','Melendez','Wing',TO_DATE('05/17/1999','MM/DD/YYYY'),'Suspendisse@risus.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OER5L7','Albert','Ralph',TO_DATE('10/17/1999','MM/DD/YYYY'),'nulla@quis.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEG4V0','Welch','Hashim',TO_DATE('01/13/2000','MM/DD/YYYY'),'tincidunt.dui.augue@nec.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEY4L2','Morgan','Vielka',TO_DATE('05/21/1998','MM/DD/YYYY'),'non.ante@sodalespurusin.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEX8M0','Larson','Dolan',TO_DATE('05/10/1998','MM/DD/YYYY'),'erat@necurna.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OES1G7','Wade','Adele',TO_DATE('07/21/1999','MM/DD/YYYY'),'ipsum.dolor@imperdiet.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEN9S1','Mccray','Suki',TO_DATE('07/27/1999','MM/DD/YYYY'),'dolor@diam.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ9G0','Gardner','David',TO_DATE('04/14/1998','MM/DD/YYYY'),'montes@pedesagittisaugue.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ2L8','Mcintosh','Jameson',TO_DATE('04/09/1998','MM/DD/YYYY'),'sagittis@eleifend.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEL9F7','Payne','Connor',TO_DATE('08/01/1998','MM/DD/YYYY'),'consectetuer.adipiscing.elit@egestasa.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEP4V5','Watts','Gabriel',TO_DATE('06/29/1998','MM/DD/YYYY'),'taciti.sociosqu.ad@malesuadaiderat.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEH7N1','Hale','Dean',TO_DATE('04/29/1998','MM/DD/YYYY'),'eros.Proin.ultrices@ametmassa.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEF5J5','Schneider','Quon',TO_DATE('08/25/1999','MM/DD/YYYY'),'aliquet@montes.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEN5D6','Kline','Jonah',TO_DATE('01/12/1998','MM/DD/YYYY'),'Integer.aliquam.adipiscing@sitametconsectetuer.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEL0V6','Haney','Macy',TO_DATE('06/26/1999','MM/DD/YYYY'),'non.nisi.Aenean@Nuncuterat.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEH6P7','Mosley','Willow',TO_DATE('04/07/2000','MM/DD/YYYY'),'Ut@elementumategestas.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEA2M9','Chambers','Ira',TO_DATE('07/16/1999','MM/DD/YYYY'),'dui.semper@Namacnulla.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEB0T2','Parsons','Hayley',TO_DATE('08/14/2000','MM/DD/YYYY'),'egestas.a@et.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OER3U1','Tanner','Jeanette',TO_DATE('01/21/1998','MM/DD/YYYY'),'blandit@egetmollis.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEB2E0','Smith','Evangeline',TO_DATE('07/17/1999','MM/DD/YYYY'),'lacus@velnisl.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEG4Y3','Wade','Geoffrey',TO_DATE('01/20/1999','MM/DD/YYYY'),'arcu.Nunc.mauris@PhasellusornareFusce.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OER3Y3','Albert','Adrian',TO_DATE('05/02/2000','MM/DD/YYYY'),'odio.auctor@tristiquenequevenenatis.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEU6X0','Tyson','Uriah',TO_DATE('10/17/1999','MM/DD/YYYY'),'In@diam.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEY6V9','Suarez','Liberty',TO_DATE('10/26/1998','MM/DD/YYYY'),'sem@arcuetpede.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEK8G8','Vaughn','Dexter',TO_DATE('02/29/2000','MM/DD/YYYY'),'at.auctor.ullamcorper@euismodacfermentum.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEG0O1','Larsen','Baker',TO_DATE('12/31/1999','MM/DD/YYYY'),'sed.orci@mi.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEM2O7','Henry','Nigel',TO_DATE('07/05/1998','MM/DD/YYYY'),'dui@elementumsemvitae.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEK9X4','Bradley','Marah',TO_DATE('10/11/1999','MM/DD/YYYY'),'non.enim.commodo@erat.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEG4P0','Phillips','Kaseem',TO_DATE('09/09/2000','MM/DD/YYYY'),'luctus.sit.amet@Quisque.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEZ6E8','Mullen','Reagan',TO_DATE('07/26/1998','MM/DD/YYYY'),'Nulla.facilisis@Donec.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEV9O6','Wise','Davis',TO_DATE('12/10/1998','MM/DD/YYYY'),'pede.malesuada.vel@mattissemperdui.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OES8J3','Baker','Aladdin',TO_DATE('11/22/1998','MM/DD/YYYY'),'In.at@mauris.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEM1M2','Conrad','Ross',TO_DATE('02/16/1998','MM/DD/YYYY'),'Vivamus.sit.amet@eleifendnon.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ9U1','Case','Zorita',TO_DATE('06/29/1999','MM/DD/YYYY'),'neque@ametornare.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEO2I1','Snider','Isaac',TO_DATE('03/10/1999','MM/DD/YYYY'),'tellus.Nunc.lectus@sed.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEN2D5','Hinton','Miriam',TO_DATE('12/06/1999','MM/DD/YYYY'),'Fusce.dolor@Cumsociisnatoque.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEF3J0','Barry','Jason',TO_DATE('06/17/1998','MM/DD/YYYY'),'amet.ante.Vivamus@lectusNullamsuscipit.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEH3E3','Davis','Amethyst',TO_DATE('03/27/2000','MM/DD/YYYY'),'tellus.Phasellus@Nuncmauris.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEN3O8','Marks','Russell',TO_DATE('09/04/1998','MM/DD/YYYY'),'erat@semvitae.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEB6B4','Mcintosh','Debra',TO_DATE('11/20/1999','MM/DD/YYYY'),'gravida.molestie@egestasurna.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OET1S5','Vazquez','Xerxes',TO_DATE('05/31/2000','MM/DD/YYYY'),'at.fringilla@tortorat.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEG8M7','Barnes','Patricia',TO_DATE('12/25/1999','MM/DD/YYYY'),'Proin.mi@liberoProin.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEP0H6','Levy','Ulla',TO_DATE('08/26/1999','MM/DD/YYYY'),'ante@diamPellentesque.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEM5G1','Roy','Dustin',TO_DATE('02/05/2000','MM/DD/YYYY'),'urna.Nunc@eget.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEK4M6','Crosby','Reuben',TO_DATE('12/17/1999','MM/DD/YYYY'),'velit@ridiculus.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEF4Z6','Rivers','Lee',TO_DATE('09/04/1999','MM/DD/YYYY'),'nunc@porttitor.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEX0O6','Beasley','Cadman',TO_DATE('10/03/1999','MM/DD/YYYY'),'aliquet@auctornon.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OET5O1','Buckley','Stone',TO_DATE('02/05/1998','MM/DD/YYYY'),'vulputate.lacus@utnisia.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OES0T9','Vinson','Dante',TO_DATE('06/22/2000','MM/DD/YYYY'),'adipiscing.non@lorem.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEE4S9','Hodges','Sydnee',TO_DATE('02/09/1999','MM/DD/YYYY'),'Phasellus.dolor.elit@eratnonummyultricies.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEX9B3','Mcpherson','Quentin',TO_DATE('03/17/2000','MM/DD/YYYY'),'Sed.eget@Etiamvestibulum.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEN1E2','Martinez','Ila',TO_DATE('07/18/2000','MM/DD/YYYY'),'pede.Nunc.sed@faucibus.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEI9H9','Fowler','Judith',TO_DATE('06/17/1998','MM/DD/YYYY'),'tincidunt.congue@ut.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEI1G9','Fitzpatrick','Prescott',TO_DATE('06/24/1999','MM/DD/YYYY'),'eget@tincidunttempus.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEX0N2','Hicks','Adam',TO_DATE('05/11/1999','MM/DD/YYYY'),'auctor@arcuvel.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEK6N6','Dixon','Marsden',TO_DATE('02/18/1998','MM/DD/YYYY'),'tincidunt.nunc.ac@hendrerit.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEP5K0','Le','Abbot',TO_DATE('04/25/1998','MM/DD/YYYY'),'non@dapibus.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ5F7','Duncan','Candace',TO_DATE('01/10/1998','MM/DD/YYYY'),'pede.Nunc@interdumNuncsollicitudin.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEK7E3','Floyd','Rylee',TO_DATE('03/11/2000','MM/DD/YYYY'),'ac.fermentum.vel@quis.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEQ8A2','Avila','Grady',TO_DATE('02/03/1998','MM/DD/YYYY'),'Donec@ametrisus.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEA0P7','Bolton','Fletcher',TO_DATE('10/01/1998','MM/DD/YYYY'),'inceptos.hymenaeos@necenimNunc.edu');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEO0A5','Roach','Lara',TO_DATE('04/30/1998','MM/DD/YYYY'),'urna.justo@metus.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEE8H9','Watts','Roary',TO_DATE('02/22/2000','MM/DD/YYYY'),'tempor.erat.neque@lorem.org');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEI0I7','Aguirre','Wynne',TO_DATE('07/07/1999','MM/DD/YYYY'),'porttitor.interdum.Sed@parturientmontes.co.uk');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEY5Z8','Graham','Stewart',TO_DATE('02/17/1999','MM/DD/YYYY'),'Quisque@Nuncpulvinararcu.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEI5Y7','Dennis','Eden',TO_DATE('05/11/2000','MM/DD/YYYY'),'faucibus@sapien.net');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OET2E8','Mccall','Moses',TO_DATE('08/19/2000','MM/DD/YYYY'),'Donec@elitEtiamlaoreet.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEK2I3','Stokes','Colin',TO_DATE('05/26/1999','MM/DD/YYYY'),'justo.nec@Morbiaccumsan.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEE0J0','Jenkins','Paula',TO_DATE('09/01/1998','MM/DD/YYYY'),'arcu.Curabitur.ut@ascelerisque.ca');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEU5O4','Fowler','Giselle',TO_DATE('02/06/1998','MM/DD/YYYY'),'metus@enimmitempor.com');
INSERT INTO Students (neptunID,sname,fname,birthdate,email) VALUES ('OEB2V1','Melton','Marah',TO_DATE('05/16/1999','MM/DD/YYYY'),'sit@semperduilectus.edu');

-- Courses

INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (1,'Animal Science',TO_DATE('07/30/2019','MM/DD/YYYY'),11,16,NULL);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (2,'Pottery',TO_DATE('08/02/2018','MM/DD/YYYY'),5,6,1);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (3,'Choir',TO_DATE('04/10/2019','MM/DD/YYYY'),8,9,2);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (4,'Rock Climbing',TO_DATE('02/10/2018','MM/DD/YYYY'),1,14,3);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (5,'Meteorology',TO_DATE('07/05/2019','MM/DD/YYYY'),6,4,2);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (6,'Digital Arts',TO_DATE('02/14/2018','MM/DD/YYYY'),11,1,1);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (7,'Team Sports',TO_DATE('05/30/2018','MM/DD/YYYY'),10,11,3);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (8,'Grammar',TO_DATE('11/01/2018','MM/DD/YYYY'),12,17,3);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (9,'Organic Chemistry',TO_DATE('08/31/2018','MM/DD/YYYY'),1,11,4);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (10,'Study',TO_DATE('03/02/2019','MM/DD/YYYY'),11,5,1);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (11,'Consumer Math',TO_DATE('12/29/2018','MM/DD/YYYY'),11,20,1);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (12,'Fundamental Math or Basic Math',TO_DATE('01/29/2018','MM/DD/YYYY'),10,4,4);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (13,'Algebra',TO_DATE('09/01/2019','MM/DD/YYYY'),11,10,5);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (14,'Music History',TO_DATE('05/20/2018','MM/DD/YYYY'),8,7,1);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (15,'Skills',TO_DATE('07/14/2018','MM/DD/YYYY'),2,23,1);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (16,'Civics',TO_DATE('09/21/2018','MM/DD/YYYY'),12,16,4);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (17,'Ecology',TO_DATE('05/15/2018','MM/DD/YYYY'),3,16,5);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (18,'Earth Science',TO_DATE('09/24/2018','MM/DD/YYYY'),8,20,12);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (19,'Honors Courses in any core subject',TO_DATE('03/30/2018','MM/DD/YYYY'),13,18,18);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (20,'Physical Science',TO_DATE('12/09/2017','MM/DD/YYYY'),13,15,19);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (21,'Weightlifting',TO_DATE('06/27/2019','MM/DD/YYYY'),5,1,9);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (22,'Physical Fitness',TO_DATE('10/17/2017','MM/DD/YYYY'),8,2,7);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (23,'Gardening',TO_DATE('02/17/2018','MM/DD/YYYY'),8,7,10);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (24,'Child Development',TO_DATE('04/06/2019','MM/DD/YYYY'),3,16,23);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (25,'Political Science',TO_DATE('05/06/2018','MM/DD/YYYY'),3,7,17);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (26,'Oceanography',TO_DATE('07/02/2018','MM/DD/YYYY'),7,20,18);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (27,'Personal Organization',TO_DATE('04/22/2019','MM/DD/YYYY'),1,6,17);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (28,'Outdoor Survival Skills',TO_DATE('11/21/2018','MM/DD/YYYY'),6,17,7);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (29,'Oceanography',TO_DATE('06/01/2019','MM/DD/YYYY'),8,15,23);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (30,'Gardening',TO_DATE('06/23/2019','MM/DD/YYYY'),9,23,3);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (31,'World Religions',TO_DATE('07/06/2019','MM/DD/YYYY'),10,1,27);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (32,'Geometry',TO_DATE('01/08/2018','MM/DD/YYYY'),8,6,21);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (33,'Driver’s Education',TO_DATE('08/11/2019','MM/DD/YYYY'),9,8,17);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (34,'Team Sports',TO_DATE('06/24/2018','MM/DD/YYYY'),14,7,11);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (35,'Social Skills',TO_DATE('09/30/2018','MM/DD/YYYY'),6,8,20);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (36,'Ancient History',TO_DATE('07/17/2019','MM/DD/YYYY'),9,13,28);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (37,'Heroes, Myth and Legend',TO_DATE('01/04/2018','MM/DD/YYYY'),13,12,22);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (38,'Film as Literature',TO_DATE('09/19/2018','MM/DD/YYYY'),8,21,21);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (39,'Genealogy',TO_DATE('05/31/2018','MM/DD/YYYY'),14,19,6);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (40,'Ecology',TO_DATE('10/20/2018','MM/DD/YYYY'),8,19,27);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (41,'Consumer Math',TO_DATE('06/19/2018','MM/DD/YYYY'),15,14,11);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (42,'Personal Finance and Investing',TO_DATE('05/20/2019','MM/DD/YYYY'),9,12,16);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (43,'Philosophy',TO_DATE('02/01/2019','MM/DD/YYYY'),9,11,25);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (44,'Classical Music Studies',TO_DATE('05/25/2018','MM/DD/YYYY'),14,9,41);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (45,'Computer Repair',TO_DATE('10/09/2018','MM/DD/YYYY'),3,12,13);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (46,'Art I',TO_DATE('11/05/2018','MM/DD/YYYY'),13,9,22);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (47,'Art II',TO_DATE('03/14/2019','MM/DD/YYYY'),12,8,38);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (48,'Consumer Math',TO_DATE('12/08/2018','MM/DD/YYYY'),6,12,20);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (49,'Choir',TO_DATE('08/18/2018','MM/DD/YYYY'),3,9,25);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (50,'Yearbook',TO_DATE('08/30/2019','MM/DD/YYYY'),6,22,25);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (51,'Social Skills',TO_DATE('07/23/2019','MM/DD/YYYY'),3,23,42);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (52,'Art III',TO_DATE('12/28/2018','MM/DD/YYYY'),10,12,47);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (53,'Grammar',TO_DATE('11/23/2018','MM/DD/YYYY'),4,8,52);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (54,'Gymnastics',TO_DATE('02/15/2018','MM/DD/YYYY'),4,12,22);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (55,'Archery',TO_DATE('10/27/2017','MM/DD/YYYY'),10,6,32);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (56,'Meteorology',TO_DATE('05/20/2018','MM/DD/YYYY'),14,15,17);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (57,'LOGIC',TO_DATE('01/19/2018','MM/DD/YYYY'),8,1,52);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (58,'Drafting',TO_DATE('03/07/2019','MM/DD/YYYY'),6,3,41);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (59,'Introduction to Algebra',TO_DATE('03/26/2018','MM/DD/YYYY'),1,11,56);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (60,'Small Engine Mechanics',TO_DATE('12/23/2017','MM/DD/YYYY'),2,16,56);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (61,'World Religions',TO_DATE('01/15/2019','MM/DD/YYYY'),9,9,53);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (62,'Sociology',TO_DATE('08/01/2019','MM/DD/YYYY'),5,13,39);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (63,'Adapted P.E',TO_DATE('10/18/2018','MM/DD/YYYY'),10,21,28);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (64,'Meteorology',TO_DATE('02/01/2018','MM/DD/YYYY'),8,17,33);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (65,'Creative Writing',TO_DATE('10/11/2017','MM/DD/YYYY'),11,9,17);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (66,'US History',TO_DATE('06/25/2018','MM/DD/YYYY'),8,17,25);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (67,'Lifeskills',TO_DATE('11/29/2017','MM/DD/YYYY'),4,13,26);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (68,'Oceanography',TO_DATE('01/27/2018','MM/DD/YYYY'),11,17,13);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (69,'Desktop Publishing',TO_DATE('01/19/2018','MM/DD/YYYY'),7,23,43);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (70,'Track and Field',TO_DATE('05/21/2019','MM/DD/YYYY'),1,20,26);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (71,'Ancient Literature',TO_DATE('01/15/2018','MM/DD/YYYY'),14,14,57);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (72,'Journalism',TO_DATE('07/28/2019','MM/DD/YYYY'),5,20,4);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (73,'Classical literature',TO_DATE('06/18/2019','MM/DD/YYYY'),4,23,57);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (74,'Driver’s Education',TO_DATE('03/22/2018','MM/DD/YYYY'),12,2,49);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (75,'Sociology',TO_DATE('02/23/2018','MM/DD/YYYY'),14,17,74);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (76,'Bowling',TO_DATE('10/18/2017','MM/DD/YYYY'),1,21,57);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (77,'Web Design',TO_DATE('01/24/2018','MM/DD/YYYY'),13,22,6);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (78,'Personal Organization',TO_DATE('04/22/2019','MM/DD/YYYY'),9,3,73);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (79,'Vocabulary',TO_DATE('03/24/2019','MM/DD/YYYY'),13,5,65);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (80,'English III',TO_DATE('03/30/2019','MM/DD/YYYY'),4,21,37);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (81,'Film as Literature',TO_DATE('05/04/2018','MM/DD/YYYY'),8,13,8);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (82,'World Literature',TO_DATE('04/06/2019','MM/DD/YYYY'),14,12,57);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (83,'Yearbook',TO_DATE('06/11/2018','MM/DD/YYYY'),2,22,58);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (84,'Lifeskills',TO_DATE('02/05/2018','MM/DD/YYYY'),10,16,35);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (85,'Drill Team, Honor',TO_DATE('02/02/2019','MM/DD/YYYY'),11,15,27);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (86,'Health',TO_DATE('08/09/2018','MM/DD/YYYY'),12,20,31);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (87,'Archery',TO_DATE('10/14/2018','MM/DD/YYYY'),9,20,15);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (88,'Pre-Algebra',TO_DATE('09/11/2017','MM/DD/YYYY'),2,3,76);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (89,'Rock Climbing',TO_DATE('12/25/2017','MM/DD/YYYY'),5,3,56);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (90,'Personal Finance and Investing',TO_DATE('04/04/2018','MM/DD/YYYY'),14,23,28);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (91,'Dance',TO_DATE('06/21/2019','MM/DD/YYYY'),13,21,85);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (92,'Art IV',TO_DATE('10/26/2018','MM/DD/YYYY'),9,1,42);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (93,'Logic II',TO_DATE('05/10/2018','MM/DD/YYYY'),8,19,24);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (94,'Physical Fitness',TO_DATE('02/07/2018','MM/DD/YYYY'),11,13,86);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (95,'Hiking',TO_DATE('02/24/2019','MM/DD/YYYY'),3,17,18);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (96,'Gardening',TO_DATE('05/13/2019','MM/DD/YYYY'),14,18,28);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (97,'Remedial Math',TO_DATE('09/03/2018','MM/DD/YYYY'),2,18,78);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (98,'Fencing',TO_DATE('01/14/2019','MM/DD/YYYY'),15,3,58);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (99,'Film Production',TO_DATE('11/17/2017','MM/DD/YYYY'),3,18,18);
INSERT INTO Courses (CourseID,name,announced,credit,classroomID,preconditionID) VALUES (100,'Photography',TO_DATE('01/07/2019','MM/DD/YYYY'),6,9,51);

-- Lessonbook

INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (1,'OEB1X1',395,69,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (2,'OEZ4W0',388,86,4,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (3,'OEN9S1',396,90,1,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (4,'OEU6X0',436,72,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (5,'OEO9J8',409,92,5,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (6,'OEE3R5',415,9,3,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (7,'OEQ5F7',414,11,2,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (8,'OEM2O7',399,40,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (9,'OEU6X0',397,65,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (10,'OEV5D1',407,10,2,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (11,'OER3Y3',402,87,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (12,'OEG9D8',404,66,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (13,'OEV9O6',416,52,5,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (14,'OEG4Y3',401,43,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (15,'OEB2V1',469,100,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (16,'OEE8H9',389,91,1,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (17,'OEV9O6',437,55,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (18,'OET2E8',462,95,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (19,'OEA0P7',464,96,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (20,'OEU5O4',404,79,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (21,'OEH6P7',444,54,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (22,'OEU8I5',437,37,4,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (23,'OEM5G1',381,96,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (24,'OEV4U9',434,75,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (25,'OEK4M6',424,34,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (26,'OEN9S1',425,48,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (27,'OEU3F3',451,49,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (28,'OEV3L6',398,35,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (29,'OEN2D5',404,32,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (30,'OEU5O4',430,46,4,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (31,'OEU5O4',418,18,3,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (32,'OEI1G9',418,80,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (33,'OEU5O4',431,18,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (34,'OER3U1',416,4,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (35,'OEG4V0',421,92,2,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (36,'OEX2K1',394,24,1,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (37,'OEX0O6',432,24,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (38,'OEO2Q8',447,89,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (39,'OEI7J0',387,71,1,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (40,'OEP4V5',454,78,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (41,'OEV5D1',456,57,5,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (42,'OER0M6',454,4,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (43,'OEI0I7',400,75,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (44,'OEM5G1',401,29,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (45,'OEQ2Q7',455,27,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (46,'OEM5G1',407,37,3,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (47,'OEF4Z6',447,83,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (48,'OEM4F8',427,20,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (49,'OEY5Z8',464,55,1,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (50,'OEY4L2',426,64,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (51,'OEB2E0',430,95,4,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (52,'OET2E8',455,80,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (53,'OEU8I5',439,28,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (54,'OER3Y3',377,14,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (55,'OEQ2Q7',452,15,2,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (56,'OEE3R5',387,11,2,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (57,'OEK8G8',432,40,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (58,'OEN9S1',441,5,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (59,'OEI1G9',455,69,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (60,'OEX0O6',429,76,1,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (61,'OES0T9',432,83,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (62,'OEN2D5',426,36,4,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (63,'OEG9D8',422,78,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (64,'OEE4S9',462,45,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (65,'OEM2O7',437,69,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (66,'OEE4S9',434,44,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (67,'OET9M4',462,17,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (68,'OEF4Z6',400,90,1,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (69,'OES8J3',399,28,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (70,'OEK8G8',470,43,2,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (71,'OEP5K0',385,48,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (72,'OET2E8',446,78,1,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (73,'OEI0I7',374,70,1,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (74,'OEU5O4',414,32,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (75,'OEQ2Q7',464,34,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (76,'OEP5K0',382,70,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (77,'OEI7J0',446,4,2,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (78,'OEU6X0',394,38,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (79,'OEP4V5',410,30,3,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (80,'OEV3L6',401,69,5,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (81,'OEI1G9',467,23,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (82,'OEH6P7',401,53,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (83,'OET5O1',421,81,5,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (84,'OEX2K1',383,69,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (85,'OEM2O7',381,26,4,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (86,'OEH6D3',401,97,5,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (87,'OEQ5N9',469,17,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (88,'OEB6B4',393,49,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (89,'OEQ9U1',464,5,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (90,'OEU8I5',439,35,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (91,'OEO2I1',465,62,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (92,'OEX8M0',458,85,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (93,'OEE8H9',389,89,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (94,'OEN1E2',457,16,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (95,'OEX2K1',411,72,1,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (96,'OEX9B3',458,43,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (97,'OEV9O6',429,36,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (98,'OEF4Z6',393,63,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (99,'OEH6D3',426,53,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (100,'OEY5Z8',451,10,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (101,'OEP0H6',390,11,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (102,'OEE8H9',447,1,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (103,'OEX0N2',396,77,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (104,'OEL5Z9',420,20,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (105,'OEP0H6',426,89,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (106,'OEQ9U1',428,48,5,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (107,'OEY4L2',442,36,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (108,'OEG4V0',416,93,4,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (109,'OEV5D1',386,79,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (110,'OEY4L2',450,20,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (111,'OEN1E2',429,62,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (112,'OEA0P7',389,31,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (113,'OEE3R5',406,26,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (114,'OEG4Y3',424,8,5,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (115,'OEK8G8',426,31,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (116,'OES0T9',418,66,4,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (117,'OEI1G9',445,71,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (118,'OER3U1',460,45,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (119,'OEU5O4',469,4,2,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (120,'OEV4U9',457,51,1,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (121,'OEX0N2',414,9,3,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (122,'OEN3O8',376,19,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (123,'OEI0I7',441,54,2,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (124,'OER0M6',472,44,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (125,'OEM1M2',377,63,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (126,'OEH6P7',417,82,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (127,'OEU6X0',440,31,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (128,'OEZ4W0',438,42,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (129,'OEM5G1',393,28,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (130,'OEN3O8',449,94,3,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (131,'OEG9D8',425,80,3,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (132,'OEM5G1',457,48,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (133,'OEG9D8',375,12,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (134,'OEK4M6',431,75,4,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (135,'OEO9J8',445,99,1,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (136,'OER5L7',385,83,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (137,'OET5O1',435,25,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (138,'OEO0A5',441,40,5,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (139,'OET9M4',414,42,2,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (140,'OEH3E3',438,55,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (141,'OEF3J0',375,23,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (142,'OET5O1',453,35,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (143,'OEH6D3',379,74,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (144,'OEV4U9',467,50,4,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (145,'OEL5Z9',461,44,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (146,'OET5O1',414,58,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (147,'OEY6V9',406,67,3,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (148,'OEI7J0',423,15,4,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (149,'OEI9H9',441,93,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (150,'OEY5Z8',445,91,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (151,'OEV9O6',423,81,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (152,'OEH6P7',454,58,1,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (153,'OEF4Z6',446,7,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (154,'OEE3R5',455,7,4,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (155,'OEF4Z6',416,97,3,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (156,'OEZ4W0',397,67,4,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (157,'OER3U1',386,96,4,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (158,'OEE4S9',447,73,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (159,'OEQ9U1',436,94,3,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (160,'OEH3E3',434,87,4,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (161,'OER8E1',384,21,4,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (162,'OEQ9U1',406,15,4,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (163,'OEQ5F7',407,80,5,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (164,'OEM5G1',466,97,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (165,'OEG0O1',376,42,3,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (166,'OEB9R3',430,12,2,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (167,'OER3Y3',373,32,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (168,'OEI9H9',401,20,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (169,'OER3Y3',426,14,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (170,'OEB2E0',450,71,1,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (171,'OEG9D8',422,39,2,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (172,'OEM4F8',436,73,2,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (173,'OEL0V6',446,68,5,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (174,'OEG4Y3',410,32,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (175,'OEB4M0',402,53,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (176,'OEL0V6',464,20,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (177,'OEK4M6',392,84,1,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (178,'OEL5Z9',409,77,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (179,'OEB9R3',418,65,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (180,'OEM5G1',430,76,1,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (181,'OEQ4P0',445,99,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (182,'OEI1G9',415,24,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (183,'OEP0H6',437,28,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (184,'OEQ2Q7',460,34,2,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (185,'OEE8H9',419,66,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (186,'OEX0O6',439,65,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (187,'OEB1X1',468,95,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (188,'OEU8I5',412,36,5,5);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (189,'OEU8I5',444,85,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (190,'OEQ9U1',414,75,5,4);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (191,'OEH7N1',438,98,3,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (192,'OET9M4',395,18,3,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (193,'OEN1E2',435,65,3,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (194,'OES0T9',434,35,5,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (195,'OEE4S9',469,33,4,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (196,'OEE4S9',386,61,2,2);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (197,'OEN1E2',463,27,4,1);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (198,'OEA2M9',464,87,4,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (199,'OEU6X0',408,32,1,3);
INSERT INTO Lessonbook (LessonbookID,neptunID,educatorID,CourseID,grade,evaluation) VALUES (200,'OEP4V5',455,12,2,2);