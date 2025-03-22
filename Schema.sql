
-- Create database
CREATE DATABASE IF NOT EXISTS HEALTHCARE_SYSTEM;
USE HEALTHCARE_SYSTEM;

-- HOSPITAL_BRANCH table
CREATE TABLE HOSPITAL_BRANCH (
    branch_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    established_date DATE,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- DEPARTMENT table
CREATE TABLE DEPARTMENT (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_id INT NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    head_doctor_id INT,  -- Will add foreign key later after DOCTOR table is created
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (branch_id) REFERENCES HOSPITAL_BRANCH(branch_id)
);

-- ROOM table
CREATE TABLE ROOM (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    branch_id INT NOT NULL,
    department_id INT NOT NULL,
    room_number VARCHAR(20) NOT NULL,
    room_type ENUM('Operating', 'Patient', 'Examination', 'Emergency', 'ICU', 'Laboratory') NOT NULL,
    capacity INT DEFAULT 1,
    is_occupied BOOLEAN DEFAULT FALSE,
    is_available BOOLEAN DEFAULT TRUE,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (branch_id) REFERENCES HOSPITAL_BRANCH(branch_id),
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id),
    UNIQUE KEY (branch_id, room_number)
);

-- BED table
CREATE TABLE BED (
    bed_id INT PRIMARY KEY AUTO_INCREMENT,
    room_id INT NOT NULL,
    bed_number VARCHAR(20) NOT NULL,
    bed_type ENUM('Standard', 'ICU', 'Electric', 'Bariatric', 'Pediatric') NOT NULL,
    is_occupied BOOLEAN DEFAULT FALSE,
    is_available BOOLEAN DEFAULT TRUE,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (room_id) REFERENCES ROOM(room_id),
    UNIQUE KEY (room_id, bed_number)
);

-- PATIENT table
CREATE TABLE PATIENT (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    blood_type ENUM('A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'),
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    emergency_contact_name VARCHAR(100),
    emergency_contact_phone VARCHAR(20),
    emergency_contact_relationship VARCHAR(50),
    registration_date DATE NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
