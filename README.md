# Hospital Management System Database

A relational database for managing core hospital operations: patients, doctors, appointments, prescriptions, billing, wards, staff and admissions. Built in MySQL as a DBMS Capstone Project (B.Tech, Artificial Intelligence and Machine Learning) at Aditya University, Surampalem.

## Problem Statement

Hospitals often keep patient, doctor and billing data in manual registers or spreadsheets. This causes duplicate records, double-booked appointments, slow retrieval of patient history, no integrity checks, and difficulty generating reports. This project replaces that with a centralized, normalized relational database that enforces integrity through primary and foreign keys and supports fast retrieval through SQL.

## Objectives

- Design a normalized (3NF) relational schema for core hospital operations
- Ensure data integrity and reduce redundancy using keys and constraints
- Support efficient storage and retrieval of patient and hospital records
- Support appointment scheduling, prescription tracking and billing through SQL queries
- Provide a base that can be extended with reporting or more modules

## Tech Stack

| Purpose | Tool |
|---|---|
| Database | MySQL 8.0 |
| Query / admin tool | MySQL Workbench |
| ER and schema diagrams | draw.io (diagrams.net) |
| Version control | Git and GitHub |
| Documentation | Microsoft Word |

## Database Design

The database `hospital_management` has **8 tables** linked by **9 foreign keys**.

| Table | Primary Key | Foreign Keys | Description |
|---|---|---|---|
| `PATIENT` | `patient_id` | none | Patient personal and medical details |
| `DOCTOR` | `doctor_id` | none | Doctor details, specialization, availability |
| `WARD` | `ward_id` | none | Ward type, number, capacity, available beds |
| `STAFF` | `staff_id` | none | Non-doctor staff, role and shift timing |
| `APPOINTMENT` | `appointment_id` | `patient_id`, `doctor_id` | Consultation date, time and status |
| `BILLING` | `bill_id` | `patient_id` | Treatment and room charges, payment status |
| `ADMISSION` | `admission_id` | `patient_id`, `ward_id`, `attending_doctor_id` | Admission and discharge records |
| `PRESCRIPTION` | `prescription_id` | `appointment_id`, `doctor_id`, `patient_id` | Medicine, dosage and duration |

### Relationships

- Patient 1 : M Appointment, Billing, Admission
- Doctor 1 : M Appointment, Prescription, Admission (as attending doctor)
- Ward 1 : M Admission
- Appointment 1 : M Prescription

### Diagrams

Add your diagram images to the repo and link them here, for example:

```
![ER Diagram](docs/er_diagram.png)
![Relational Schema](docs/schema_diagram.png)
```

## What the Project Covers

- **DDL:** table creation with primary key, foreign key and NOT NULL constraints
- **DML:** 10 sample records inserted into every table
- **Constraint testing:** foreign key violation demonstrated (appointment with a non-existent patient is rejected)
- **DQL:** 24 queries, including:
  - Filtering with `WHERE`, `AND`, `OR`, `ORDER BY`, `DISTINCT`
  - Inner, left, right and full outer join (simulated with `UNION`)
  - Aggregates with `GROUP BY` and `HAVING`
  - Nested and correlated subqueries
  - Views (updatable and non-updatable)
  - `UNION`, plus `INTERSECT` and `EXCEPT` equivalents using `EXISTS` / `NOT EXISTS`
  - `GRANT`, `REVOKE`, `COMMIT`, `SAVEPOINT` and `ROLLBACK`

## Repository Structure

Adjust this to match the files you actually uploaded.

```
DBMS-HOSPITAL-MANAGEMENT-SYSTEM/
├── SQL/
│   ├── DDL.sql        # Database and table creation
│   ├── DML.sql        # Sample data insertion
│   └── DQL.sql        # Queries, views, DCL and TCL
├── docs/
│   ├── er_diagram.png
│   ├── schema_diagram.png
│   └── Hospital_Management_System_DBMS_Report.docx
└── README.md
```

## How to Run

1. Install MySQL Server 8.0 and MySQL Workbench.
2. Open MySQL Workbench and connect to your local server.
3. Run the scripts in this order:
   1. `SQL/DDL.sql` creates the `hospital_management` database and all 8 tables
   2. `SQL/DML.sql` inserts the sample data
   3. `SQL/DQL.sql` runs the queries, views and DCL/TCL statements
4. Verify the setup:

```sql
USE hospital_management;
SHOW TABLES;
SELECT * FROM PATIENT;
```

Note: `DDL.sql` starts with `DROP DATABASE IF EXISTS hospital_management;`, so re-running it resets the database.

## Sample Queries

```sql
-- Appointment details with patient and doctor names
SELECT a.appointment_id, p.name AS patient, d.name AS doctor, a.appointment_date
FROM APPOINTMENT a
INNER JOIN PATIENT p ON a.patient_id = p.patient_id
INNER JOIN DOCTOR d ON a.doctor_id = d.doctor_id;

-- Patients older than the average age
SELECT name, age FROM PATIENT WHERE age > (SELECT AVG(age) FROM PATIENT);
```

## Limitations and Future Enhancements

- No front-end interface yet; the project is database-only
- Possible additions: stored procedures and triggers (for example, auto-updating `available_beds` on admission), user roles, reporting dashboards, and a web or desktop front end

## Team

| Name | Roll No. |
|---|---|
| B. Nandha Kishore | 25B11AI110 |
| V. Ram Nikhil | 25B11AIC32 |
| K. Yaswanth Reddy | 25B11AI525 |
| G. Mahesh | 25B11AI335 |

**Project Guide:** Mr. T. Srinivasulu, Assistant Professor, Department of Artificial Intelligence and Machine Learning
**Head of the Department:** Dr. K. Naga Bhargavi
**Institution:** Aditya University, Surampalem, Andhra Pradesh, India
**Academic Year:** 2026-2027
