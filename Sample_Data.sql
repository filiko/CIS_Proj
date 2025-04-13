-- Sample data for Healthcare Management System

-- STATE data
INSERT INTO STATE (state_name) VALUES
('California'),
('New York'),
('Texas'),
('Florida'),
('Illinois');

-- CITY data
INSERT INTO CITY (city_name) VALUES
('Los Angeles'),
('San Francisco'),
('New York City'),
('Austin'),
('Miami'),
('Chicago'),
('Houston'),
('Orlando'),
('Sacramento'),
('Brooklyn');

-- SUPPLIER data
INSERT INTO SUPPLIER (supplier_name, phone_number, street, city, state, zipcode, product_discription, email) VALUES
('MedSupply Inc', '800-123-4567', '100 Commerce St', 'Los Angeles', 'CA', 90001, 'Medical equipment and supplies', 'info@medsupply.com'),
('PharmaCorp', '800-234-5678', '200 Business Ave', 'San Francisco', 'CA', 94107, 'Pharmaceutical products', 'contact@pharmacorp.com'),
('MedTech Solutions', '800-345-6789', '300 Technology Blvd', 'New York City', 'NY', 10022, 'Advanced medical technology', 'sales@medtechsolutions.com'),
('Healthcare Distributors', '800-456-7890', '400 Distribution Dr', 'Austin', 'TX', 78701, 'Healthcare product distribution', 'service@healthcaredist.com'),
('Surgical Innovations', '800-567-8901', '500 Surgical St', 'Miami', 'FL', 33101, 'Surgical equipment and instruments', 'info@surgicalinnovations.com'),
('Med Laboratories', '800-678-9012', '600 Laboratory Ln', 'Chicago', 'IL', 60601, 'Laboratory equipment and supplies', 'contact@medlabs.com'),
('Diagnostic Systems', '800-789-0123', '700 Diagnostic Dr', 'Houston', 'TX', 77002, 'Diagnostic equipment', 'info@diagnosticsystems.com'),
('BioMed Suppliers', '800-890-1234', '800 BioMed Blvd', 'Orlando', 'FL', 32801, 'Biomedical supplies', 'sales@biomedsuppliers.com'),
('Health Equipment Co', '800-901-2345', '900 Health St', 'Sacramento', 'CA', 95814, 'General health equipment', 'contact@healthequipment.com'),
('Medical Innovations', '800-012-3456', '1000 Innovation Ave', 'Brooklyn', 'NY', 11201, 'Innovative medical products', 'info@medicalinnovations.com');

-- INVENTORY data
INSERT INTO INVENTORY (supplier_id, item_name, item_type, notes, amount_in_inventory) VALUES
(1, 'Surgical Gloves', 'Supplies', 'Sterile latex gloves', 500),
(1, 'Surgical Masks', 'Supplies', 'Disposable surgical masks', 1000),
(2, 'Amoxicillin', 'Medication', 'Antibiotics', 200),
(2, 'Lisinopril', 'Medication', 'Blood pressure medication', 150),
(3, 'Patient Monitors', 'Equipment', 'Electronic patient monitoring systems', 20),
(3, 'Defibrillators', 'Equipment', 'Emergency cardiac equipment', 10),
(4, 'IV Solutions', 'Supplies', 'Intravenous fluids', 300),
(4, 'Syringes', 'Supplies', 'Disposable syringes', 800),
(5, 'Surgical Instruments', 'Equipment', 'Various surgical tools', 50),
(5, 'Surgical Sutures', 'Supplies', 'Sterile suturing materials', 400),
(6, 'Blood Test Kits', 'Supplies', 'For blood sampling and analysis', 100),
(6, 'Lab Reagents', 'Supplies', 'Chemical reagents for lab tests', 250),
(7, 'X-Ray Machine', 'Equipment', 'Diagnostic imaging equipment', 5),
(7, 'MRI Supplies', 'Supplies', 'For MRI procedures', 30),
(8, 'Pacemakers', 'Equipment', 'Cardiac pacemakers', 15),
(8, 'Orthopedic Implants', 'Equipment', 'Various implants for orthopedics', 25),
(9, 'Hospital Beds', 'Equipment', 'Adjustable patient beds', 40),
(9, 'Wheelchairs', 'Equipment', 'For patient mobility', 35),
(10, 'Ventilators', 'Equipment', 'Breathing assistance devices', 15),
(10, 'Oxygen Tanks', 'Supplies', 'Medical oxygen supply', 100);

-- HOSPITAL_BRANCH data
INSERT INTO HOSPITAL_BRANCH (branch_name, phone_number, branch_street, city_id, state_id, branch_zipcode) VALUES
('Central Hospital', '123-456-7890', '123 Main St', 1, 1, 90001),
('East Side Clinic', '234-567-8901', '456 Oak St', 2, 1, 94107),
('Manhattan Medical Center', '345-678-9012', '789 Park Ave', 3, 2, 10022),
('Texas Health Center', '456-789-0123', '321 Longhorn Dr', 4, 3, 78701),
('Sunshine Medical Plaza', '567-890-1234', '555 Beach Blvd', 5, 4, 33101),
('Windy City Hospital', '678-901-2345', '888 Michigan Ave', 6, 5, 60601),
('Gulf Coast Medical Center', '789-012-3456', '777 Oil St', 7, 3, 77002),
('Orange County Health', '890-123-4567', '444 Disney Ln', 8, 4, 32801),
('Golden State Medical', '901-234-5678', '333 Capitol Ave', 9, 1, 95814),
('Brooklyn Heights Healthcare', '012-345-6789', '222 Bridge St', 10, 2, 11201);

