INSERT INTO `company_profile` VALUES 
(902001,'ABC','Residential plumbing solutionss','Plumbing','www.abc.ca'),
(902002,'XYZ','Residential plumbing solutionssss','Plumbing','www.xyz.ca'),
(902003,'RBC','Provides commercial laundery solutions','Laundery','www.rbc.ca'),
(902004,'SCB','Provides laundery services','Laundery','www.scb.ca'),
(902005,'CHK','Provides house cleaning services','Housekeeping','www.chk.ca'),
(902006,'DWN','Provides pesticides services','Pesticides','www.dwn.ca'),
(902007,'SWQ','Provides saloon services at home','Salon','www.swq.ca'),
(902008,'KHF','Provides food services at home','Kitchen','www.khf.ca'); 

INSERT INTO `freelance_account` VALUES 
(905001,910001,'Mayankkk','Soni','123@gmail.com','mayank123','1991-11-24','M',1234),
(905002,910002,'Malkeet ','Ror','321@gmail.com','malkeet321','1991-12-25','M',4321),
(905003,910001,'Rahul','Singh','456@gmail.com','rahul456','1992-05-20','M',5678),
(905004,910001,'Saran','Bedi','654@gmail.com','saran654','1991-06-21','M',8765),
(905005,910002,'Sarah','John','789@gmail.com','sarah789','1994-07-22','F',1111),
(905006,910001,'Varun','Vig','987@gmail.com','varun987','1996-09-28','M',2222),
(905007,910002,'Brooke','Smith','111@gmail.com','brooke111','1996-10-27','F',3333),
(905008,910002,'Baldev','Kumar','222@gmail.com','baldev222','1995-11-30','M',4444);

INSERT INTO `education` VALUES
(903001,905001,'QWE','QWER','Plumbing','2001-01-20','2001-01-21',15),
(903002,905002,'RTY','TYUI','Laundery','2001-02-20','2001-02-21',14),
(903003,905003,'UIO','POPO','Housekeeping','2001-01-20','2001-01-21',17),
(903004,905004,'ASD','ASDF','Pesticides','2001-03-20','2001-03-21',16),
(903005,905005,'FGH','GHJK','Salon','2001-01-21','2001-02-22',16),
(903006,905006,'JKL','LKLK','Kitchen','2001-04-21','2001-04-21',18),
(903007,905007,'ZXC','ZXCV','Plumbing','2001-11-19','2001-11-20',13),
(903008,905008,'VBN','BNMN','Laundery','2001-12-18','2001-12-19',14);

INSERT INTO `experience` VALUES 
(906001,905001,'Plumber',0,0,'2022-04-11','2022-04-11','Sydney','NS','Sydney','Canada'),
(906002,905002,'Laundery Manager',1,4,'2022-03-30','2022-03-30','Sydney','NS','Brookland St','Canada'),
(906003,905003,'Housekeeper',1,4,'2022-03-28','2022-03-28','Sydney','NS','Whitney Ave','Canada'),
(906004,905004,'Pest controller',1,4,'2022-04-07','2022-04-08','Sydney','NS','Sidella Dr','Canada'),
(906005,905005,'Barber',1,5,'2022-03-20','2022-03-21','Sydney','NS','Rock Cliff','Canada'),
(906006,905006,'Cook',0,0,'2022-04-11','2022-04-11','Sydney','NS','Sydney','Canada'),
(906007,905007,'Plumber',1,5,'2022-04-01','2022-04-02','Sydney','NS','Park St','Canada'),
(907008,905008,'Laundery associate',1,4,'2022-03-28','2022-03-29','Sydney','NS','Welton St','Canada');

INSERT INTO `freelance_services` VALUES 
(911001,908001,905001,'13.3',1,1,'Sydney','Plumber','Provide Plumbing services in house','20',0,5),
(911002,908002,905002,'15',1,1,'Sydney','Laundery Manager','laundery services readymate','21',4,7),
(911003,908003,905003,'14.6',1,1,'Sydney','Housekeeper','Provides housekeeping services','22',4,8),
(911004,908004,905004,'13.3',1,1,'Sydney','Pest controller','Provides pest control services','23',4,11),
(911005,908005,905005,'13.3',1,1,'Sydney','Barber','Provides saloon services','24',4,2),
(911006,908006,905006,'16.7',1,1,'Sydney','Cook','Provides kitchen help','25',0,3),
(911007,908007,905007,'13.3',1,1,'Sydney','Plumber','Provide Plumbing services in house','25',5,5),
(911008,908008,905008,'13.3',1,1,'Sydney','Laundery associate','provides cloths cleaning services','24',4,9);

INSERT INTO `service` VALUES 
(908001,911001,'Plumber','Leakage','Pipe Lekage','Admin','2021-01-31','Admin','2022-04-22','Yes'),
(908002,911002,'Laundery Manager','Washer','Cloth washer','Admin','2021-02-15','Admin','2022-04-07','Yes'),
(908003,911003,'Housekeeper','Cleaner','Cleaning of the house','Admin','2021-01-27','Admin','2022-04-09','Yes'),
(908004,911004,'Pest controller','Sprayer','Spray pest controller','Admin','2021-03-20','Admin','2022-04-03','Yes'),
(908005,911005,'Barber','Hair cutter','Provides hair cutting services','Admin','2021-02-20','Admin','2022-04-01','Yes'),
(908006,911006,'Cook','Wester cook','Cook wester food','Admin','2021-04-10','Admin','2022-04-06','Yes'),
(908007,911007,'Plumber','Sewage','Sewage issue','Admin','2020-11-24','Admin','2022-04-02','Yes'),
(908008,911008,'Laundery associate','Ironing','Cloths Iron','Admin','2019-12-27','Admin','2022-04-09','Yes');

INSERT INTO `job_status` VALUES 
(901001,911001,902001,'2022-04-11','2022-04-11',0,'NA','NA'),
(901002,911002,902002,'2022-03-30','2022-03-30',1,'No','Yes'),
(901003,911003,902003,'2022-03-27','2022-03-28',2,'No','Yes'),
(901004,911004,902004,'2022-04-07','2022-04-07',1,'No','Yes'),
(901005,911005,902005,'2022-03-20','2022-03-21',2,'No','Yes'),
(901006,911006,902006,'2022-04-11','2022-04-11',0,'NA','NA'),
(901007,911007,902007,'2022-04-01','2022-04-02',2,'No','Yes'),
(901008,911008,902008,'2022-03-29','2022-03-29',1,'No','Yes');

INSERT INTO `reviews` VALUES 
(909001,901001,0.0,'good job','2022-04-11','2022-04-11','No',0,0),
(909002,901002,4.2,'well job done','2022-03-30','2022-04-01','No',5,0),
(909003,901003,3.9,'could have been better','2022-03-28','2022-03-29','No',0,0),
(909004,901004,4.1,'good job','2022-04-07','2022-04-08','No',3,1),
(909005,901005,4.7,'Perfect','2022-03-21','2022-03-22','No',0,0),
(909006,901006,0.0,'NA','2022-04-11','2022-04-11','NA',0,0),
(909007,901007,4.6,'Nicely Done ','2022-04-02','2022-04-03','No',2,0),
(909008,901008,3.6,'Not happy','2022-03-29','2022-03-30','No',1,3);

INSERT INTO `user_type` VALUES (910001,'Student'),(910002,'Professional');