
-- Create database
CREATE DATABASE IF NOT EXISTS HEALTHCARE_SYSTEM;
USE HEALTHCARE_SYSTEM;

-- HOSPITAL_BRANCH table
CREATE TABLE IF NOT EXISTS HOSPITAL_BRANCH (
    branch_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    branch_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    branch_street VARCHAR(255) NOT NULL,
	city_id INT NOT NULL,
    state_id INT NOT NULL,
    branch_zipcode INT NOT NULL
);

CREATE TABLE IF NOT EXISTS CITY (
	city_id INT PRIMARY KEY AUTO_INCREMENT,
    city_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS STATE (
	state_id INT PRIMARY KEY AUTO_INCREMENT,
    state_name VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS DEPARTMENT (
    department_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    department_name VARCHAR(100) NOT NULL,
    branch_id INT, -- FK
    FOREIGN KEY (branch_id) REFERENCES HOSPITAL_BRANCH(branch_id)
);

CREATE TABLE IF NOT EXISTS PATIENT (
    patient_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    street VARCHAR(255) NOT NULL,
	zipcode INT NOT NULL,
    city_id INT NOT NULL,
    state_id INT NOT NULL,
);


CREATE TABLE IF NOT EXISTS SPECIALTY (
    specialty_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    specialty_name VARCHAR(100) NOT NULL,
    specialty_notes VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS DOCTOR (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    department_id INT NOT NULL, -- FK
    specialty_id INT NOT NULL, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id),
    FOREIGN KEY (specialty_id)  REFERENCES SPECIALTY(specialty_id)
);

CREATE TABLE IF NOT EXISTS DOCTOR_SPECIALTY (
	PRIMARY KEY (doctor_id, specialty_id),
    doctor_id INT, -- FK
    specialty_id INT, -- FK
	FOREIGN KEY (doctor_id) REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (specialty_id)  REFERENCES SPECIALTY(specialty_id)
);

CREATE TABLE IF NOT EXISTS ROOM (
    room_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    room_name VARCHAR(50) NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    department_id INT NOT NULL, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE IF NOT EXISTS BED (
    bed_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    bed_number VARCHAR(20) NOT NULL,
    room_id INT NOT NULL, -- FK
    patient_id INT, -- FK
    FOREIGN KEY (room_id)    REFERENCES ROOM(room_id),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id)
);

CREATE TABLE IF NOT EXISTS APPOINTMENT (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    doctor_id  INT NOT NULL, -- FK
    nurse_id INT, -- FK
    prescription_id INT, -- FK
    surgery_id INT, -- FK
    appointment_date DATETIME NOT NULL,
    reason VARCHAR(255),
    appointment_status ENUM ('booked', 'completed', 'cancelled', 'no_show', 'rescheduled') NOT NULL DEFAULT 'booked',
    doctor_notes VARCHAR(255),
    nurse_notes VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (nurse_id)  REFERENCES NURSE(nurse_id)
);

CREATE TABLE IF NOT EXISTS NURSE (
    nurse_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    department_id INT NOT NULL, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE IF NOT EXISTS DOCTOR_NURSE (
    doctor_id INT, -- FK
    nurse_id INT, -- FK
    PRIMARY KEY (doctor_id, nurse_id),
    FOREIGN KEY (doctor_id) REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (nurse_id)  REFERENCES NURSE(nurse_id)
);

CREATE TABLE IF NOT EXISTS INSURANCE (
	insurance_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    provider_name VARCHAR(100) NOT NULL,
    plan_name VARCHAR(100) NOT NULL,
    coverage_amount DECIMAL(10,2) NOT NULL,
    coverage_type VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    contact_number VARCHAR(20),
    policy_number VARCHAR(50) NOT NULL,
    copay_amount DECIMAL(10,2),
    deductible DECIMAL(10,2),
    pre_approval_required BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS PATIENT_INSURANCE (
    patient_id INT, -- FK
    insurance_id INT, -- FK
    PRIMARY KEY (patient_id, insurance_id),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (insurance_id) REFERENCES INSURANCE(insurance_id)
);

CREATE TABLE IF NOT EXISTS BILL (
    bill_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    insurance_id INT NOT NULL, -- FK
    amount_owed DECIMAL(10,2) NOT NULL,
    total_bill DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (insurance_id) REFERENCES INSURANCE(insurance_id)
);

CREATE TABLE IF NOT EXISTS PAYMENT (
    payment_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    bill_id INT, -- FK
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (bill_id) REFERENCES BILL(bill_id)
);

CREATE TABLE IF NOT EXISTS PRESCRIPTION ( -- Associative entity for PATIENT and MEDICATION
    prescription_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    medication_id INT NOT NULL, -- FK
    doctor_id INT NOT NULL, -- FK
    dosage FLOAT NOT NULL,
    dosage_unit VARCHAR(20) NOT NULL,
    frequency VARCHAR(20) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    refill_total INT,
    refills_used INT,
    refill_date DATE,
    refills_allowed BOOLEAN NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (medication_id) REFERENCES MEDICATION(medication_id)
);


CREATE TABLE IF NOT EXISTS MEDICATION (
	medication_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    medication_name VARCHAR(100) NOT NULL,
    medication_type VARCHAR(50) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    inventory_id INT NOT NULL, -- FK
    FOREIGN KEY (inventory_id) REFERENCES INVENTORY(inventory_id)
);

CREATE TABLE IF NOT EXISTS SURGERY (
    surgery_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    doctor_id INT NOT NULL, -- FK
    bed_id INT NOT NULL, -- FK
    surgery_date DATETIME NOT NULL,
    surgery_type VARCHAR(100) NOT NULL,
    surgery_status ENUM('scheduled', 'in_progress', 'completed', 'cancelled', 'no_show', 'rescheduled') NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (bed_id) REFERENCES BED(bed_id)
);

CREATE TABLE IF NOT EXISTS DOCTOR_ASSIGNMENT (
	doctor_assignment_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    doctor_id INT NOT NULL, -- FK
    surgery_id INT NOT NULL, -- FK
    date DATE, 
    time TIME, 
    notes VARCHAR(255)
);
    
    

CREATE TABLE IF NOT EXISTS EQUIPMENT (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    equipment_name VARCHAR(100) NOT NULL,
    equipment_type VARCHAR(50) NOT NULL,
    notes VARCHAR(255),
    availability BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS SURGERY_EQUIPMENT (
    surgery_id INT, -- FK
    equipment_id INT, -- FK
    PRIMARY KEY (surgery_id, equipment_id),
    FOREIGN KEY (surgery_id)   REFERENCES SURGERY(surgery_id),
    FOREIGN KEY (equipment_id) REFERENCES EQUIPMENT(equipment_id)
);

CREATE TABLE IF NOT EXISTS LAB (
    lab_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    doctor_id INT NOT NULL, -- FK
    technician_id INT NOT NULL, -- FK
    lab_test_date DATE NOT NULL,
    notes VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES DOCTOR(doctor_id),
	FOREIGN KEY (technician_id) REFERENCES LAB_TECHNICIAN(technician_id)
);

CREATE TABLE IF NOT EXISTS TEST (
	test_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    test_name VARCHAR(100), 
    is_specialized BOOLEAN 
);
    

CREATE TABLE IF NOT EXISTS LAB_TECHNICIAN (
    technician_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    department_id INT NOT NULL, -- FK
    branch_id INT NOT NULL, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id),
    FOREIGN KEY (branch_id)     REFERENCES HOSPITAL_BRANCH(branch_id)
);

CREATE TABLE IF NOT EXISTS TELEHEALTH_SESSION (
    telehealth_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    doctor_id INT NOT NULL, -- FK
    nurse_id INT NOT NULL, -- FK
    prescription_id INT, -- FK
	surgery_id INT, -- FK
    start_time DATETIME,
    end_time DATETIME,
    doctor_notes VARCHAR(255),
    nurse_notes VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (nurse_id)   REFERENCES NURSE(nurse_id)
);

CREATE TABLE IF NOT EXISTS FEEDBACK (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    number_stars INT NOT NULL,
    feedback_date DATE NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id)
);
-- -------------------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS EMERGENCY_CONTACT (
	contact_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    relationship VARCHAR(20),
    phone_number VARCHAR(20),
    email VARCHAR(254)
);

CREATE TABLE IF NOT EXISTS INVENTORY (
	item_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_id INT NOT NULL, -- FK
    item_name VARCHAR(100),
    item_type VARCHAR(100),
    notes VARCHAR(255),
    amount_in_inventory INT,
    FOREIGN KEY (supplier_id) REFERENCES SUPPLIER(supplier_id)
);

CREATE TABLE IF NOT EXISTS SUPPLIER (
	supplier_id INT PRIMARY KEY AUTO_INCREMENT, 
    supplier_name VARCHAR(100),
    phone_number VARCHAR(20),
    street VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(2),
    zipcode INT(5),
    product_discription VARCHAR(255),
    email VARCHAR(254)
);

CREATE TABLE IF NOT EXISTS ALLERGIC_REACTION (
	allergic_reaction_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT, -- FK
    medication_id INT, -- FK
    reaction_date DATE,
    symptoms VARCHAR(255),
    notes VARCHAR(255),
	FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
	FOREIGN KEY (medication_id) REFERENCES MEDICATION(medication_id)
);

CREATE TABLE IF NOT EXISTS MEDICAL_HISTORY (
	history_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL, -- FK
    illness_id INT NOT NULL, -- FK
    diagnosis_date DATE,
    notes VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
	FOREIGN KEY (illness_id) REFERENCES ILLNESS(illness_id)
);

CREATE TABLE IF NOT EXISTS ILLNESS (
	illness_id INT PRIMARY KEY AUTO_INCREMENT,
    illness_name VARCHAR(100)
);    

CREATE TABLE IF NOT EXISTS CITY (
	city_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    city_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS STATE (
	state_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    state_name VARCHAR(50)
);
-- ____________________________________________________________________________________________________________________________________________
-- SQL QUERIES 
-- 1. Patient-Doctor Relationship 
SELECT 
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    GROUP_CONCAT(DISTINCT CONCAT(d.first_name, ' ', d.last_name) SEPARATOR ', ') AS doctor_names,
    COUNT(a.appointment_id) AS total_appointments
FROM 
    PATIENT p
JOIN 
    APPOINTMENT a ON p.patient_id = a.patient_id
JOIN 
    DOCTOR d ON a.doctor_id = d.doctor_id
WHERE 
    a.appointment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
    AND a.appointment_status = 'completed'
GROUP BY 
    p.patient_id
HAVING 
    COUNT(DISTINCT a.doctor_id) > 1;
-- ____________________________________________________________________________________________________________________________________________
-- 2. Equipment Utilization 
SELECT 
    e.name AS equipment_name,
    COUNT(se.surgery_id) AS times_used
FROM 
    EQUIPMENT e
JOIN 
    SURGERY_EQUIPMENT se ON e.equipment_id = se.equipment_id
JOIN 
    SURGERY s ON se.surgery_id = s.surgery_id
WHERE 
    YEAR(s.surgery_date) = YEAR(CURRENT_DATE())
GROUP BY 
    e.equipment_id
HAVING 
    COUNT(se.surgery_id) > 5;
-- ____________________________________________________________________________________________________________________________________________
-- 3. Insurance Coverage
SELECT 
    p.first_name,
    p.last_name,
    i.provider_name,
    i.plan_name,
    SUM(py.payment_amount) AS out_of_pocket_payments
FROM 
    PATIENT p
JOIN 
    PATIENT_INSURANCE pi ON p.patient_id = pi.patient_id
JOIN 
    INSURANCE i ON pi.insurance_id = i.insurance_id
JOIN 
    BILL b ON p.patient_id = b.patient_id AND i.insurance_id = b.insurance_id
JOIN 
    PAYMENT py ON b.bill_id = py.bill_id
WHERE 
    py.payment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR)
    AND py.payment_method = 'out_of_pocket'
GROUP BY 
    p.patient_id, i.insurance_id
HAVING 
    SUM(py.payment_amount) > 500;
-- ____________________________________________________________________________________________________________________________________________
-- 4. Telehealth Analysis     
SELECT 
    d.first_name,
    d.last_name,
    COUNT(t.telethealth_id) AS telehealth_sessions,
    AVG(f.number_stars) AS average_rating
FROM 
    DOCTOR d
JOIN 
    TELEHEALTH_SESSION t ON d.doctor_id = t.doctor_id
LEFT JOIN 
    FEEDBACK f ON t.patient_id = f.patient_id
WHERE 
    t.start_time >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
GROUP BY 
    d.doctor_id
HAVING 
    COUNT(t.telethealth_id) > 10
    AND AVG(f.number_stars) < 4;
-- ____________________________________________________________________________________________________________________________________________
-- 5. Inventory Reorder
SELECT 
    m.medication_name,
    i.amount_in_inventory AS current_stock
FROM 
    MEDICATION m
JOIN 
    INVENTORY i ON m.inventory_id = i.item_id
LEFT JOIN 
    (SELECT DISTINCT medication_id FROM PRESCRIPTION WHERE refills_allowed = TRUE) p 
    ON m.medication_id = p.medication_id
WHERE 
    i.amount_in_inventory < 10
    AND p.medication_id IS NULL;
-- ____________________________________________________________________________________________________________________________________________
 -- 6. Mulit-Branch Doctors 
 SELECT 
    d.first_name,
    d.last_name,
    GROUP_CONCAT(DISTINCT hb.branch_name SEPARATOR ', ') AS branches_worked_in
FROM 
    DOCTOR d
JOIN 
    DEPARTMENT dept ON d.department_id = dept.department_id
JOIN 
    HOSPITAL_BRANCH hb ON dept.branch_id = hb.branch_id
WHERE 
    EXISTS (
        SELECT 1 FROM APPOINTMENT a 
        WHERE a.doctor_id = d.doctor_id 
        AND a.appointment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
    )
GROUP BY 
    d.doctor_id
HAVING 
    COUNT(DISTINCT dept.branch_id) > 1;
-- ____________________________________________________________________________________________________________________________________________
-- 7. Patient Medical History 
SELECT 
    p.first_name,
    p.last_name,
    m.medication_name,
    ar.symptoms,
    ar.reaction_date
FROM 
    PATIENT p
JOIN 
    ALLERGIC_REACTION ar ON p.patient_id = ar.patient_id
JOIN 
    MEDICATION m ON ar.medication_id = m.medication_id
JOIN 
    PRESCRIPTION pr ON m.medication_id = pr.medication_id AND p.patient_id = pr.patient_id
WHERE 
    pr.doctor_id IN (SELECT doctor_id FROM DOCTOR);
-- ____________________________________________________________________________________________________________________________________________
-- 8. Billing Discrepancies 
SELECT 
    p.first_name,
    p.last_name,
    b.total_bill AS billed_amount,
    (SELECT SUM(s.service_price) 
     FROM APPOINTMENT a
     JOIN SERVICE s ON a.appointment_id = s.appointment_id
     WHERE a.patient_id = b.patient_id) AS calculated_sum,
    (b.total_bill - (SELECT SUM(s.service_price) 
                    FROM APPOINTMENT a
                    JOIN SERVICE s ON a.appointment_id = s.appointment_id
                    WHERE a.patient_id = b.patient_id)) AS discrepancy
FROM 
    BILL b
JOIN 
    PATIENT p ON b.patient_id = p.patient_id
HAVING 
    discrepancy != 0;
-- ___________________________________________________________________________________________________________________________________________ 
-- 9. Staff Workload 
SELECT 
    n.first_name,
    n.last_name,
    COUNT(DISTINCT s.surgery_id) AS surgeries_assisted,
    SUM(TIMESTAMPDIFF(HOUR, s.start_time, s.end_time)) AS total_hours_worked
FROM 
    NURSE n
JOIN 
    SURGERY s ON n.nurse_id = s.nurse_id
WHERE 
    s.surgery_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 WEEK)
GROUP BY 
    n.nurse_id
HAVING 
    SUM(TIMESTAMPDIFF(HOUR, s.start_time, s.end_time)) > 40;
-- _____________________________________________________________________________________________________________________
-- 10. Lab Test Specialization 
SELECT 
    lt.first_name,
    lt.last_name,
    COUNT(l.lab_id) AS specialized_tests_completed
FROM 
    LAB_TECHNICIAN lt
JOIN 
    LAB l ON lt.technician_id = l.technician_id
JOIN 
    TEST t ON l.test_id = t.test_id
WHERE 
    l.lab_test_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
    AND t.is_specialized = TRUE
GROUP BY 
    lt.technician_id
HAVING 
    COUNT(l.lab_id) > 10;
-- _____________________________________________________________________________________________________________________
-- 11.Pateint Follow-Up
SELECT 
    p.first_name,
    p.last_name,
    s.surgery_type,
    s.surgery_date
FROM 
    PATIENT p
JOIN 
    SURGERY s ON p.patient_id = s.patient_id
LEFT JOIN 
    APPOINTMENT a ON p.patient_id = a.patient_id 
    AND a.appointment_date > CURRENT_DATE()
    AND a.appointment_status = 'booked'
WHERE 
    s.surgery_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH)
    AND a.appointment_id IS NULL;
 -- _____________________________________________________________________________________________________________________
 -- 12. Patient Visit Frequency 
 SELECT 
    p.first_name,
    p.last_name,
    COUNT(a.appointment_id) AS visit_count,
    (SELECT d.department_name 
     FROM DEPARTMENT d
     JOIN APPOINTMENT a2 ON d.department_id = a2.department_id
     WHERE a2.patient_id = p.patient_id
     GROUP BY d.department_id
     ORDER BY COUNT(a2.appointment_id) DESC
     LIMIT 1) AS most_visited_department
FROM 
    PATIENT p
JOIN 
    APPOINTMENT a ON p.patient_id = a.patient_id
WHERE 
    a.appointment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
    AND a.appointment_status = 'completed'
GROUP BY 
    p.patient_id
HAVING 
    COUNT(a.appointment_id) > 5;
 -- _____________________________________________________________________________________________________________________