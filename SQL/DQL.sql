
SELECT * FROM PATIENT;
SELECT * FROM DOCTOR;
SELECT * FROM WARD;
SELECT * FROM STAFF;
SELECT * FROM APPOINTMENT;
SELECT * FROM BILLING;
SELECT * FROM ADMISSION;
SELECT * FROM PRESCRIPTION;

-- Patients older than 30 and female
SELECT *
FROM PATIENT
WHERE age > 30
AND gender = 'Female';

-- patients younger than 30 OR older than 50
SELECT *
FROM PATIENT
WHERE age < 30
OR age > 50;

-- Doctors who are available
SELECT *
FROM DOCTOR
WHERE availability_status = 'Available';

--Display patients from youngest to oldest
SELECT *
FROM PATIENT
ORDER BY age ASC;

--Display different blood groups
SELECT DISTINCT blood_group
FROM PATIENT;

--Find total treatment amount
SELECT SUM(treatment_amount) AS total_treatment
FROM BILLING;
 
--Count patients by gender
SELECT gender, COUNT(*) AS total_patients
FROM PATIENT
GROUP BY gender;