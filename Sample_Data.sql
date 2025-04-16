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
INSERT INTO INVENTORY (item_id, supplier_id, item_name, item_type, notes, amount_in_inventory) VALUES
(21, 2, 'Ciprofloxacin', 'Medication', 'Broad-spectrum antibiotic', 8),
(22, 3, 'Prednisone', 'Medication', 'Anti-inflammatory steroid', 6),
(23, 2, 'Losartan', 'Medication', 'Blood pressure medication', 5),
(24, 2, 'Amlodipine', 'Medication', 'Blood pressure medication', 9),
(25, 3, 'Duloxetine', 'Medication', 'Antidepressant medication', 7);


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
INSERT INTO DOCTOR (doctor_id, first_name, last_name, phone_number, department_id, specialty_id) VALUES
('200001', 'John', 'Doe', '987-654-3210', 1, 1),
('200002', 'Jane', 'Brown', '876-543-2109', 2, 2),
('200003', 'Michael', 'Johnson', '765-432-1098', 3, 3),
('200004', 'Sarah', 'Davis', '654-321-0987', 4, 4),
('200005', 'Robert', 'Miller', '543-210-9876', 5, 5),
('200006', 'Emily', 'Wilson', '432-109-8765', 6, 6),
('200007', 'Daniel', 'Moore', '321-098-7654', 7, 7),
('200008', 'Jessica', 'Taylor', '210-987-6543', 8, 8),
('200009', 'Christopher', 'Anderson', '109-876-5432', 9, 9),
('200010', 'Ashley', 'Thomas', '098-765-4321', 10, 10),
('200011', 'Matthew', 'Jackson', '987-654-3211', 11, 1),
('200012', 'Jennifer', 'White', '876-543-2108', 12, 2),
('200013', 'David', 'Harris', '765-432-1097', 13, 3),
('200014', 'Lisa', 'Martin', '654-321-0986', 14, 4),
('200015', 'James', 'Thompson', '543-210-9875', 15, 5);

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
('300001', 'Nina', 'Taylor', '555-000-1111', 1),
('300002', 'Mike', 'Anderson', '555-000-2222', 2),
('300003', 'Rachel', 'Johnson', '555-000-3333', 3),
('300004', 'Eric', 'Williams', '555-000-4444', 4),
('300005', 'Sophia', 'Martinez', '555-000-5555', 5),
('300006', 'Thomas', 'Brown', '555-000-6666', 6),
('300007', 'Olivia', 'Garcia', '555-000-7777', 7),
('300008', 'William', 'Smith', '555-000-8888', 8),
('300009', 'Emma', 'Davis', '555-000-9999', 9),
('300010', 'Alexander', 'Wilson', '555-111-0000', 10),
('300011', 'Mia', 'Thompson', '555-111-1111', 11),
('300012', 'James', 'Lee', '555-111-2222', 12),
('300013', 'Charlotte', 'Harris', '555-111-3333', 13),
('300014', 'Benjamin', 'Clark', '555-111-4444', 14),
('300015', 'Amelia', 'Lewis', '555-111-5555', 15);
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
INSERT INTO MEDICATION (medication_id, medication_name, medication_type, manufacturer, inventory_id) VALUES
('750001', 'Amoxicillin', 'Antibiotic', 'PharmaCorp', 3),
('750002', 'Lisinopril', 'Antihypertensive', 'PharmaCorp', 4),
('750003', 'Atorvastatin', 'Statin', 'MedTech Pharma', 3),
('750004', 'Metformin', 'Antidiabetic', 'Healthcare Pharma', 3),
('750005', 'Levothyroxine', 'Hormone', 'BioMed Pharma', 3),
('750006', 'Albuterol', 'Bronchodilator', 'Respiratory Care', 3),
('750007', 'Hydrochlorothiazide', 'Diuretic', 'PharmaCorp', 4),
('750008', 'Simvastatin', 'Statin', 'MedTech Pharma', 3),
('750009', 'Omeprazole', 'Proton Pump Inhibitor', 'Digestive Health Inc', 3),
('750010', 'Acetaminophen', 'Analgesic', 'Pain Relief Co', 3),
('750011', 'Ibuprofen', 'NSAID', 'Pain Relief Co', 3),
('750012', 'Aspirin', 'Antiplatelet', 'CardioHealth', 3),
('750013', 'Azithromycin', 'Antibiotic', 'PharmaCorp', 3),
('750014', 'Fluoxetine', 'Antidepressant', 'Mental Health Pharma', 3),
('750015', 'Sertraline', 'Antidepressant', 'Mental Health Pharma', 3),
('750016', 'Ciprofloxacin', 'Antibiotic', 'PharmaCorp', 21),
('750017', 'Prednisone', 'Corticosteroid', 'Health Solutions', 22),
('750018', 'Losartan', 'Antihypertensive', 'CardioHealth', 23),
('750019', 'Amlodipine', 'Calcium Channel Blocker', 'PharmaCorp', 24),
('750020', 'Duloxetine', 'Antidepressant', 'Mental Health Pharma', 25);


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
(15, 7, 15, 12.5, 'mg', 'Daily', '2025-03-20', '2025-09-20', 6, 0, '2025-04-20', TRUE),
('550001', '100001', '750002', '200001', 10, 'mg', 'Daily', '2025-01-10', '2025-07-10', 6, 1, '2025-02-10', TRUE),
('550002', '100001', '750012', '200001', 81, 'mg', 'Daily', '2025-01-10', '2025-07-10', 6, 1, '2025-02-10', TRUE),
('550003', '100002', '750004', '200002', 500, 'mg', 'Twice daily', '2025-01-15', '2025-07-15', 6, 1, '2025-02-15', TRUE),
('550004', '100003', '750006', '200003', 90, 'mcg', 'As needed', '2025-01-20', '2025-04-20', 3, 0, '2025-02-20', TRUE),
('550005', '100004', '750011', '200004', 600, 'mg', 'Three times daily', '2025-01-25', '2025-02-25', 1, 0, '2025-02-25', FALSE),
('550006', '100005', '750009', '200005', 20, 'mg', 'Daily', '2025-02-01', '2025-08-01', 6, 1, '2025-03-01', TRUE),
('550007', '100006', '750014', '200006', 20, 'mg', 'Daily', '2025-02-05', '2025-08-05', 6, 1, '2025-03-05', TRUE),
('550008', '100007', '750015', '200007', 50, 'mg', 'Daily', '2025-02-10', '2025-08-10', 6, 1, '2025-03-10', TRUE),
('550009', '100008', '750005', '200008', 125, 'mcg', 'Daily', '2025-02-15', '2025-08-15', 6, 1, '2025-03-15', TRUE),
('550010', '100009', '750010', '200009', 500, 'mg', 'As needed', '2025-02-20', '2025-03-20', 1, 0, '2025-03-20', FALSE),
('550011', '100010', '750001', '200010', 500, 'mg', 'Three times daily', '2025-02-25', '2025-03-25', 1, 0, '2025-03-25', FALSE),
('550012', '100011', '750003', '200011', 20, 'mg', 'Daily', '2025-03-01', '2025-09-01', 6, 0, '2025-04-01', TRUE),
('550013', '100012', '750007', '200012', 25, 'mg', 'Daily', '2025-03-05', '2025-09-05', 6, 0, '2025-04-05', TRUE),
('550014', '100013', '750008', '200013', 20, 'mg', 'Daily', '2025-03-10', '2025-09-10', 6, 0, '2025-04-10', TRUE),
('550015', '100014', '750013', '200014', 250, 'mg', 'Daily', '2025-03-15', '2025-03-22', 1, 0, '2025-03-22', FALSE),
('550016', '100015', '750007', '200015', 12.5, 'mg', 'Daily', '2025-03-20', '2025-09-20', 6, 0, '2025-04-20', TRUE);
-- SURGERY data
INSERT INTO SURGERY (surgery_id, patient_id, doctor_id, bed_id, surgery_date, surgery_type, surgery_status, start_time, end_time) VALUES
('900001', '100001', '200001', 1, '2025-01-15 08:00:00', 'Coronary Artery Bypass', 'completed', '2025-01-15 08:00:00', '2025-01-15 12:00:00'),
('900002', '100002', '200010', 2, '2025-01-20 09:00:00', 'Appendectomy', 'completed', '2025-01-20 09:00:00', '2025-01-20 11:00:00'),
('900003', '100003', '200010', 3, '2025-01-25 10:00:00', 'Hernia Repair', 'completed', '2025-01-25 10:00:00', '2025-01-25 12:30:00'),
('900004', '100004', '200006', 4, '2025-02-01 07:30:00', 'Knee Replacement', 'completed', '2025-02-01 07:30:00', '2025-02-01 10:30:00'),
('900005', '100005', '200005', 5, '2025-02-05 08:30:00', 'Tumor Removal', 'completed', '2025-02-05 08:30:00', '2025-02-05 11:45:00'),
('900006', '100006', '200010', 6, '2025-02-10 11:00:00', 'Gallbladder Removal', 'completed', '2025-02-10 11:00:00', '2025-02-10 13:30:00'),
('900007', '100007', '200006', 7, '2025-02-15 07:00:00', 'Hip Replacement', 'completed', '2025-02-15 07:00:00', '2025-02-15 10:15:00'),
('900008', '100008', '200010', 8, '2025-02-20 09:30:00', 'Appendectomy', 'completed', '2025-02-20 09:30:00', '2025-02-20 11:30:00'),
('900009', '100009', '200010', 9, '2025-02-25 08:00:00', 'Tonsillectomy', 'completed', '2025-02-25 08:00:00', '2025-02-25 09:45:00'),
('900010', '100010', '200010', 10, '2025-03-01 10:00:00', 'Spinal Fusion', 'completed', '2025-03-01 10:00:00', '2025-03-01 14:30:00'),
('900011', '100011', '200006', 1, '2025-03-05 09:00:00', 'Shoulder Replacement', 'completed', '2025-03-05 09:00:00', '2025-03-05 12:00:00'),
('900012', '100012', '200005', 2, '2025-03-10 07:00:00', 'Mastectomy', 'completed', '2025-03-10 07:00:00', '2025-03-10 10:45:00'),
('900013', '100013', '200010', 3, '2025-03-15 10:30:00', 'Hernia Repair', 'scheduled', '2025-03-15 10:30:00', '2025-03-15 12:45:00'),
('900014', '100014', '200006', 4, '2025-03-20 08:30:00', 'Knee Arthroscopy', 'scheduled', '2025-03-20 08:30:00', '2025-03-20 10:00:00'),
('900015', '100015', '200010', 5, '2025-03-25 11:00:00', 'Appendectomy', 'scheduled', '2025-03-25 11:00:00', '2025-03-25 13:00:00'),
('900021', '100010', '200006', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), 'Appendectomy', 'completed', DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY) + INTERVAL 8 HOUR, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY) + INTERVAL 10 HOUR),
('900022', '100011', '200006', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY), 'Gallbladder Removal', 'completed', DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY) + INTERVAL 9 HOUR, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY) + INTERVAL 12 HOUR),
('900023', '100012', '200010', 4, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), 'Hernia Repair', 'completed', DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY) + INTERVAL 8 HOUR, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY) + INTERVAL 10 HOUR);


