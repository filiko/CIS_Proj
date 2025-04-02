
-- Create database
CREATE DATABASE IF NOT EXISTS HEALTHCARE_SYSTEM;
USE HEALTHCARE_SYSTEM;

-- HOSPITAL_BRANCH table
CREATE TABLE HOSPITAL_BRANCH (
    branch_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    branch_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    branch_address VARCHAR(255)
);

CREATE TABLE DEPARTMENT (
    department_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    department_name VARCHAR(100) NOT NULL,
    branch_id INT, -- FK
    FOREIGN KEY (branch_id) REFERENCES HOSPITAL_BRANCH(branch_id)
);

CREATE TABLE PATIENT (
    patient_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE SPECIALTY (
    specialty_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    specialty_name VARCHAR(100) NOT NULL,
    specialty_description VARCHAR(255)
);

CREATE TABLE DOCTOR (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    department_id INT, -- FK
    specialty_id INT, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id),
    FOREIGN KEY (specialty_id)  REFERENCES SPECIALTY(specialty_id)
);

CREATE TABLE ROOM (
    room_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    room_name VARCHAR(50) NOT NULL,
    room_type VARCHAR(50),
    department_id INT, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE BED (
    bed_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    bed_number VARCHAR(20) NOT NULL,
    room_id INT NOT NULL, -- FK
    patient_id INT, -- FK
    FOREIGN KEY (room_id)    REFERENCES ROOM(room_id),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id)
);

CREATE TABLE APPOINTMENT (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT NOT NULL, -- FK
    doctor_id  INT NOT NULL, -- FK
    appointment_date DATETIME NOT NULL,
    reason VARCHAR(255),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id)
);

CREATE TABLE NURSE (
    nurse_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    department_id INT, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE DOCTOR_NURSE (
    doctor_id INT, -- FK
    nurse_id INT, -- FK
    PRIMARY KEY (doctor_id, nurse_id),
    FOREIGN KEY (doctor_id) REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (nurse_id)  REFERENCES NURSE(nurse_id)
);

CREATE TABLE INSURANCE (
    insurance_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    provider_name VARCHAR(100),
    coverage_amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE
);

CREATE TABLE PATIENT_INSURANCE (
    patient_id INT, -- FK
    insurance_id INT, -- FK
    PRIMARY KEY (patient_id, insurance_id),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (insurance_id) REFERENCES INSURANCE(insurance_id)
);

CREATE TABLE BILL (
    bill_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT, -- FK
    insurance_id INT, -- FK
    amount_owed DECIMAL(10,2),
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (insurance_id) REFERENCES INSURANCE(insurance_id)
);

CREATE TABLE PAYMENT (
    payment_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    bill_id INT, -- FK
    payment_date DATE,
    payment_method VARCHAR(50),
    payment_amount DECIMAL(10,2),
    FOREIGN KEY (bill_id) REFERENCES BILL(bill_id)
);

CREATE TABLE PRESCRIPTION (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT, -- FK
    doctor_id INT, -- FK
    medication_name VARCHAR(100),
    dosage VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id)
);

CREATE TABLE SURGERY (
    surgery_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT, -- FK
    doctor_id INT, -- FK
    room_id INT, -- FK
    surgery_date DATETIME,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (room_id)    REFERENCES ROOM(room_id)
);

CREATE TABLE EQUIPMENT (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    name VARCHAR(100),
    equipment_type VARCHAR(50),
    description VARCHAR(255),
    availability BOOLEAN
);

CREATE TABLE SURGERY_EQUIPMENT (
    surgery_id INT, -- FK
    equipment_id INT, -- FK
    PRIMARY KEY (surgery_id, equipment_id),
    FOREIGN KEY (surgery_id)   REFERENCES SURGERY(surgery_id),
    FOREIGN KEY (equipment_id) REFERENCES EQUIPMENT(equipment_id)
);

CREATE TABLE LAB (
    lab_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT, -- FK
    test_name VARCHAR(100),
    lab_test_date DATE,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id)
);

CREATE TABLE LAB_TECHNICIAN (
    technician_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(20),
    department_id INT, -- FK
    branch_id INT, -- FK
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id),
    FOREIGN KEY (branch_id)     REFERENCES HOSPITAL_BRANCH(branch_id)
);

CREATE TABLE TELEHEALTH_SESSION (
    telehealth_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT, -- FK
    doctor_id INT, -- FK
    nurse_id INT, -- FK
    start_time DATETIME,
    end_time DATETIME,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
    FOREIGN KEY (doctor_id)  REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (nurse_id)   REFERENCES NURSE(nurse_id)
);

CREATE TABLE FEEDBACK (
    feedback_id INT PRIMARY KEY AUTO_INCREMENT, -- PK
    patient_id INT, -- FK
    number_stars INT,
    feedback_date DATE,
    FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id)
);