-- DEPARTMENT data
INSERT INTO DEPARTMENT (department_name, branch_id) VALUES
('Cardiology', 1),
('Pediatrics', 1),
('Emergency', 2),
('Neurology', 2),
('Oncology', 3),
('Orthopedics', 3),
('Dermatology', 4),
('Radiology', 5),
('Internal Medicine', 6),
('Surgery', 7),
('Obstetrics & Gynecology', 8),
('Psychiatry', 9),
('Urology', 10),
('Ophthalmology', 1),
('Endocrinology', 2);

-- PATIENT data
INSERT INTO PATIENT (first_name, last_name, date_of_birth, gender, phone_number, street, zipcode, city_id, state_id) VALUES
('Alice', 'Smith', '1990-04-05', 'Female', '321-654-0987', '789 Pine St', 90001, 1, 1),
('Bob', 'Jones', '1985-11-23', 'Male', '654-321-9870', '234 Elm St', 94107, 2, 1),
('Carol', 'Williams', '1978-07-15', 'Female', '555-123-4567', '101 Maple Ave', 10022, 3, 2),
('David', 'Brown', '1995-02-28', 'Male', '111-222-3333', '505 Cedar Ln', 78701, 4, 3),
('Emma', 'Taylor', '1982-09-17', 'Female', '444-555-6666', '202 Oak Dr', 33101, 5, 4),
('Frank', 'Martinez', '1970-12-10', 'Male', '777-888-9999', '303 Birch Rd', 60601, 6, 5),
('Grace', 'Anderson', '1998-06-22', 'Female', '123-456-7890', '404 Spruce St', 77002, 7, 3),
('Henry', 'Thomas', '1965-03-30', 'Male', '987-654-3210', '606 Walnut Ave', 32801, 8, 4),
('Isabella', 'Garcia', '1988-08-11', 'Female', '456-789-0123', '707 Pine Dr', 95814, 9, 1),
('James', 'Rodriguez', '1992-01-25', 'Male', '333-222-1111', '808 Redwood Ct', 11201, 10, 2),
('Kimberly', 'Lee', '1975-05-18', 'Female', '789-456-1230', '909 Aspen Ln', 90001, 1, 1),
('Lawrence', 'Walker', '2000-10-07', 'Male', '456-123-7890', '111 Sequoia St', 94107, 2, 1),
('Maria', 'Hernandez', '1980-07-29', 'Female', '222-333-4444', '222 Palm Dr', 10022, 3, 2),
('Nathan', 'Clark', '1973-04-14', 'Male', '888-777-6666', '333 Cypress Rd', 78701, 4, 3),
('Olivia', 'Lewis', '1993-11-02', 'Female', '555-444-3333', '444 Willow Ln', 33101, 5, 4);

-- EMERGENCY_CONTACT data
INSERT INTO EMERGENCY_CONTACT (first_name, last_name, relationship, phone_number, email) VALUES
('John', 'Smith', 'Spouse', '321-654-0988', 'john.smith@email.com'),
('Mary', 'Jones', 'Spouse', '654-321-9871', 'mary.jones@email.com'),
('Thomas', 'Williams', 'Son', '555-123-4568', 'thomas.williams@email.com'),
('Sarah', 'Brown', 'Daughter', '111-222-3334', 'sarah.brown@email.com'),
('Robert', 'Taylor', 'Spouse', '444-555-6667', 'robert.taylor@email.com'),
('Linda', 'Martinez', 'Spouse', '777-888-9990', 'linda.martinez@email.com'),
('Michael', 'Anderson', 'Brother', '123-456-7891', 'michael.anderson@email.com'),
('Susan', 'Thomas', 'Daughter', '987-654-3211', 'susan.thomas@email.com'),
('Carlos', 'Garcia', 'Son', '456-789-0124', 'carlos.garcia@email.com'),
('Emily', 'Rodriguez', 'Spouse', '333-222-1112', 'emily.rodriguez@email.com'),
('David', 'Lee', 'Brother', '789-456-1231', 'david.lee@email.com'),
('Jennifer', 'Walker', 'Mother', '456-123-7891', 'jennifer.walker@email.com'),
('Jose', 'Hernandez', 'Father', '222-333-4445', 'jose.hernandez@email.com'),
('Lisa', 'Clark', 'Spouse', '888-777-6667', 'lisa.clark@email.com'),
('William', 'Lewis', 'Spouse', '555-444-3334', 'william.lewis@email.com');

