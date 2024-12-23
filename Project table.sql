create table project (project_id int primary key, project_name varchar(50), location varchar(50), status varchar(20), speciesID int);
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

create table Species (species_id int primary key, species_name varchar(50), nativeArea varchar(50),growth_rate decimal, project_id int);
insert into Species values(101,'red maple','North America',4.6,006);
insert into Species values(102,'white oak','North America',4.7,001);
insert into Species values(103,'ginko','China',5.7,007);
insert into Species values(104,'baobab','Africa',5.0,008);
insert into Species values(105,'tulip tree','North America',4.0,010);
insert into Species values(106,'magnolia','United States',5.8,002);
insert into Species values(107,'redwood','California',5.4,005);
insert into Species values(108,'cypress','United States',5.6,004);
insert into Species values(109,'eucalyptus','Australia',7.9,009);
insert into Species values(110,'catalpa','United States',6.0,003);

create table GrowthRate (growth_rate decimal primary key, location varchar(50), species_id int, treeID int);
insert into GrowthRate values (6.0,'Nakuru',101,1201);
insert into GrowthRate values(7.9,'Wajir',102,1202);
insert into GrowthRate values(5.6,'Nairobi',103,1203);
insert into GrowthRate values(5.4,'Meru',104,1204);
insert into GrowthRate values(5.8,'Nyeri',105,1205);
insert into GrowthRate values(4.0,'Naivasha',106,1206);
insert into GrowthRate values(5.0,'Tigoni',107,1207);
insert into GrowthRate values(5.7,'Lamu',108,1208);
insert into GrowthRate values(4.6,'Muranga',109,1209);
insert into GrowthRate values(4.7,'Sugoi',110,1210);

create table PlantingTable (treeID int primary key, Location varchar(50), SpeciesID int, growth_rate decimal);
insert into PlantingTable values (1, 'Nairobi', 101, 5.0);
insert into PlantingTable values (2, 'Nyeri', 102, 3.0);
insert into PlantingTable values (3, 'Meru', 103, 4.0);
insert into PlantingTable values (4, 'Nakuru',104, 3.);
insert into PlantingTable values (5, 'Tigoni', 105, 7.0);
insert into PlantingTable values (6, 'Lamu', 106, 2.0);
insert into PlantingTable values (7, 'Muranga', 107, 1.2);
insert into PlantingTable values (8, 'Sugoi', 108, 3.5);
insert into PlantingTable values (9, 'Naivasha', 109, 3.5);
insert into PlantingTable values (10, 'Wajir', 110, 3.5);

create table volunteers(volunteer_id varchar(50) primary key,volunteer_name varchar(100),project_id INT);
insert into volunteers values('T210''Ted Kombo',001);
insert into volunteers values('T220''Ben Dover',002);
insert into volunteers values('T230''Teddy Kin',003);
insert into volunteers values('T240''Telvin Hov',004);
insert into volunteers values('T250''Tyler Olkolma',005);
insert into volunteers values('T260''Ken Drick',006);
insert into volunteers VALUES('T270''Lamar Davis',007);
insert into volunteers VALUES('T280''Kim Kyle',008);
insert into volunteers VALUES('T290''Lee Brass',009);
insert into volunteers VALUES('T300''Steve Tim',010);

create table volunteers_assignment ( volunteer_id varchar(50) primary key, volunteer_name varchar(100), project_id int, tree_ID int, date_joined date,role varchar(20));
insert into volunteers_assignment values('T210', 'Ted Kombo', 101, 1, '2024-11-13', 'watering');
insert into volunteers_assignment values('T220', 'Ben Dover', 102, 2, '2024-11-14', 'planting');
insert into volunteers_assignment values('T230', 'Teddy Kin', 103, 3, '2024-11-15', 'mulching');
insert into volunteers_assignment values('T240', 'Telvin Hov', 104, 4, '2024-11-16', 'cultivating');
insert into volunteers_assignment values('T250', 'Tyler Olkolma', 105, 5, '2024-11-17', 'pruning');
insert into volunteers_assignment values('T260', 'Ken Drick', 106, 6, '2024-11-17', 'watering');
insert into volunteers_assignment values('T270', 'Lamar Davis', 107, 7, '2024-11-18', 'weeding');
insert into volunteers_assignment values('T280', 'Lee Brass', 108, 8, '2024-11-19', 'weeding');
insert into volunteers_assignment values('T290', 'Steve Tim', 109, 9, '2024-11-20', 'watering');

create table EcosystemImpact (impact_id  serial primary key, project_id int not null, biodiversity_change decimal(5, 2), soil_erosion_level varchar(10), carbon_sequestration decimal(10, 2), date_measured date);
insert into EcosystemImpact values (5, 0.2, 'Low', 1.2, '2024-11-01'),
insert into EcosystemImpact values (3, -0.1, 'Medium', 1.5, '2024-11-02'),
insert into EcosystemImpact values (7, 0.5, 'Low', 2.1, '2024-11-03'),
insert into EcosystemImpact values (2, -0.3, 'High', 0.8, '2024-11-04'),
insert into EcosystemImpact values (6, 0.1, 'Medium', 1.9, '2024-11-05'),
insert into EcosystemImpact values (4, 0.4, 'Low', 2.0, '2024-11-06'),
insert into EcosystemImpact values (8, 0.3, 'Low', 2.4, '2024-11-07'),
insert into EcosystemImpact values (3, -0.2, 'High', 1.0, '2024-11-08'),
insert into EcosystemImpact values (5, 0.6, 'Medium', 1.8, '2024-11-09'),
insert into EcosystemImpact values (6, 0.0, 'Low', 2.2, '2024-11-10');

update project
set status = 'Completed'
where project_id = 2;

delete from volunteers
where volunteer_id = 'T300';

alter table Species
add column endangered_status varchar(20);

select project_name
from project
where location = 'Nairobi'
union
select project_name
from project
where status = 'Pending';

select project_name
from project
where location = 'Nairobi'
intersect
select project_name
from project
where status = 'In-progress';

select p.project_name, v.volunteer_name
from project p
left join volunteers v on p.project_id = v.project_id;

select projectid, name, location, status
from project
where status = 'Completed';

select s.speciesid, s.name, s.nativearea, p.location
from Species s
join Project p on s.projectid = p.projectid
where p.location = 'Nairobi';

select p.projectid, p.name, p.location, p.status, s.name, s.nativeArea, s.grwothrate
from project p
inner join Species s
on p.speciesid = s.speciesid;
