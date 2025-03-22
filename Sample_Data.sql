-- E-Healthcare Management System Sample Data
-- Sample data for the database tables

USE healthcare_management;

-- Sample data for HOSPITAL_BRANCH
INSERT INTO HOSPITAL_BRANCH (branch_name, address, city, state, zip_code, phone_number, email, established_date) VALUES
('Main Medical Center', '123 Healthcare Ave', 'New York', 'NY', '10001', '212-555-1000', 'info@mainmedical.org', '2000-01-15'),
('Westside Hospital', '456 Medical Blvd', 'Los Angeles', 'CA', '90001', '310-555-2000', 'contact@westsidehospital.org', '2005-06-22'),
('Northview Clinic', '789 Wellness Dr', 'Chicago', 'IL', '60007', '312-555-3000', 'patients@northviewclinic.org', '2010-03-10'),
('Eastside Medical', '321 Health St', 'Miami', 'FL', '33101', '305-555-4000', 'care@eastsidemedical.org', '2008-11-05'),
('Central Hospital', '555 Central Ave', 'Dallas', 'TX', '75001', '214-555-5000', 'info@centralhospital.org', '2003-09-18'),
('Riverside Medical Center', '777 River Rd', 'Seattle', 'WA', '98101', '206-555-6000', 'contact@riversidemedical.org', '2015-07-30'),
('Southside Health Complex', '888 South Blvd', 'Atlanta', 'GA', '30301', '404-555-7000', 'info@southsidehealth.org', '2012-04-25'),
('Mountain View Hospital', '999 Mountain Way', 'Denver', 'CO', '80201', '303-555-8000', 'care@mountainviewhospital.org', '2007-08-12'),
('Harbor Medical Center', '111 Harbor Dr', 'Boston', 'MA', '02101', '617-555-9000', 'patients@harbormedical.org', '2001-12-05'),
('Valley Community Hospital', '222 Valley Pkwy', 'Phoenix', 'AZ', '85001', '602-555-1100', 'community@valleyhospital.org', '2018-02-14');

-- Sample data for DEPARTMENT
INSERT INTO DEPARTMENT (branch_id, department_name, description) VALUES
(1, 'Emergency', 'Emergency medical services available 24/7'),
(1, 'Cardiology', 'Heart disease diagnosis and treatment'),
(1, 'Orthopedics', 'Bone and joint care specialists'),
(1, 'Neurology', 'Diagnosis and treatment of nervous system disorders'),
(1, 'Pediatrics', 'Medical care for infants, children, and adolescents'),
(2, 'Emergency', 'Emergency medical services available 24/7'),
(2, 'Oncology', 'Cancer diagnosis and treatment'),
(2, 'Obstetrics & Gynecology', 'Women\'s health and pregnancy care'),
(2, 'Gastroenterology', 'Digestive system diagnosis and treatment'),
(3, 'Emergency', 'Emergency medical services available 24/7'),
(3, 'Psychiatry', 'Mental health diagnosis and treatment'),
(3, 'Dermatology', 'Skin, hair, and nail diagnosis and treatment'),
(4, 'Emergency', 'Emergency medical services available 24/7'),
(4, 'Radiology', 'Medical imaging and diagnostics');

-- Sample data for ROOM
INSERT INTO ROOM (branch_id, department_id, room_number, room_type, capacity, is_occupied, is_available) VALUES
(1, 1, 'E101', 'Emergency', 2, FALSE, TRUE),
(1, 1, 'E102', 'Emergency', 2, TRUE, TRUE),
(1, 2, 'C201', 'Patient', 1, FALSE, TRUE),
(1, 2, 'C202', 'Examination', 1, FALSE, TRUE),
(1, 3, 'O301', 'Operating', 1, FALSE, TRUE),
(1, 4, 'N401', 'Patient', 2, TRUE, TRUE),
(1, 5, 'P501', 'Patient', 4, TRUE, TRUE),
(2, 6, 'E101', 'Emergency', 3, FALSE, TRUE),
(2, 7, 'OC201', 'Patient', 1, FALSE, TRUE),
(2, 8, 'OG301', 'Operating', 1, FALSE, TRUE);

