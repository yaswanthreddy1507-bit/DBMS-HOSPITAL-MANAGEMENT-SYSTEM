INSERT INTO PATIENT
(patient_id, name, age, gender, contact_no, address, blood_group, medical_history)
VALUES
(1, 'Ravi Kumar', 25, 'Male', '9876543210', 'Hyderabad', 'B+', 'Fever'),
(2, 'Anjali Rao', 32, 'Female', '9876543211', 'Vijayawada', 'A+', 'Diabetes'),
(3, 'Suresh Reddy', 45, 'Male', '9876543212', 'Guntur', 'O+', 'Hypertension'),
(4, 'Priya Sharma', 28, 'Female', '9876543213', 'Visakhapatnam', 'AB+', 'Asthma'),
(5, 'Arjun Singh', 36, 'Male', '9876543214', 'Warangal', 'B-', 'None'),
(6, 'Lakshmi Devi', 52, 'Female', '9876543215', 'Kakinada', 'A-', 'Diabetes'),
(7, 'Kiran Kumar', 41, 'Male', '9876543216', 'Rajahmundry', 'O-', 'Heart Disease'),
(8, 'Sneha Patel', 23, 'Female', '9876543217', 'Nellore', 'B+', 'Migraine'),
(9, 'Manoj Rao', 60, 'Male', '9876543218', 'Tirupati', 'AB-', 'Arthritis'),
(10, 'Divya Reddy', 30, 'Female', '9876543219', 'Amalapuram', 'O+', 'None')


INSERT INTO DOCTOR
(doctor_id, name, specialization, department, contact_no, availability_status)
VALUES
(101, 'Dr. Ramesh', 'Cardiologist', 'Cardiology', '9000000001', 'Available'),
(102, 'Dr. Suresh', 'Neurologist', 'Neurology', '9000000002', 'Available'),
(103, 'Dr. Priya', 'Pediatrician', 'Pediatrics', '9000000003', 'Unavailable'),
(104, 'Dr. Anil', 'Orthopedic', 'Orthopedics', '9000000004', 'Available'),
(105, 'Dr. Kavya', 'Dermatologist', 'Dermatology', '9000000005', 'Available'),
(106, 'Dr. Raj', 'General Physician', 'General Medicine', '9000000006', 'Available'),
(107, 'Dr. Meena', 'Gynecologist', 'Gynecology', '9000000007', 'Unavailable'),
(108, 'Dr. Vijay', 'ENT Specialist', 'ENT', '9000000008', 'Available'),
(109, 'Dr. Neha', 'Ophthalmologist', 'Ophthalmology', '9000000009', 'Available'),
(110, 'Dr. Arun', 'Pulmonologist', 'Pulmonology', '9000000010', 'Available');

INSERT INTO WARD
(ward_id, ward_type, ward_number, capacity, available_beds)
VALUES
(201, 'General', 'G01', 20, 12),
(202, 'General', 'G02', 20, 15),
(203, 'ICU', 'I01', 10, 4),
(204, 'ICU', 'I02', 10, 6),
(205, 'Private', 'P01', 5, 2),
(206, 'Private', 'P02', 5, 3),
(207, 'Emergency', 'E01', 15, 8),
(208, 'Maternity', 'M01', 12, 7),
(209, 'Pediatric', 'PD01', 10, 5),
(210, 'General', 'G03', 20, 14);

INSERT INTO STAFF
(staff_id, name, role, department, contact_no, shift_timing)
VALUES
(601, 'Ramesh Kumar', 'Nurse', 'General Medicine', '9100000001', 'Morning'),
(602, 'Sita Devi', 'Nurse', 'Cardiology', '9100000002', 'Evening'),
(603, 'Mohan Rao', 'Receptionist', 'Administration', '9100000003', 'Morning'),
(604, 'Geetha Sharma', 'Nurse', 'ICU', '9100000004', 'Night'),
(605, 'Rajesh Kumar', 'Lab Technician', 'Laboratory', '9100000005', 'Morning'),
(606, 'Anita Reddy', 'Pharmacist', 'Pharmacy', '9100000006', 'Evening'),
(607, 'Karthik Singh', 'Nurse', 'Emergency', '9100000007', 'Night'),
(608, 'Meena Rao', 'Receptionist', 'Administration', '9100000008', 'Evening'),
(609, 'Vijay Kumar', 'Lab Technician', 'Laboratory', '9100000009', 'Morning'),
(610, 'Pooja Devi', 'Nurse', 'Pediatrics', '9100000010', 'Morning');

