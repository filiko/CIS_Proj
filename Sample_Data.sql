
INSERT INTO HOSPITAL_BRANCH (branch_name, phone_number, branch_address) VALUES
('Central Hospital', '123-456-7890', '123 Main St, Cityville'),
('East Side Clinic', '234-567-8901', '456 Oak St, Eastville');


INSERT INTO DEPARTMENT (department_name, branch_id) VALUES
('Cardiology', 1),
('Pediatrics', 1),
('Emergency', 2);


INSERT INTO PATIENT (first_name, last_name, date_of_birth, gender, phone_number, address) VALUES
('Alice', 'Smith', '1990-04-05', 'Female', '321-654-0987', '789 Pine St'),
('Bob', 'Jones', '1985-11-23', 'Male', '654-321-9870', '234 Elm St');


INSERT INTO SPECIALTY (specialty_name, specialty_description) VALUES
('Cardiology', 'Heart specialist'),
('Pediatrics', 'Child health specialist');


INSERT INTO DOCTOR (first_name, last_name, phone_number, department_id, specialty_id) VALUES
('Dr. John', 'Doe', '987-654-3210', 1, 1),
('Dr. Jane', 'Brown', '876-543-2109', 2, 2);


INSERT INTO ROOM (room_name, room_type, department_id) VALUES
('Room A1', 'ICU', 1),
('Room B2', 'Pediatrics', 2);


INSERT INTO BED (bed_number, room_id, patient_id) VALUES
('Bed 1', 1, 1),
('Bed 2', 2, 2);


INSERT INTO APPOINTMENT (patient_id, doctor_id, appointment_date, reason) VALUES
(1, 1, '2025-04-10 10:00:00', 'Routine checkup'),
(2, 2, '2025-04-11 14:30:00', 'Follow-up');


INSERT INTO NURSE (first_name, last_name, phone_number, department_id) VALUES
('Nina', 'Taylor', '555-000-1111', 1),
('Mike', 'Anderson', '555-000-2222', 2);


INSERT INTO DOCTOR_NURSE (doctor_id, nurse_id) VALUES
(1, 1),
(2, 2);


INSERT INTO INSURANCE (provider_name, coverage_amount, start_date, end_date) VALUES
('HealthFirst', 10000.00, '2024-01-01', '2025-12-31'),
('WellCare', 15000.00, '2024-06-01', '2026-05-31');


INSERT INTO PATIENT_INSURANCE (patient_id, insurance_id) VALUES
(1, 1),
(2, 2);


INSERT INTO BILL (patient_id, insurance_id, amount_owed) VALUES
(1, 1, 200.00),
(2, 2, 150.00);


INSERT INTO PAYMENT (bill_id, payment_date, payment_method, payment_amount) VALUES
(1, '2025-04-01', 'Credit Card', 200.00),
(2, '2025-04-02', 'Cash', 150.00);


INSERT INTO PRESCRIPTION (patient_id, doctor_id, medication_name, dosage, start_date, end_date) VALUES
(1, 1, 'Atorvastatin', '10mg daily', '2025-04-01', '2025-05-01'),
(2, 2, 'Amoxicillin', '500mg twice daily', '2025-04-03', '2025-04-10');


INSERT INTO SURGERY (patient_id, doctor_id, room_id, surgery_date) VALUES
(1, 1, 1, '2025-04-05 08:00:00'),
(2, 2, 2, '2025-04-06 09:00:00');


INSERT INTO EQUIPMENT (name, equipment_type, description, availability) VALUES
('Heart Monitor', 'Monitoring', 'Used for cardiac monitoring', TRUE),
('Surgical Kit', 'Surgery', 'Basic surgical tools', TRUE);


INSERT INTO SURGERY_EQUIPMENT (surgery_id, equipment_id) VALUES
(1, 1),
(2, 2);


INSERT INTO LAB (patient_id, test_name, lab_test_date) VALUES
(1, 'Blood Test', '2025-04-02'),
(2, 'X-Ray', '2025-04-03');


INSERT INTO LAB_TECHNICIAN (first_name, last_name, phone_number, department_id, branch_id) VALUES
('Laura', 'Hill', '333-444-5555', 1, 1),
('James', 'Lee', '444-555-6666', 2, 2);


INSERT INTO TELEHEALTH_SESSION (patient_id, doctor_id, nurse_id, start_time, end_time) VALUES
(1, 1, 1, '2025-04-07 09:00:00', '2025-04-07 09:30:00'),
(2, 2, 2, '2025-04-08 15:00:00', '2025-04-08 15:45:00');


INSERT INTO FEEDBACK (patient_id, number_stars, feedback_date) VALUES
(1, 5, '2025-04-08'),
(2, 4, '2025-04-09');