-- DOCTOR_ASSIGNMENT data
INSERT INTO DOCTOR_ASSIGNMENT (doctor_id, branch_id, assignment_date) VALUES
('200001', 1, DATE_SUB(CURRENT_DATE(), INTERVAL 180 DAY)),
('200001', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 150 DAY)),
('200001', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 120 DAY)),
('200002', 1, DATE_SUB(CURRENT_DATE(), INTERVAL 170 DAY)),
('200002', 4, DATE_SUB(CURRENT_DATE(), INTERVAL 140 DAY)),
('200003', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 160 DAY)),
('200003', 5, DATE_SUB(CURRENT_DATE(), INTERVAL 130 DAY)),
('200004', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 150 DAY)),
('200004', 6, DATE_SUB(CURRENT_DATE(), INTERVAL 120 DAY));

-- EQUIPMENT data
INSERT INTO EQUIPMENT (equipment_id, equipment_name, equipment_type, notes, availability) VALUES
('500001', 'Heart Monitor', 'Monitoring', 'For cardiac monitoring', TRUE),
('500002', 'Surgical Kit A', 'Surgery', 'Basic surgical tools', TRUE),
('500003', 'MRI Machine', 'Imaging', 'Magnetic resonance imaging', TRUE),
('500004', 'X-Ray Machine', 'Imaging', 'Radiographic imaging', TRUE),
('500005', 'Ventilator', 'Respiratory', 'Breathing assistance', TRUE),
('500006', 'Defibrillator', 'Emergency', 'Cardiac emergency equipment', TRUE),
('500007', 'Ultrasound Machine', 'Imaging', 'Ultrasonic imaging', TRUE),
('500008', 'Anesthesia Machine', 'Surgery', 'For administering anesthesia', TRUE),
('500009', 'Patient Monitor', 'Monitoring', 'Vital signs monitoring', TRUE),
('500010', 'Endoscope', 'Surgery', 'For minimally invasive procedures', TRUE),
('500011', 'Surgical Robot', 'Surgery', 'For robotic-assisted surgery', TRUE),
('500012', 'CT Scanner', 'Imaging', 'Computed tomography scanning', TRUE),
('500013', 'Infusion Pump', 'Medication', 'For IV fluid delivery', TRUE),
('500014', 'Dialysis Machine', 'Treatment', 'For kidney function replacement', TRUE),
('500015', 'EKG Machine', 'Diagnostic', 'For heart electrical activity', TRUE);
-- SURGERY_EQUIPMENT data
INSERT INTO SURGERY_EQUIPMENT (surgery_id, equipment_id) VALUES
('900001', '500001'),
('900001', '500002'),
('900001', '500005'),
('900001', '500006'),
('900001', '500008'),
('900001', '500009'),
('900002', '500002'),
('900002', '500008'),
('900002', '500009'),
('900002', '500010'),
('900003', '500002'),
('900003', '500008'),
('900003', '500009'),
('900004', '500002'),
('900004', '500008'),
('900004', '500009'),
('900005', '500002'),
('900005', '500007'),
('900005', '500008'),
('900005', '500009'),
('900006', '500002'),
('900006', '500008'),
('900006', '500009'),
('900006', '500010'),
('900007', '500002'),
('900007', '500008'),
('900007', '500009'),
('900008', '500002'),
('900008', '500008'),
('900008', '500009'),
('900008', '500010'),
('900009', '500002'),
('900009', '500008'),
('900009', '500009'),
('900010', '500002'),
('900010', '500008'),
('900010', '500009'),
('900011', '500002'),
('900011', '500008'),
('900011', '500009'),
('900012', '500002'),
('900012', '500008');