-- SPECIALTY data
INSERT INTO SPECIALTY (specialty_name, specialty_notes) VALUES
('Cardiology', 'Heart specialist'),
('Pediatrics', 'Child health specialist'),
('Emergency Medicine', 'Acute care specialist'),
('Neurology', 'Nervous system specialist'),
('Oncology', 'Cancer specialist'),
('Orthopedics', 'Musculoskeletal specialist'),
('Dermatology', 'Skin specialist'),
('Radiology', 'Medical imaging specialist'),
('Internal Medicine', 'Adult diseases specialist'),
('General Surgery', 'Surgical procedures specialist');

-- DOCTOR data
INSERT INTO DOCTOR (doctor_id,first_name, last_name, phone_number, department_id, specialty_id) VALUES
(100,'John', 'Doe', '987-654-3210', 1, 1),
(200,'Jane', 'Brown', '876-543-2109', 2, 2),
('Michael', 'Johnson', '765-432-1098', 3, 3),
('Sarah', 'Davis', '654-321-0987', 4, 4),
('Robert', 'Miller', '543-210-9876', 5, 5),
('Emily', 'Wilson', '432-109-8765', 6, 6),
('Daniel', 'Moore', '321-098-7654', 7, 7),
('Jessica', 'Taylor', '210-987-6543', 8, 8),
('Christopher', 'Anderson', '109-876-5432', 9, 9),
('Ashley', 'Thomas', '098-765-4321', 10, 10),
('Matthew', 'Jackson', '987-654-3211', 11, 1),
('Jennifer', 'White', '876-543-2108', 12, 2),
('David', 'Harris', '765-432-1097', 13, 3),
('Lisa', 'Martin', '654-321-0986', 14, 4),
('James', 'Thompson', '543-210-9875', 15, 5);

-- DOCTOR_SPECIALTY data
INSERT INTO DOCTOR_SPECIALTY (doctor_id, specialty_id) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(5, 9),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 1),
(12, 2),
(13, 3),
(13, 10),
(14, 4),
(15, 5);

-- NURSE data
INSERT INTO NURSE (nurse_id, first_name, last_name, phone_number, department_id) VALUES
(100, 'Nina', 'Taylor', '555-000-1111', 1),
(200, 'Mike', 'Anderson', '555-000-2222', 2);

