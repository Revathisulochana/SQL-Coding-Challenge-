
-- Create a data base
create database Hospital_DB;
 use hospital_db; -- calling the schema
 
 -- To create a table
 create table Patients (
   patient_id int,
   patient_name varchar(20),
   Age tinyint,
   Gender int,
   Admission_date date
   );
   
   -- alter -- modify/change
   alter table patients
   add Doctor_Assigned varchar(50);
   
   -- modifying the date type
   alter table patients 
   modify patient_name varchar(100);
   
  -- to Rename the table 
  rename table patients to patient_Info;
   
   
   
 
 