INSERT INTO APPOINTMENT
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, status)
VALUES
(1001, 1, 106, '2026-09-01', '09:00:00', 'Completed'),
(1002, 2, 101, '2026-09-02', '10:00:00', 'Completed'),
(1003, 3, 102, '2026-09-03', '11:00:00', 'Scheduled'),
(1004, 4, 105, '2026-09-04', '09:30:00', 'Completed'),
(1005, 5, 104, '2026-09-05', '12:00:00', 'Scheduled'),
(1006, 6, 106, '2026-09-06', '10:30:00', 'Completed'),
(1007, 7, 101, '2026-09-07', '14:00:00', 'Scheduled'),
(1008, 8, 102, '2026-09-08', '15:00:00', 'Completed'),
(1009, 9, 104, '2026-09-09', '11:30:00', 'Cancelled'),
(1010, 10, 110, '2026-09-10', '16:00:00', 'Scheduled');

INSERT INTO BILLING
(bill_id, patient_id, treatment_amount, room_charges, total_amount, payment_status, bill_date)
VALUES
(5001, 1, 2000.00, 1000.00, 3000.00, 'Paid', '2026-09-01'),
(5002, 2, 3500.00, 1500.00, 5000.00, 'Paid', '2026-09-02'),
(5003, 3, 5000.00, 2000.00, 7000.00, 'Pending', '2026-09-03'),
(5004, 4, 2500.00, 1000.00, 3500.00, 'Paid', '2026-09-04'),
(5005, 5, 4000.00, 1500.00, 5500.00, 'Pending', '2026-09-05'),
(5006, 6, 3000.00, 2000.00, 5000.00, 'Paid', '2026-09-06'),
(5007, 7, 6000.00, 2500.00, 8500.00, 'Pending', '2026-09-07'),
(5008, 8, 1800.00, 800.00, 2600.00, 'Paid', '2026-09-08'),
(5009, 9, 4500.00, 2000.00, 6500.00, 'Pending', '2026-09-09'),
(5010, 10, 2200.00, 1000.00, 3200.00, 'Paid', '2026-09-10');

INSERT INTO ADMISSION
(admission_id, patient_id, ward_id, attending_doctor_id, admission_date, discharge_date)
VALUES
(3001, 1, 201, 106, '2026-09-01', '2026-09-03'),
(3002, 2, 202, 101, '2026-09-02', '2026-09-05'),
(3003, 3, 203, 101, '2026-09-03', NULL),
(3004, 4, 205, 105, '2026-09-04', '2026-09-06'),
(3005, 5, 206, 104, '2026-09-05', '2026-09-08'),
(3006, 6, 201, 106, '2026-09-06', '2026-09-10'),
(3007, 7, 204, 101, '2026-09-07', NULL),
(3008, 8, 209, 102, '2026-09-08', '2026-09-09'),
(3009, 9, 202, 104, '2026-09-09', NULL),
(3010, 10, 207, 110, '2026-09-10', '2026-09-12');

INSERT INTO PRESCRIPTION
(prescription_id, appointment_id, doctor_id, patient_id, medicine_name, dosage, duration)
VALUES
(4001, 1001, 106, 1, 'Paracetamol', '500 mg', '5 days'),
(4002, 1002, 101, 2, 'Metformin', '500 mg', '30 days'),
(4003, 1003, 102, 3, 'Aspirin', '75 mg', '15 days'),
(4004, 1004, 105, 4, 'Cetirizine', '10 mg', '7 days'),
(4005, 1005, 104, 5, 'Ibuprofen', '400 mg', '5 days'),
(4006, 1006, 106, 6, 'Metformin', '500 mg', '30 days'),
(4007, 1007, 101, 7, 'Atorvastatin', '20 mg', '30 days'),
(4008, 1008, 102, 8, 'Sumatriptan', '50 mg', '5 days'),
(4009, 1009, 104, 9, 'Calcium', '500 mg', '20 days'),
(4010, 1010, 110, 10, 'Montelukast', '10 mg', '10 days');
