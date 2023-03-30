Create database if not exists hospital;

use hospital;

select * from patients;

select count(pid) from patients;

select pid, p_name, gender, disease from patients 
order by age desc limit 1;

select pid, p_name, curdate() from patients;

select ucase(p_name) from patients;

select p_name, length(p_name) char_length from patients;

select p_name, gender, if(gender="Male", "M","F") from patients;

select p_name, doctor_name, concat(p_name, doctor_name) as `pd name`
from patients;

select age, log10(age) from patients;

select date(`date`), location, format(`date`, "%Y-%m-%y") from patients;

desc patients;

alter table patients modify date date;

select date("2013/12/21");

select mid(date, 7,4), location from patients;

select p_name, doctor_name, 
if(p_name = doctor_name, "Null", p_name) as checking 
from patients;

select p_name, age,  if(age>40, "Yes", "No") from patients;

select doctor_name from patients group by doctor_name;

select count(doctor_name), doctor_name from patients
group by doctor_name having count(doctor_name)>= 2;

