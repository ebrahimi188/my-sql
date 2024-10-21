create database university;
use  university;
create table faculities(
faculity_name char(10) NOT NULL,
faculity_number char (2) NOT NULL,
PRIMARY KEY(faculity_number)
);
Insert Into  faculities
VALUES('computer', '19'), ('electrical', '20'), ('chemistry', '18'),
      ('aerospace','17'), ('mechanical','16'), ('physics',15);
      
create table student_information(
FirstName  char(20) NOT NULL,
LastName   char(20) NOT NULL,
student_number char(8) NOT NULL,
student_fac_num char (2) NOT NULL,
average  decimal(5, 2)  NOT NULL);

INSERT INTO student_information (FirstName,LastName,student_number, student_subject, student_fac_num, average) 
VALUES('Fatemeh','Ebrahimi','40001153','19',14.5), ('zahra','mousavi','40006541','19', 13.75), ('hanieh','malek','99227667','17', 18.43),
('fatemeh','akbari','40213432','20', 19.21), ('amirali','asgari','40112233','18', 12.11), ('sadra','seyedi','40002213','15', 13.22),
('ebrahim','moradi','40112335','16', 15.02), ('fatemeh','bozorgi','40005223','19', 16.89), ('hosna','javadi','40122345','20', 15.36),
('zeinab','barzegar','40001223','18', 16.78), ('hananeh','bagheri','98232145','15', 11.93), ('zahra','arab','98223456','20', 14.41),
('asal','borumand','40001143','17', 12.57), ('mohammad','amiri','40003354','18', 18.32), ('boshra','heidari','40004353','15', 14.23),
('donya','eskandari','40223476','15', 13.56), ('ali','enteshari','40002263','19', 16.72), ('hossein','riazi','40001252','19', 17.71),
('javad','joodaki','40122344','17', 13.78), ('kosar','torabi','40223376','18', 14.42), ('omid','besharati','40124376','15', 15.26);
select  FirstName,LastName,student_subject,average from student_information
order by average DESC
limit 5;

select FirstName,LastName,average,student_subject from student_information
join faculities on student_fac_num=faculity_number and student_fac_num=20
where average>15;

select FirstName,LastName,average,student_subject from student_information
join faculities on student_fac_num=faculity_number and student_fac_num=18





