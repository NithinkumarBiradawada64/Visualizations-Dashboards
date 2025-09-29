select * from hospital_discharges limit 10;
select distinct ("Hospital Service Area") from hospital_discharges;  
select distinct ("Hospital County") from hospital_discharges;
select distinct("Facility Name")from hospital_discharges;
select distinct("Age Group") from hospital_discharges;
select distinct("Zip Code - 3 digits") from hospital_discharges;
select distinct("Race") from hospital_discharges;
select distinct ("Ethnicity") from hospital_discharges; 
select "Length of Stay" from hospital_discharges  order by "Length of Stay"  desc limit 10;
select distinct("Type of Admission") from hospital_discharges;
select distinct("Type of Admission") from hospital_discharges; 
select distinct ("Patient Disposition") from hospital_discharges;
select distinct ("Discharge Year") from hospital_discharges;
select distinct("CCSR Diagnosis Code") from hospital_discharges;
select distinct("APR MDC Code") from hospital_discharges;
select distinct("APR Severity of Illness Description") from hospital_discharges;
select distinct('APR Severity of Illness Descripition') from hospital_discharges;
select distinct ("Payment Typology 1")from hospital_discharges;
select distinct ("Payment Typology 2")from hospital_discharges;
select distinct ("Payment Typology 3")from hospital_discharges;
select distinct ("Birth Weight")from hospital_discharges;
select distinct ("Emergency Department Indicator")from hospital_discharges;

--1. Department Wise  Utiliization  

select "Type of Admission","Patient Disposition" from hospital_discharges
group by  "Type of Admission" ,"Patient Disposition" ;

-- 2.top 10 avg Length of stay Analysis

select "CCSR Diagnosis Description","Gender","Age Group",avg("Length of Stay" )as avg_stay
From hospital_discharges 
group by "CCSR Diagnosis Description","Gender","Age Group" 
order by avg_stay desc limit 10;

--3.top 10 total costs by Diagnosis, Hospital

select Sum("Total Costs") as  Costs ,"CCSR Diagnosis Description","Facility Name"
from hospital_discharges 
where "Total Costs" is not null
group by "CCSR Diagnosis Description","Facility Name" 
order by Costs desc limit 10;
--4 Patient Demographics 
SELECT "Gender", COUNT(*) AS patient_count
FROM hospital_discharges
WHERE "Gender" IS NOT NULL
GROUP BY "Gender";

select "Age Group",count(*) as patient_count
from hospital_discharges
where "Age Group" is Not Null 
Group by "Age Group"
order  by "Age Group";

select "Zip Code - 3 digits", count(*) as patient_count
from hospital_discharges
where "Zip Code - 3 digits" is not null 
group  by  "Zip Code - 3 digits"
order by "Zip Code - 3 digits";

select "Payment Typology 1" ,count(*) as patient_count
from hospital_discharges
where "Payment Typology 1" is not null 
group by "Payment Typology 1" ;
