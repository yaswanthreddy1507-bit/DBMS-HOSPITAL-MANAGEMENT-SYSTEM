-- Create database
DROP DATABASE IF EXISTS hospital_management;
CREATE DATABASE hospital_management;
USE hospital_management;

-- =========================================================
-- 1. PATIENT TABLE
-- =========================================================

CREATE TABLE PATIENT (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    contact_no VARCHAR(15),
    address VARCHAR(100),
    blood_group VARCHAR(5),
    medical_history VARCHAR(200)
);

-- =========================================================
-- 2. DOCTOR TABLE
-- =========================================================

CREATE TABLE DOCTOR (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50),
    department VARCHAR(50),
    contact_no VARCHAR(15),
    availability_status VARCHAR(20)
);

-- =========================================================
-- 3. WARD TABLE
-- =========================================================

CREATE TABLE WARD (
    ward_id INT PRIMARY KEY,
    ward_type VARCHAR(30),
    ward_number VARCHAR(10),
    capacity INT,
    available_beds INT
);


-- =========================================================
-- 4. STAFF TABLE
-- =========================================================

CREATE TABLE STAFF (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    role VARCHAR(50),
    department VARCHAR(50),
    contact_no VARCHAR(15),
    shift_timing VARCHAR(30)
);


-- =========================================================
-- 5. APPOINTMENT TABLE
-- =========================================================

CREATE TABLE APPOINTMENT (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(20),

    FOREIGN KEY (patient_id)
        REFERENCES PATIENT(patient_id),

    FOREIGN KEY (doctor_id)
        REFERENCES DOCTOR(doctor_id)
);

-- =========================================================
-- 6. BILLING TABLE
-- =========================================================

CREATE TABLE BILLING (
    bill_id INT PRIMARY KEY,
    patient_id INT,
    treatment_amount DECIMAL(10,2),
    room_charges DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    bill_date DATE,

    FOREIGN KEY (patient_id)
        REFERENCES PATIENT(patient_id)
);

-- =========================================================
-- 7. ADMISSION TABLE
-- =========================================================

CREATE TABLE ADMISSION (
    admission_id INT PRIMARY KEY,
    patient_id INT,
    ward_id INT,
    attending_doctor_id INT,
    admission_date DATE,
    discharge_date DATE,

    FOREIGN KEY (patient_id)
        REFERENCES PATIENT(patient_id),

    FOREIGN KEY (ward_id)
        REFERENCES WARD(ward_id),

    FOREIGN KEY (attending_doctor_id)
        REFERENCES DOCTOR(doctor_id)
);

-- =========================================================
-- 8. PRESCRIPTION TABLE
-- =========================================================

CREATE TABLE PRESCRIPTION (
    prescription_id INT PRIMARY KEY,
    appointment_id INT,
    doctor_id INT,
    patient_id INT,
    medicine_name VARCHAR(50),
    dosage VARCHAR(30),
    duration VARCHAR(30),

    FOREIGN KEY (appointment_id)
        REFERENCES APPOINTMENT(appointment_id),

    FOREIGN KEY (doctor_id)
        REFERENCES DOCTOR(doctor_id),

    FOREIGN KEY (patient_id)
        REFERENCES PATIENT(patient_id)
);