-- LAB_TECHNICIAN data
INSERT INTO LAB_TECHNICIAN (technician_id, first_name, last_name, phone_number, department_id, branch_id) VALUES
('400001', 'Laura', 'Hill', '333-444-5555', 1, 1),
('400002', 'James', 'Lee', '444-555-6666', 2, 1),
('400003', 'Sophia', 'Garcia', '555-666-7777', 3, 2),
('400004', 'William', 'Chen', '666-777-8888', 4, 2),
('400005', 'Olivia', 'Smith', '777-888-9999', 5, 3),
('400006', 'Benjamin', 'Johnson', '888-999-0000', 6, 3),
('400007', 'Emma', 'Brown', '999-000-1111', 7, 4),
('400008', 'Alexander', 'Davis', '000-111-2222', 8, 5),
('400009', 'Charlotte', 'Wilson', '111-222-3333', 9, 6),
('400010', 'Daniel', 'Martinez', '222-333-4444', 10, 7),
('400011', 'Mia', 'Anderson', '333-444-5556', 11, 8),
('400012', 'Jacob', 'Taylor', '444-555-6667', 12, 9),
('400013', 'Emily', 'Thomas', '555-666-7778', 13, 10),
('400014', 'Michael', 'Hernandez', '666-777-8889', 14, 1),
('400015', 'Ava', 'Moore', '777-888-9990', 15, 2);