-- DOCTOR_NURSE data
INSERT INTO DOCTOR_NURSE (doctor_id, nurse_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(1, 2),
(2, 3),
(3, 4);

-- ROOM data
INSERT INTO ROOM (room_name, room_type, department_id) VALUES
('Room A1', 'ICU', 1),
('Room B2', 'Pediatrics', 2),
('Room C3', 'Emergency', 3),
('Room D4', 'Neurology', 4),
('Room E5', 'Oncology', 5),
('Room F6', 'Orthopedics', 6),
('Room G7', 'Dermatology', 7),
('Room H8', 'Radiology', 8),
('Room I9', 'Internal Medicine', 9),
('Room J10', 'Surgery', 10),
('Room K11', 'Obstetrics', 11),
('Room L12', 'Psychiatry', 12),
('Room M13', 'Urology', 13),
('Room N14', 'Ophthalmology', 14),
('Room O15', 'Endocrinology', 15);

-- BED data
INSERT INTO BED (bed_number, room_id, patient_id) VALUES
('Bed 101', 1, 1),
('Bed 102', 2, 2),
('Bed 103', 3, 3),
('Bed 104', 4, 4),
('Bed 105', 5, 5),
('Bed 106', 6, 6),
('Bed 107', 7, 7),
('Bed 108', 8, 8),
('Bed 109', 9, 9),
('Bed 110', 10, 10),
('Bed 111', 11, NULL),
('Bed 112', 12, NULL),
('Bed 113', 13, NULL),
('Bed 114', 14, NULL),
('Bed 115', 15, NULL);

-- INSURANCE data
INSERT INTO INSURANCE (provider_name, plan_name, coverage_amount, coverage_type, start_date, end_date, contact_number, policy_number, copay_amount, deductible, pre_approval_required) VALUES
('HealthFirst', 'Premium Plus', 1000000.00, 'Comprehensive', '2024-01-01', '2024-12-31', '800-111-2222', 'HF-PP-12345', 20.00, 1000.00, FALSE),
('WellCare', 'Family Plan', 750000.00, 'Family', '2024-01-15', '2024-12-31', '800-222-3333', 'WC-FP-23456', 25.00, 1500.00, TRUE),
('MediCorp', 'Standard Individual', 500000.00, 'Individual', '2024-02-01', '2025-01-31', '800-333-4444', 'MC-SI-34567', 30.00, 2000.00, FALSE),
('InsurePlus', 'Bronze Coverage', 300000.00, 'Basic', '2024-03-01', '2024-12-31', '800-444-5555', 'IP-BC-45678', 35.00, 2500.00, FALSE),
('HealthGuard', 'Silver Protection', 400000.00, 'Standard', '2024-01-01', '2024-12-31', '800-555-6666', 'HG-SP-56789', 30.00, 2000.00, TRUE),
('MedAssure', 'Gold Plan', 800000.00, 'Premium', '2024-02-15', '2025-02-14', '800-666-7777', 'MA-GP-67890', 15.00, 1000.00, TRUE),
('CareShield', 'Platinum Coverage', 1200000.00, 'Elite', '2024-01-01', '2024-12-31', '800-777-8888', 'CS-PC-78901', 10.00, 500.00, FALSE),
('LifeHealth', 'Senior Care', 600000.00, 'Senior', '2024-03-15', '2025-03-14', '800-888-9999', 'LH-SC-89012', 15.00, 750.00, TRUE),
('FamilyCare', 'Children First', 400000.00, 'Pediatric', '2024-01-01', '2024-12-31', '800-999-0000', 'FC-CF-90123', 0.00, 0.00, FALSE),
('MedicalPlus', 'Worker Protection', 500000.00, 'Occupational', '2024-02-01', '2025-01-31', '800-000-1111', 'MP-WP-01234', 25.00, 1500.00, TRUE);

-- PATIENT_INSURANCE data
INSERT INTO PATIENT_INSURANCE (patient_id, insurance_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5);

-- BILL data
INSERT INTO BILL (patient_id, insurance_id, amount_owed, total_bill) VALUES
(1, 1, 200.00, 1000.00),
(2, 2, 150.00, 750.00),
(3, 3, 300.00, 1500.00),
(4, 4, 250.00, 1250.00),
(5, 5, 100.00, 500.00),
(6, 6, 400.00, 2000.00),
(7, 7, 50.00, 250.00),
(8, 8, 150.00, 750.00),
(9, 9, 0.00, 800.00),
(10, 10, 300.00, 1500.00),
(11, 1, 100.00, 500.00),
(12, 2, 200.00, 1000.00),
(13, 3, 150.00, 750.00),
(14, 4, 250.00, 1250.00),
(15, 5, 300.00, 1500.00);

-- PAYMENT data
INSERT INTO PAYMENT (bill_id, payment_date, payment_method, payment_amount) VALUES
(1, '2025-01-15', 'Credit Card', 800.00),
(2, '2025-01-20', 'Insurance', 600.00),
(3, '2025-02-01', 'Credit Card', 1200.00),
(4, '2025-02-10', 'Insurance', 1000.00),
(5, '2025-01-25', 'Cash', 400.00),
(6, '2025-03-05', 'Insurance', 1600.00),
(7, '2025-02-15', 'Credit Card', 200.00),
(8, '2025-03-10', 'Insurance', 600.00),
(9, '2025-01-30', 'Insurance', 800.00),
(10, '2025-02-20', 'Cash', 1200.00),
(1, '2025-03-15', 'out_of_pocket', 600.00),
(2, '2025-02-25', 'out_of_pocket', 550.00),
(3, '2025-03-20', 'out_of_pocket', 300.00),
(4, '2025-01-10', 'out_of_pocket', 250.00),
(5, '2025-02-05', 'out_of_pocket', 100.00);

-- MEDICATION data
INSERT INTO MEDICATION (medication_name, medication_type, manufacturer, inventory_id) VALUES
('Amoxicillin', 'Antibiotic', 'PharmaCorp', 3),
('Lisinopril', 'Antihypertensive', 'PharmaCorp', 4),
('Atorvastatin', 'Statin', 'MedTech Pharma', 3),
('Metformin', 'Antidiabetic', 'Healthcare Pharma', 3),
('Levothyroxine', 'Hormone', 'BioMed Pharma', 3),
('Albuterol', 'Bronchodilator', 'Respiratory Care', 3),
('Hydrochlorothiazide', 'Diuretic', 'PharmaCorp', 4),
('Simvastatin', 'Statin', 'MedTech Pharma', 3),
('Omeprazole', 'Proton Pump Inhibitor', 'Digestive Health Inc', 3),
('Acetaminophen', 'Analgesic', 'Pain Relief Co', 3),
('Ibuprofen', 'NSAID', 'Pain Relief Co', 3),
('Aspirin', 'Antiplatelet', 'CardioHealth', 3),
('Azithromycin', 'Antibiotic', 'PharmaCorp', 3),
('Fluoxetine', 'Antidepressant', 'Mental Health Pharma', 3),
('Sertraline', 'Antidepressant', 'Mental Health Pharma', 3);

-- PRESCRIPTION data
INSERT INTO PRESCRIPTION (patient_id, medication_id, doctor_id, dosage, dosage_unit, frequency, start_date, end_date, refill_total, refills_used, refill_date, refills_allowed) VALUES
(1, 2, 1, 10, 'mg', 'Daily', '2025-01-10', '2025-07-10', 6, 1, '2025-02-10', TRUE),
(1, 12, 1, 81, 'mg', 'Daily', '2025-01-10', '2025-07-10', 6, 1, '2025-02-10', TRUE),
(2, 4, 2, 500, 'mg', 'Twice daily', '2025-01-15', '2025-07-15', 6, 1, '2025-02-15', TRUE),
(3, 6, 3, 90, 'mcg', 'As needed', '2025-01-20', '2025-04-20', 3, 0, '2025-02-20', TRUE),
(4, 11, 4, 600, 'mg', 'Three times daily', '2025-01-25', '2025-02-25', 1, 0, '2025-02-25', FALSE),
(5, 9, 5, 20, 'mg', 'Daily', '2025-02-01', '2025-08-01', 6, 1, '2025-03-01', TRUE),
(6, 14, 6, 20, 'mg', 'Daily', '2025-02-05', '2025-08-05', 6, 1, '2025-03-05', TRUE),
(7, 15, 7, 50, 'mg', 'Daily', '2025-02-10', '2025-08-10', 6, 1, '2025-03-10', TRUE),
(8, 5, 8, 125, 'mcg', 'Daily', '2025-02-15', '2025-08-15', 6, 1, '2025-03-15', TRUE),
(9, 10, 9, 500, 'mg', 'As needed', '2025-02-20', '2025-03-20', 1, 0, '2025-03-20', FALSE),
(10, 1, 10, 500, 'mg', 'Three times daily', '2025-02-25', '2025-03-25', 1, 0, '2025-03-25', FALSE),
(11, 3, 11, 20, 'mg', 'Daily', '2025-03-01', '2025-09-01', 6, 0, '2025-04-01', TRUE),
(12, 7, 12, 25, 'mg', 'Daily', '2025-03-05', '2025-09-05', 6, 0, '2025-04-05', TRUE),
(13, 8, 13, 20, 'mg', 'Daily', '2025-03-10', '2025-09-10', 6, 0, '2025-04-10', TRUE),
(14, 13, 14, 250, 'mg', 'Daily', '2025-03-15', '2025-03-22', 1, 0, '2025-03-22', FALSE),
(15, 7, 15, 12.5, 'mg', 'Daily', '2025-03-20', '2025-09-20', 6, 0, '2025-04-20', TRUE);

-- SURGERY data
INSERT INTO SURGERY (patient_id, doctor_id, bed_id, surgery_date, surgery_type, surgery_status) VALUES
(1, 1, 1, '2025-01-15 08:00:00', 'Coronary Artery Bypass', 'completed'),
(2, 10, 2, '2025-01-20 09:00:00', 'Appendectomy', 'completed'),
(3, 10, 3, '2025-01-25 10:00:00', 'Hernia Repair', 'completed'),
(4, 6, 4, '2025-02-01 07:30:00', 'Knee Replacement', 'completed'),
(5, 5, 5, '2025-02-05 08:30:00', 'Tumor Removal', 'completed'),
(6, 10, 6, '2025-02-10 11:00:00', 'Gallbladder Removal', 'completed'),
(7, 6, 7, '2025-02-15 07:00:00', 'Hip Replacement', 'completed'),
(8, 10, 8, '2025-02-20 09:30:00', 'Appendectomy', 'completed'),
(9, 10, 9, '2025-02-25 08:00:00', 'Tonsillectomy', 'completed'),
(10, 10, 10, '2025-03-01 10:00:00', 'Spinal Fusion', 'completed'),
(11, 6, 1, '2025-03-05 09:00:00', 'Shoulder Replacement', 'completed'),
(12, 5, 2, '2025-03-10 07:00:00', 'Mastectomy', 'completed'),
(13, 10, 3, '2025-03-15 10:30:00', 'Hernia Repair', 'scheduled'),
(14, 6, 4, '2025-03-20 08:30:00', 'Knee Arthroscopy', 'scheduled'),
(15, 10, 5, '2025-03-25 11:00:00', 'Appendectomy', 'scheduled');


-- DOCTOR_ASSIGNMENT data
INSERT INTO DOCTOR_ASSIGNMENT (doctor_id, surgery_id, date, time, notes) VALUES
(1, 1, '2025-01-15', '08:00:00', 'Primary surgeon'),
(11, 1, '2025-01-15', '08:00:00', 'Assistant surgeon'),
(10, 2, '2025-01-20', '09:00:00', 'Primary surgeon'),
(13, 2, '2025-01-20', '09:00:00', 'Assistant surgeon'),
(10, 3, '2025-01-25', '10:00:00', 'Primary surgeon'),
(6, 4, '2025-02-01', '07:30:00', 'Primary surgeon'),
(5, 5, '2025-02-05', '08:30:00', 'Primary surgeon'),
(10, 6, '2025-02-10', '11:00:00', 'Primary surgeon'),
(6, 7, '2025-02-15', '07:00:00', 'Primary surgeon'),
(10, 8, '2025-02-20', '09:30:00', 'Primary surgeon'),
(10, 9, '2025-02-25', '08:00:00', 'Primary surgeon'),
(10, 10, '2025-03-01', '10:00:00', 'Primary surgeon'),
(11, 10, '2025-03-01', '10:00:00', 'Assistant surgeon'),
(6, 11, '2025-03-05', '09:00:00', 'Primary surgeon'),
(5, 12, '2025-03-10', '07:00:00', 'Primary surgeon'),
(10, 13, '2025-03-15', '10:30:00', 'Primary surgeon'),
(6, 14, '2025-03-20', '08:30:00', 'Primary surgeon'),
(10, 15, '2025-03-25', '11:00:00', 'Primary surgeon');

-- EQUIPMENT data
INSERT INTO EQUIPMENT (equipment_name, equipment_type, notes, availability) VALUES
('Heart Monitor', 'Monitoring', 'For cardiac monitoring', TRUE),
('Surgical Kit A', 'Surgery', 'Basic surgical tools', TRUE),
('MRI Machine', 'Imaging', 'Magnetic resonance imaging', TRUE),
('X-Ray Machine', 'Imaging', 'Radiographic imaging', TRUE),
('Ventilator', 'Respiratory', 'Breathing assistance', TRUE),
('Defibrillator', 'Emergency', 'Cardiac emergency equipment', TRUE),
('Ultrasound Machine', 'Imaging', 'Ultrasonic imaging', TRUE),
('Anesthesia Machine', 'Surgery', 'For administering anesthesia', TRUE),
('Patient Monitor', 'Monitoring', 'Vital signs monitoring', TRUE),
('Endoscope', 'Surgery', 'For minimally invasive procedures', TRUE),
('Surgical Robot', 'Surgery', 'For robotic-assisted surgery', TRUE),
('CT Scanner', 'Imaging', 'Computed tomography scanning', TRUE),
('Infusion Pump', 'Medication', 'For IV fluid delivery', TRUE),
('Dialysis Machine', 'Treatment', 'For kidney function replacement', TRUE),
('EKG Machine', 'Diagnostic', 'For heart electrical activity', TRUE);

-- SURGERY_EQUIPMENT data
INSERT INTO SURGERY_EQUIPMENT (surgery_id, equipment_id) VALUES
(1, 1), -- Heart monitor for cardiac surgery
(1, 2), -- Surgical kit for cardiac surgery
(1, 5), -- Ventilator for cardiac surgery
(1, 6), -- Defibrillator for cardiac surgery
(1, 8), -- Anesthesia machine for cardiac surgery
(1, 9), -- Patient monitor for cardiac surgery
(2, 2), -- Surgical kit for appendectomy
(2, 8), -- Anesthesia machine for appendectomy
(2, 9), -- Patient monitor for appendectomy
(2, 10), -- Endoscope for appendectomy
(3, 2), -- Surgical kit for hernia repair
(3, 8), -- Anesthesia machine for hernia repair
(3, 9), -- Patient monitor for hernia repair
(4, 2), -- Surgical kit for knee replacement
(4, 8), -- Anesthesia machine for knee replacement
(4, 9), -- Patient monitor for knee replacement
(5, 2), -- Surgical kit for tumor removal
(5, 7), -- Ultrasound for tumor removal
(5, 8), -- Anesthesia machine for tumor removal
(5, 9), -- Patient monitor for tumor removal
(6, 2), -- Surgical kit for gallbladder removal
(6, 8), -- Anesthesia machine for gallbladder removal
(6, 9), -- Patient monitor for gallbladder removal
(6, 10), -- Endoscope for gallbladder removal
(7, 2), -- Surgical kit for hip replacement
(7, 8), -- Anesthesia machine for hip replacement
(7, 9), -- Patient monitor for hip replacement
(8, 2), -- Surgical kit for appendectomy
(8, 8), -- Anesthesia machine for appendectomy
(8, 9), -- Patient monitor for appendectomy
(8, 10), -- Endoscope for appendectomy
(9, 2), -- Surgical kit for tonsillectomy
(9, 8), -- Anesthesia machine for tonsillectomy
(9, 9), -- Patient monitor for tonsillectomy
(10, 2), -- Surgical kit for spinal fusion
(10, 8), -- Anesthesia machine for spinal fusion
(10, 9), -- Patient monitor for spinal fusion
(11, 2), -- Surgical kit for shoulder replacement
(11, 8), -- Anesthesia machine for shoulder replacement
(11, 9), -- Patient monitor for shoulder replacement
(12, 2), -- Surgical kit for mastectomy
(12, 8); -- Anesthesia machine for mastectomy

-- LAB_TECHNICIAN data
INSERT INTO LAB_TECHNICIAN (first_name, last_name, phone_number, department_id, branch_id) VALUES
('Laura', 'Hill', '333-444-5555', 1, 1),
('James', 'Lee', '444-555-6666', 2, 1),
('Sophia', 'Garcia', '555-666-7777', 3, 2),
('William', 'Chen', '666-777-8888', 4, 2),
('Olivia', 'Smith', '777-888-9999', 5, 3),
('Benjamin', 'Johnson', '888-999-0000', 6, 3),
('Emma', 'Brown', '999-000-1111', 7, 4),
('Alexander', 'Davis', '000-111-2222', 8, 5),
('Charlotte', 'Wilson', '111-222-3333', 9, 6),
('Daniel', 'Martinez', '222-333-4444', 10, 7),
('Mia', 'Anderson', '333-444-5556', 11, 8),
('Jacob', 'Taylor', '444-555-6667', 12, 9),
('Emily', 'Thomas', '555-666-7778', 13, 10),
('Michael', 'Hernandez', '666-777-8889', 14, 1),
('Ava', 'Moore', '777-888-9990', 15, 2);

-- TEST data
INSERT INTO TEST (test_name, is_specialized) VALUES
('Complete Blood Count', FALSE),
('Basic Metabolic Panel', FALSE),
('Comprehensive Metabolic Panel', FALSE),
('Lipid Panel', FALSE),
('Liver Function Test', FALSE),
('Thyroid Function Test', FALSE),
('Hemoglobin A1C', FALSE),
('Urinalysis', FALSE),
('X-Ray', FALSE),
('Strep Test', FALSE),
('MRI Scan', TRUE),
('CT Scan', TRUE),
('PET Scan', TRUE),
('Colonoscopy', TRUE),
('Endoscopy', TRUE),
('Echocardiogram', TRUE),
('Stress Test', TRUE),
('Bone Density Scan', TRUE),
('Mammogram', TRUE),
('Biopsy', TRUE);

-- LAB data
INSERT INTO LAB (patient_id, doctor_id, technician_id, lab_test_date, notes) VALUES
(1, 1, 1, '2025-01-05', 'Pre-surgery blood work'),
(1, 1, 1, '2025-01-10', 'Cardiac evaluation'),
(2, 2, 2, '2025-01-15', 'Annual checkup'),
(3, 3, 3, '2025-01-20', 'Follow-up for medication'),
(4, 4, 4, '2025-01-25', 'Pre-surgical assessment'),
(5, 5, 5, '2025-02-01', 'Tumor assessment'),
(6, 6, 6, '2025-02-05', 'Diabetes monitoring'),
(7, 7, 7, '2025-02-10', 'Osteoporosis assessment'),
(8, 8, 8, '2025-02-15', 'Thyroid function monitoring'),
(9, 9, 9, '2025-02-20', 'Routine check'),
(10, 10, 10, '2025-02-25', 'Back pain assessment'),
(11, 11, 11, '2025-03-01', 'Heart function evaluation'),
(12, 12, 12, '2025-03-05', 'Routine screening'),
(13, 13, 13, '2025-03-10', 'Pre-surgery evaluation'),
(14, 14, 14, '2025-03-15', 'Knee injury assessment'),
(15, 15, 15, '2025-03-20', 'Pre-surgery blood work');

-- TELEHEALTH_SESSION data
INSERT INTO TELEHEALTH_SESSION (patient_id, doctor_id, nurse_id, prescription_id, surgery_id, start_time, end_time, doctor_notes, nurse_notes) VALUES
(1, 1, 1, 1, NULL, '2025-01-01 10:00:00', '2025-01-01 10:30:00', 'Initial consultation for heart condition', 'Patient reports chest pain, scheduled for in-person follow-up'),
(2, 2, 2, 3, NULL, '2025-01-05 11:00:00', '2025-01-05 11:25:00', 'Diabetes management check', 'Blood sugar levels improving with medication'),
(3, 3, 3, 4, NULL, '2025-01-10 09:00:00', '2025-01-10 09:20:00', 'Asthma follow-up', 'No recent attacks, maintaining current treatment'),
(4, 4, 4, NULL, 4, '2025-01-15 14:00:00', '2025-01-15 14:30:00', 'Pre-surgery consultation', 'Patient understands procedure and risks'),
(5, 5, 5, 5, 5, '2025-01-20 13:00:00', '2025-01-20 13:40:00', 'Oncology follow-up', 'Discussing treatment options after recent scans'),
(6, 6, 6, 6, NULL, '2025-01-25 15:00:00', '2025-01-25 15:20:00', 'Depression medication review', 'Adjusting dosage based on side effects'),
(7, 7, 7, 7, 7, '2025-02-01 10:30:00', '2025-02-01 10:50:00', 'Anxiety management', 'Medication working well, added stress management techniques'),
(8, 8, 8, 8, NULL, '2025-02-05 11:30:00', '2025-02-05 11:50:00', 'Thyroid function check', 'Lab results normal, maintaining current medication'),
(9, 9, 9, NULL, NULL, '2025-02-10 09:30:00', '2025-02-10 09:45:00', 'COPD management', 'Some improvement in breathing tests'),
(10, 10, 10, 10, 10, '2025-02-15 14:30:00', '2025-02-15 15:00:00', 'Pre-surgery consultation', 'Reviewed procedure details and recovery expectations'),
(11, 1, 11, 11, NULL, '2025-02-20 10:00:00', '2025-02-20 10:25:00', 'Heart condition follow-up', 'Medication adjusted based on latest lab results'),
(12, 2, 12, 12, 12, '2025-02-25 11:00:00', '2025-02-25 11:30:00', 'Pre-surgery consultation', 'Discussed procedure and post-operative care'),
(13, 3, 13, 13, 13, '2025-03-01 09:00:00', '2025-03-01 09:25:00', 'Pre-surgery consultation', 'Reviewed hernia repair procedure and risks'),
(14, 4, 14, 14, 14, '2025-03-05 14:00:00', '2025-03-05 14:20:00', 'Knee injury follow-up', 'Scheduled arthroscopy to assess damage'),
(15, 5, 15, 15, 15, '2025-03-10 13:00:00', '2025-03-10 13:30:00', 'Abdominal pain assessment', 'Suspected appendicitis, scheduled for surgery');

-- FEEDBACK data
INSERT INTO FEEDBACK (patient_id, number_stars, feedback_date) VALUES
(1, 5, '2025-01-02'),
(2, 4, '2025-01-06'),
(3, 5, '2025-01-11'),
(4, 3, '2025-01-16'),
(5, 4, '2025-01-21'),
(6, 2, '2025-01-26'),
(7, 3, '2025-02-02'),
(8, 5, '2025-02-06'),
(9, 4, '2025-02-11'),
(10, 3, '2025-02-16'),
(11, 5, '2025-02-21'),
(12, 4, '2025-02-26'),
(13, 4, '2025-03-02'),
(14, 3, '2025-03-06'),
(15, 4, '2025-03-11');

-- ILLNESS data
INSERT INTO ILLNESS (illness_name) VALUES
('Hypertension'),
('Diabetes Type 2'),
('Asthma'),
('Osteoarthritis'),
('Gastroesophageal Reflux Disease'),
('Depression'),
('Anxiety Disorder'),
('Hypothyroidism'),
('Coronary Artery Disease'),
('Chronic Obstructive Pulmonary Disease'),
('Migraine'),
('Rheumatoid Arthritis'),
('Allergic Rhinitis'),
('Hyperlipidemia'),
('Urinary Tract Infection');

-- MEDICAL_HISTORY data
INSERT INTO MEDICAL_HISTORY (patient_id, illness_id, diagnosis_date, notes) VALUES
(1, 1, '2022-05-10', 'Initial diagnosis, started on medication'),
(1, 9, '2023-06-15', 'Developed after hypertension diagnosis'),
(2, 2, '2021-03-20', 'Family history of diabetes'),
(3, 3, '2020-09-05', 'Moderate asthma, requires inhaler'),
(4, 4, '2023-01-12', 'Knee osteoarthritis'),
(5, 5, '2022-11-30', 'Triggered by certain foods'),
(6, 6, '2021-07-22', 'Major depressive disorder'),
(7, 7, '2022-08-14', 'Generalized anxiety disorder'),
(8, 8, '2020-12-05', 'Requires daily medication'),
(9, 10, '2021-10-18', 'Former smoker, moderate COPD'),
(10, 11, '2023-02-25', 'Frequent migraines with aura'),
(11, 12, '2022-04-09', 'Early stage rheumatoid arthritis'),
(12, 13, '2021-05-28', 'Seasonal allergic rhinitis'),
(13, 14, '2023-03-17', 'High cholesterol levels'),
(14, 15, '2023-01-30', 'Recurrent UTIs');

-- ALLERGIC_REACTION data
INSERT INTO ALLERGIC_REACTION (patient_id, medication_id, reaction_date, symptoms, notes) VALUES
(1, 3, '2024-12-01', 'Skin rash, itching', 'Moderate allergic reaction to atorvastatin'),
(2, 1, '2024-11-15', 'Hives, difficulty breathing', 'Severe allergic reaction to amoxicillin'),
(3, 6, '2024-10-20', 'Swelling, itching', 'Mild allergic reaction to albuterol'),
(4, 11, '2024-12-10', 'Upset stomach, nausea', 'Mild reaction to ibuprofen'),
(5, 9, '2024-11-05', 'Headache, dizziness', 'Side effects from omeprazole'),
(6, 14, '2024-09-25', 'Insomnia, anxiety', 'Adverse reaction to fluoxetine'),
(7, 15, '2024-12-15', 'Nausea, drowsiness', 'Side effects from sertraline'),
(8, 5, '2024-10-10', 'Hair loss, weight gain', 'Adverse reaction to levothyroxine'),
(9, 10, '2024-11-20', 'Liver enzyme elevation', 'Adverse reaction to acetaminophen'),
(10, 1, '2024-12-05', 'Diarrhea, stomach pain', 'Side effects from amoxicillin'),
(11, 12, '2024-09-15', 'Stomach bleeding, upset stomach', 'Adverse reaction to aspirin'),
(12, 7, '2024-10-05', 'Dehydration, dizziness', 'Side effects from hydrochlorothiazide'),
(13, 8, '2024-11-10', 'Muscle pain, weakness', 'Adverse reaction to simvastatin'),
(14, 13, '2024-12-20', 'Nausea, diarrhea', 'Side effects from azithromycin'),
(15, 7, '2024-10-25', 'Low blood pressure, dizziness', 'Adverse reaction to hydrochlorothiazide');

-- APPOINTMENT data
INSERT INTO APPOINTMENT (patient_id, doctor_id, nurse_id, prescription_id, surgery_id, appointment_date, reason, appointment_status, doctor_notes, nurse_notes) VALUES
(1, 1, 100, 1, NULL, '2025-01-05 09:00:00', 'Heart condition checkup', 'completed', 'Patient shows improvement with medication', 'Vital signs normal'),
(2, 2, 200, 3, NULL, '2025-01-10 10:30:00', 'Diabetes follow-up', 'completed', 'Blood sugar levels stable', 'Patient following diet plan'),
(15, 5, 15, 15, 15, '2025-03-15 15:30:00', 'Abdominal pain', 'completed', 'Suspected appendicitis', 'Pain in right lower quadrant');