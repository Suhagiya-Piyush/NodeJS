-- Ans -> 1
create database hospital_management;


-- Ans -> 2
-- select database
use hospital_management;
-- create patients table ->
create table patients(patient_id int primary key, first_name varchar(50), last_name varchar(50), dob date, gender varchar(10), doctor_id int);
-- create doctors table ->
create table doctors(doctor_id int primary key, first_name varchar(50), last_name varchar(50), specialization varchar(50));


-- Ans -> 3
-- insert Patients Data ->
insert into patients values (1, "John", "Doe", "1985-04-23", "Male", 1), (2, "Jane", "Smith", "1990-06-15", "Female", 1), (3, "Robert", "Brown", "1975-09-12", "Male", 2), (4, "Emily", "Davis", "1988-11-22", "Female", 3), (5, "Michael", "Wilson", "1992-02-03", "Male", 1);
-- insert Doctors Data ->
insert into doctors values (1, "Alice", "Johnson", "Cardiology"), (2, "Michael", "Clark", "Neurology"), (3, "Laura", "Admas", "Dermatology"), (4, "James", "Miller", "Orthopedics"), (5, "Sarah", "Taylor", "Pediatrics"); 


-- Ans -> 4
-- 1).
select * from patients where doctor_id = 1;
-- 2).
select first_name, last_name from doctors;


-- Ans -> 5
-- create Appointments table ->
create table appointments(appointment_id int primary key, appointment_date date, patient_id int, doctor_id int, foreign key (patient_id) references patients(patient_id), foreign key (doctor_id) references doctors(doctor_id));
-- insert Appointments Data ->
insert into appointments values (1, "2024-07-05", 1, 1), (2, "2024-07-06", 2, 2), (3, "2024-07-07", 3, 3), (4, "2024-07-09", 4, 4), (5, "2024-07-09", 5, 5);
select appointments.appointment_id, appointments.appointment_date, concat(patients.first_name," ", patients.last_name) as "Patients Name", concat(doctors.first_name," ", doctors.last_name) as "Doctors Name" from appointments inner join patients on patients.patient_id = appointments.patient_id inner join doctors on doctors.doctor_id = appointments.doctor_id;


-- Ans -> 6
-- 1).
update patients set last_name = "Petter" where patient_id = 1;
-- 2).
update doctors set specialization = "Orthopedics" where doctor_id = 2;


-- Ans -> 7
-- 1).
select count(patient_id) from patients;
-- 2).
select avg(floor(datediff("2024-07-12", dob) / 365)) from patients;


-- Ans -> 8
-- 1).
delete from patients where patient_id = 2;
-- 2).
delete from appointments where appointment_id = 2;