-- TEST data
INSERT INTO TEST (lab_id, technician_id, test_id, lab_test_date) VALUES
('700017', '400001', '600011', DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY)), -- MRI Scan
('700018', '400001', '600012', DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY)), -- CT Scan
('700019', '400001', '600013', DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY)), -- PET Scan
('700020', '400001', '600014', DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY)), -- Colonoscopy
('700021', '400001', '600015', DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY)), -- Endoscopy
('700022', '400001', '600016', DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY)), -- Echocardiogram
('700023', '400001', '600017', DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY)), -- Stress Test
('700024', '400001', '600018', DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY)), -- Bone Density Scan
('700025', '400001', '600019', DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY)), -- Mammogram
('700026', '400001', '600020', DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY)), -- Biopsy
('700027', '400001', '600011', DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY)); -- Another MRI Scan

-- LAB data
INSERT INTO LAB (lab_id, patient_id, doctor_id, technician_id, equipment, lab_test_date, notes) VALUES
('700001', '100001', '200001', '400001', '600011', '2025-01-05', 'Pre-surgery blood work'),
('700002', '100001', '200001', '400001', '600012', '2025-01-10', 'Cardiac evaluation'),
('700003', '100002', '200002', '400002', '600013', '2025-01-15', 'Annual checkup'),
('700004', '100003', '200003', '400003', '600014', '2025-01-20', 'Follow-up for medication'),
('700005', '100004', '200004', '400004', '600015', '2025-01-25', 'Pre-surgical assessment'),
('700006', '100005', '200005', '400005', '600016', '2025-02-01', 'Tumor assessment'),
('700007', '100006', '200006', '400006', '600017', '2025-02-05', 'Diabetes monitoring'),
('700008', '100007', '200007', '400007', '600018', '2025-02-10', 'Osteoporosis assessment'),
('700009', '100008', '200008', '400008', '600019', '2025-02-15', 'Thyroid function monitoring'),
('700010', '100009', '200009', '400009', '600020', '2025-02-20', 'Routine check'),
('700011', '100010', '200010', '400010', '600011', '2025-02-25', 'Back pain assessment'),
('700012', '100011', '200011', '400011', '600012', '2025-03-01', 'Heart function evaluation'),
('700013', '100012', '200012', '400012', '600013', '2025-03-05', 'Routine screening'),
('700014', '100013', '200013', '400013', '600014', '2025-03-10', 'Pre-surgery evaluation'),
('700015', '100014', '200014', '400014', '600015', '2025-03-15', 'Knee injury assessment'),
('700016', '100015', '200015', '400015', '600016', '2025-03-20', 'Pre-surgery blood work');