-- Sample data for BED
INSERT INTO BED (room_id, bed_number, bed_type, is_occupied, is_available) VALUES
(1, 'E101-1', 'Standard', FALSE, TRUE),
(1, 'E101-2', 'Standard', FALSE, TRUE),
(2, 'E102-1', 'ICU', TRUE, TRUE),
(2, 'E102-2', 'ICU', FALSE, TRUE),
(3, 'C201-1', 'Electric', FALSE, TRUE),
(4, 'C202-1', 'Standard', FALSE, TRUE),
(5, 'O301-1', 'Electric', FALSE, TRUE),
(6, 'N401-1', 'Electric', TRUE, TRUE),
(6, 'N401-2', 'Standard', FALSE, TRUE),
(7, 'P501-1', 'Pediatric', TRUE, TRUE),
(7, 'P501-2', 'Pediatric', TRUE, TRUE),
(7, 'P501-3', 'Pediatric', FALSE, TRUE),
(7, 'P501-4', 'Pediatric', FALSE, TRUE),
(8, 'E101-1', 'Standard', FALSE, TRUE),
(8, 'E101-2', 'Standard', FALSE, TRUE),
(8, 'E101-3', 'ICU', FALSE, TRUE),
(9, 'OC201-1', 'Electric', FALSE, TRUE),
(10, 'OG301-1', 'Electric', FALSE, TRUE);

-- Sample data for PATIENT
INSERT INTO PATIENT (first_name, last_name, date_of_birth, gender, blood_type, address, city, state, zip_code, phone_number, email, emergency_contact_name, emergency_contact_phone, emergency_contact_relationship, registration_date) VALUES
('John', 'Smith', '1980-05-15', 'Male', 'O+', '123 Main St', 'New York', 'NY', '10001', '212-555-1234', 'john.smith@email.com', 'Jane Smith', '212-555-5678', 'Spouse', '2022-01-10'),
('Mary', 'Johnson', '1975-08-22', 'Female', 'A-', '456 Oak Ave', 'Los Angeles', 'CA', '90001', '310-555-2345', 'mary.johnson@email.com', 'Robert Johnson', '310-555-6789', 'Spouse', '2022-02-15'),
('Robert', 'Williams', '1990-11-30', 'Male', 'B+', '789 Pine St', 'Chicago', 'IL', '60007', '312-555-3456', 'robert.williams@email.com', 'Sarah Williams', '312-555-7890', 'Spouse', '2022-03-20'),
('Patricia', 'Brown', '1985-04-12', 'Female', 'AB-', '321 Elm St', 'Miami', 'FL', '33101', '305-555-4567', 'patricia.brown@email.com', 'Michael Brown', '305-555-8901', 'Spouse', '2022-04-25'),
('James', 'Jones', '1970-07-05', 'Male', 'A+', '555 Maple Ave', 'Dallas', 'TX', '75001', '214-555-5678', 'james.jones@email.com', 'Linda Jones', '214-555-9012', 'Spouse', '2022-05-30'),
('Jennifer', 'Miller', '1995-02-18', 'Female', 'O-', '777 Cedar Rd', 'Seattle', 'WA', '98101', '206-555-6789', 'jennifer.miller@email.com', 'David Miller', '206-555-0123', 'Father', '2022-06-05'),
('Michael', 'Davis', '1965-09-08', 'Male', 'B-', '888 Birch Blvd', 'Atlanta', 'GA', '30301', '404-555-7890', 'michael.davis@email.com', 'Susan Davis', '404-555-1234', 'Spouse', '2022-07-10'),
('Elizabeth', 'Garcia', '1988-12-25', 'Female', 'AB+', '999 Spruce Way', 'Denver', 'CO', '80201', '303-555-8901', 'elizabeth.garcia@email.com', 'Carlos Garcia', '303-555-2345', 'Spouse', '2022-08-15'),
('William', 'Rodriguez', '1983-03-14', 'Male', 'O+', '111 Willow Dr', 'Boston', 'MA', '02101', '617-555-9012', 'william.rodriguez@email.com', 'Maria Rodriguez', '617-555-3456', 'Spouse', '2022-09-20'),
('Linda', 'Martinez', '1978-06-27', 'Female', 'A+', '222 Ash Pkwy', 'Phoenix', 'AZ', '85001', '602-555-0123', 'linda.martinez@email.com', 'Jose Martinez', '602-555-4567', 'Spouse', '2022-10-25');
