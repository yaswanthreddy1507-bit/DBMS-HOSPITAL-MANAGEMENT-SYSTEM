
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

--join operations

SELECT a.appointment_id, p.name AS patient, d.name AS doctor, a.appointment_date 
FROM APPOINTMENT a INNER JOIN PATIENT p 
ON a.patient_id = p.patient_id INNER JOIN DOCTOR d ON a.doctor_id = d.doctor_id;

SELECT p.patient_id, p.name, a.appointment_id, a.status
FROM PATIENT p LEFT JOIN APPOINTMENT a ON p.patient_id = a.patient_id;

SELECT d.doctor_id, d.name, a.appointment_id, a.status
FROM APPOINTMENT a RIGHT JOIN DOCTOR d ON a.doctor_id = d.doctor_id;

SELECT p.patient_id, p.name, b.bill_id 
FROM PATIENT p LEFT JOIN BILLING b ON p.patient_id = b.patient_id 
UNION SELECT p.patient_id, p.name, b.bill_id 
FROM PATIENT p RIGHT JOIN BILLING b ON p.patient_id = b.patient_id;

--Aggregate Functions, GROUP BY and HAVING

SELECT SUM(treatment_amount) AS total_treatment FROM BILLING;

SELECT gender, COUNT(*) AS total_patients FROM PATIENT GROUP BY gender;

SELECT payment_status, AVG(total_amount) AS average_bill 
FROM BILLING GROUP BY payment_status HAVING AVG(total_amount) > 4000;

-- Nested and Correlated Subqueries

SELECT name, age FROM PATIENT WHERE age > (SELECT AVG(age) FROM PATIENT);

SELECT d.name FROM DOCTOR d 
WHERE EXISTS (SELECT 1 FROM APPOINTMENT a WHERE a.doctor_id = d.doctor_id AND a.status = 'Completed');

-- Views and Relational Set Operations

CREATE VIEW available_doctors
AS SELECT doctor_id, name, specialization, department 
FROM DOCTOR WHERE availability_status = 'Available';

CREATE VIEW patient_bill_summary 
AS SELECT p.patient_id, p.name, SUM(b.total_amount) AS total_billed 
FROM PATIENT p JOIN BILLING b ON p.patient_id = b.patient_id GROUP BY p.patient_id, p.name;

SELECT patient_id FROM APPOINTMENT UNION SELECT patient_id FROM BILLING;

SELECT DISTINCT a.patient_id 
FROM APPOINTMENT a WHERE EXISTS (SELECT 1 FROM BILLING b WHERE b.patient_id = a.patient_id);

SELECT DISTINCT a.patient_id 
FROM APPOINTMENT a WHERE NOT EXISTS (SELECT 1 FROM BILLING b WHERE b.patient_id = a.patient_id);

-- DCL and TCL Operations

GRANT SELECT ON hospital_management.* TO 'report_user'@'localhost';

REVOKE SELECT ON hospital_management.* FROM 'report_user'@'localhost';

START TRANSACTION; UPDATE APPOINTMENT SET status = 'Completed' WHERE appointment_id = 1003; COMMIT;

START TRANSACTION; SAVEPOINT before_update; UPDATE BILLING SET payment_status = 'Paid' WHERE bill_id = 5003; ROLLBACK TO before_update; COMMIT;