-- TELEHEALTH_SESSION data
INSERT INTO TELEHEALTH_SESSION (telehealth_id, patient_id, doctor_id, nurse_id, prescription_id, surgery_id, start_time, end_time, doctor_notes, nurse_notes) VALUES
('800001', '100001', '200003', '300001', 1, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY) + INTERVAL 30 MINUTE, 'Initial consultation', 'Patient reported symptoms'),
('800002', '100002', '200003', '300002', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 28 DAY) + INTERVAL 30 MINUTE, 'Follow-up appointment', 'Vital signs recorded'),
('800003', '100003', '200003', '300003', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 26 DAY) + INTERVAL 30 MINUTE, 'General checkup', 'No concerns noted'),
('800004', '100004', '200003', '300004', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 24 DAY) + INTERVAL 30 MINUTE, 'Medication review', 'Discussed side effects'),
('800005', '100005', '200003', '300005', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 22 DAY) + INTERVAL 30 MINUTE, 'Post-surgery follow-up', 'Healing well'),
('800006', '100006', '200003', '300006', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 20 DAY) + INTERVAL 30 MINUTE, 'Pain management', 'Pain levels decreased'),
('800007', '100007', '200003', '300007', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 18 DAY) + INTERVAL 30 MINUTE, 'Lab results review', 'Results within normal range'),
('800008', '100008', '200003', '300008', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 16 DAY) + INTERVAL 30 MINUTE, 'Referral consultation', 'Referred to specialist'),
('800009', '100009', '200003', '300009', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 14 DAY) + INTERVAL 30 MINUTE, 'Annual physical', 'Overall good health'),
('800010', '100010', '200003', '300010', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 12 DAY) + INTERVAL 30 MINUTE, 'Treatment plan review', 'Adjustments made to plan'),
('800011', '100011', '200003', '300011', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY) + INTERVAL 30 MINUTE, 'Emergency consultation', 'Urgent care advised'),
('800012', '100012', '200003', '300012', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 8 DAY) + INTERVAL 30 MINUTE, 'Mental health check', 'Progress noted'),
('800013', '100013', '200003', '300013', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 6 DAY) + INTERVAL 30 MINUTE, 'Chronic condition monitoring', 'Stable condition'),
('800014', '100014', '200003', '300014', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 4 DAY) + INTERVAL 30 MINUTE, 'Preventive care', 'Vaccination administered'),
('800015', '100015', '200003', '300015', NULL, NULL, DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY), DATE_SUB(CURRENT_DATE(), INTERVAL 2 DAY) + INTERVAL 30 MINUTE, 'Specialist consultation', 'Second opinion provided');

