insert into project values(001,'Bloom','Nakuru','Completed',103);
insert into project values(002,'Releaf','Wajir','Pending',101);
insert into project values(003,'Revive','Nairobi','In-progress',104);
insert into project values(004,'Canopy','Meru','Completed',110);
insert into project values(005,'Sprout','Nyeri','Completed',107);
insert into project values(006,'Reforest','Naivasha','Pending',102);
insert into project values(007,'Greeenery','Tigoni','In-progress',105);
insert into project values(008,'Sprout','Lamu','Completed',106);
insert into project values(009,'Renew','Muranga','Pending',109);
insert into project values(010,'Flourish','Sugoi','In-progress',108);
select*from project;
insert into Species values(101,'red maple','North America',24,006);
insert into Species values(102,'white oak','North America',26,001);
insert into Species values(103,'ginko','China',20,007);
insert into Species values(104,'baobab','Africa',12,008);
insert into Species values(105,'tulip tree','North america',29,010);
insert into Species values(106,'magnolia','United states',24,002);
insert into Species values(107,'redwood','Carlifornia',56,005);
insert into Species values(108,'cypress','United states',18,004);
insert into Species values(109,'eucalyptus','Australia',30,009);
insert into Species values(110,'catalpa','United states',24,003);
select*from Species;
insert into GrowthRate values (24,Nakuru,101,1001);
insert into GrowthRate values(26,Karen,102,1002);
insert into GrowthRate values(20,nairobi,103,1003);
insert into GrowthRate values(12,meru,104,1003);
insert into GrowthRate values(29,nyeri,105,1005);
insert into GrowthRate values(24,naivasha,106,1006);

CREATE TABLE PlantingTable ( TreeID INT PRIMARY KEY, Location VARCHAR(50), Growth_Rate DECIMAL, SpeciesID INT, FOREIGN KEY (SpeciesID) REFERENCES SpeciesTable(SpeciesID) );
INSERT INTO PlantingTable VALUES (1, 'Nairobi', 101, 5.0);
INSERT INTO PlantingTable VALUES (2, 'Nyeri', 102, 3.0);
INSERT INTO PlantingTable VALUES (3, 'Meru', 103, 4.0);
INSERT INTO PlantingTable VALUES (4, 'Nakuru',104, 3.);
INSERT INTO PlantingTable VALUES (5, 'Tigoni', 105, 7.0);
INSERT INTO PlantingTable VALUES (6, 'Lamu', 106, 2.0);
INSERT INTO PlantingTable VALUES (7, 'Muranga', 107, 1.2);
INSERT INTO PlantingTable VALUES (8, 'Sugoi', 108, 3.5);
INSERT INTO PlantingTable VALUES (9, 'Naivasha', 109, 3.5);
INSERT INTO PlantingTable VALUES (10, 'Wajir', (110, 3.5);





CREATE TABLE volunteers_assignment ( volunteer_id VARCHAR(50) PRIMARY KEY, volunteer_name VARCHAR(100), project_id INT, tree_id INT, date_joined DATE,role VARCHAR(20));
INSERT INTO volunteers_assignment VALUES('T210', 'Ted Kombo', 101, 1, '2024-11-13', 'watering');
INSERT INTO volunteers_assignment VALUES('T220', 'Ben Dover', 102, 2, '2024-11-14', 'planting');
INSERT INTO volunteers_assignment VALUES('T230', 'Teddy Kin', 103, 3, '2024-11-15', 'mulching');
INSERT INTO volunteers_assignment VALUES('T240', 'Telvin Hov', 104, 4, '2024-11-16', 'cultivating');
INSERT INTO volunteers_assignment VALUES('T250', 'Tyler Olkolma', 105, 5, '2024-11-17', 'pruning');
INSERT INTO volunteers_assignment VALUES('T260', 'Ken Drick', 106, 6, '2024-11-17', 'watering');
INSERT INTO volunteers_assignment VALUES('T270', 'Lamar Davis', 107, 7, '2024-11-18', 'weeding');
INSERT INTO volunteers_assignment VALUES('T280', 'Lee Brass', 108, 8, '2024-11-19', 'weeding');
INSERT INTO volunteers_assignment VALUES('T290', 'Steve Tim', 109, 9, '2024-11-20', 'watering');
insert into GrowthRate values(56,tigoni,107,1007);
insert into GrowthRate values(18,lamu,108,1008);
insert into GrowthRate values(30,muranga,109,1009);
insert into GrowthRate values(24,sugoi,110,1010);
select*from GrowthRate;