-- FEEDBACK data
INSERT INTO FEEDBACK (feedback_id, patient_id, doctor_id, telehealth_id, number_stars, feedback_date) VALUES
('850001', '100001', '200003', '800001', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 29 DAY)),
('850002', '100002', '200003', '800002', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 27 DAY)),
('850003', '100003', '200003', '800003', 4, DATE_SUB(CURRENT_DATE(), INTERVAL 25 DAY)),
('850004', '100004', '200003', '800004', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 23 DAY)),
('850005', '100005', '200003', '800005', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 21 DAY)),
('850006', '100006', '200003', '800006', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 19 DAY)),
('850007', '100007', '200003', '800007', 4, DATE_SUB(CURRENT_DATE(), INTERVAL 17 DAY)),
('850008', '100008', '200003', '800008', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 15 DAY)),
('850009', '100009', '200003', '800009', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 13 DAY)),
('850010', '100010', '200003', '800010', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 11 DAY)),
('850011', '100011', '200003', '800011', 4, DATE_SUB(CURRENT_DATE(), INTERVAL 9 DAY));

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
-- APPOINTMENT data
INSERT INTO APPOINTMENT (appointment_id, patient_id, doctor_id, nurse_id, department_id, appointment_date, reason, appointment_status, doctor_notes, nurse_notes) VALUES
('950001', '100001', '200001', '300001', 1, DATE_SUB(CURRENT_DATE(), INTERVAL 160 DAY), 'Heart condition checkup', 'completed', 'Patient shows improvement', 'Vital signs normal'),
('950002', '100002', '200001', '300001', 8, DATE_SUB(CURRENT_DATE(), INTERVAL 100 DAY), 'Annual checkup', 'completed', 'All tests normal', 'Patient in good health'),
('950003', '100003', '200002', '300002', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 150 DAY), 'Pediatric evaluation', 'completed', 'Growth on track', 'Development normal'),
('950004', '100004', '200002', '300002', 9, DATE_SUB(CURRENT_DATE(), INTERVAL 80 DAY), 'Follow-up appointment', 'completed', 'Recovery progressing well', 'No concerns noted'),
('950005', '100005', '200003', '300003', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 170 DAY), 'Emergency visit', 'completed', 'Treated for acute pain', 'Pain managed successfully'),
('950006', '100006', '200003', '300003', 10, DATE_SUB(CURRENT_DATE(), INTERVAL 50 DAY), 'Pre-surgery consultation', 'completed', 'Surgery scheduled', 'Pre-op instructions given'),
('950007', '100001', '200001', '300001', 1, DATE_SUB(CURRENT_DATE(), INTERVAL 145 DAY), 'Medication review', 'completed', 'Medication adjusted', 'New prescription given'),
('950008', '100002', '200001', '300001', 8, DATE_SUB(CURRENT_DATE(), INTERVAL 85 DAY), 'X-ray follow-up', 'completed', 'X-ray shows improvement', 'Continue current treatment'),
('950009', '100003', '200002', '300002', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 135 DAY), 'Vaccination appointment', 'completed', 'Vaccines administered', 'No adverse reactions'),
('950010', '100004', '200002', '300002', 9, DATE_SUB(CURRENT_DATE(), INTERVAL 65 DAY), 'Chronic condition check', 'completed', 'Condition stable', 'Continue monitoring'),
('950011', '100005', '200003', '300003', 3, DATE_SUB(CURRENT_DATE(), INTERVAL 155 DAY), 'Injury assessment', 'completed', 'Minor sprain diagnosed', 'Rest and ice recommended'),
('950012', '100006', '200003', '300003', 10, DATE_SUB(CURRENT_DATE(), INTERVAL 35 DAY), 'Post-op check', 'completed', 'Healing properly', 'Sutures removed'),
('950013', '100001', '200001', '300001', 1, DATE_SUB(CURRENT_DATE(), INTERVAL 5 DAY), 'Cardiology follow-up', 'completed', 'Heart function improved', 'EKG performed'),
('950014', '100002', '200001', '300001', 8, DATE_SUB(CURRENT_DATE(), INTERVAL 3 DAY), 'Test results review', 'completed', 'All results normal', 'No further action needed'),
('950015', '100003', '200002', '300002', 2, DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY), 'Growth check', 'completed', 'Growth percentile normal', 'Development on track'),
('950016', '100001', '200004', '300004', 4, DATE_SUB(CURRENT_DATE(), INTERVAL 159 DAY), 'Neurology consultation', 'completed', 'No neurological issues', 'Follow-up in 6 months'),
('950017', '100001', '200005', '300005', 5, DATE_SUB(CURRENT_DATE(), INTERVAL 158 DAY), 'Cancer screening', 'completed', 'No signs of malignancy', 'Routine screening advised'),
('950018', '100001', '200006', '300006', 6, DATE_SUB(CURRENT_DATE(), INTERVAL 157 DAY), 'Joint pain assessment', 'completed', 'Mild arthritis diagnosed', 'Physical therapy recommended'),
('950019', '100001', '200007', '300007', 7, DATE_SUB(CURRENT_DATE(), INTERVAL 156 DAY), 'Skin condition check', 'completed', 'Eczema treated', 'Topical medication prescribed'),
('950020', '100001', '200008', '300008', 8, DATE_SUB(CURRENT_DATE(), INTERVAL 155 DAY), 'Imaging follow-up', 'completed', 'Imaging shows improvement', 'No further imaging needed'),
('950021', '100001', '200009', '300009', 9, DATE_SUB(CURRENT_DATE(), INTERVAL 154 DAY), 'Routine physical', 'completed', 'Overall health good', 'All vitals normal'),
('950022', '100001', '200010', '300010', 10, DATE_SUB(CURRENT_DATE(), INTERVAL 153 DAY), 'Pre-surgical clearance', 'completed', 'Cleared for surgery', 'All pre-op tests completed');
