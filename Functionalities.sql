-- E-Healthcare Management System SQL Queries
-- The E-Healthcare Management System must be able to perform the following tasks in SQL:

-- 1. Patient-Doctor Relationship
-- ● Question: List all patients who have had appointments with more than one doctor in the past month.
-- Show patient's name, doctor names, and the number of appointments

-- Functionality Requirement #1 --
-- Fully Functional -- 

SELECT
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    d.first_name AS doctor_first_name,
    d.last_name AS doctor_last_name,
    COUNT(a.appointment_id) AS appointment_count
FROM
    APPOINTMENT a
JOIN PATIENT p ON a.patient_id = p.patient_id
JOIN DOCTOR d ON a.doctor_id = d.doctor_id
WHERE
    a.appointment_date >= CURDATE() - INTERVAL 1 MONTH
GROUP BY
    p.patient_id, d.doctor_id
HAVING
    p.patient_id IN (
        SELECT patient_id
        FROM APPOINTMENT
        WHERE appointment_date >= CURDATE() - INTERVAL 1 MONTH
        GROUP BY patient_id
        HAVING COUNT(DISTINCT doctor_id) > 1
    )
ORDER BY
    p.last_name, p.first_name, appointment_count DESC;


-- 2. Equipment Utilization
-- ● Question: Identify the equipment that has been used in more than five surgeries this year.
-- Show the equipment name and the number of times it has been used.
-- CURRENTLY FULLY FUNCTIONAL !CHANGE
SELECT 
    e.equipment_name,
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

-- 3. Insurance Coverage
-- Question: Find all patients who have an insurance policy but have made out-of-pocket payments exceeding $500 in the last year.
-- FUNCTIONAL !CHANGE
SELECT 
    p.first_name,
    p.last_name,
    i.provider_name,
    i.plan_name,
    SUM(pay.payment_amount) AS out_of_pocket_payments
FROM 
    PATIENT p
JOIN 
    PATIENT_INSURANCE pi ON p.patient_id = pi.patient_id
JOIN 
    INSURANCE i ON pi.insurance_id = i.insurance_id
JOIN 
    BILL b ON p.patient_id = b.patient_id
JOIN 
    PAYMENT pay ON b.bill_id = pay.bill_id
WHERE 
    pay.payment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR)
    AND pay.payment_method = 'out_of_pocket'
GROUP BY 
    p.patient_id, i.insurance_id
HAVING 
    SUM(pay.payment_amount) > 500;

-- 4. Telehealth Analysis
-- List doctors with more than 10 telehealth sessions but less than 4-star average in patient feedback
-- Currently Functional
-- Check Data - / Add more sample data bc only 1 case rn

SELECT 
    d.first_name,
    d.last_name,
    COUNT(t.telehealth_id) AS telehealth_sessions,
    AVG(f.number_stars) AS average_rating
FROM 
    DOCTOR d
JOIN 
    TELEHEALTH_SESSION t ON d.doctor_id = t.doctor_id
LEFT JOIN 
    FEEDBACK f ON t.doctor_id = f.doctor_id AND t.telehealth_id = f.telehealth_id
GROUP BY 
    d.doctor_id
HAVING 
    COUNT(t.telehealth_id) > 10
    AND AVG(f.number_stars) < 4;

-- 5. Inventory Reorder
-- Identify medications with less than 10 units in inventory not in pending orders
-- No Data
-- NEED TO FINISH

-- Identify medications with less than 10 units in inventory not in pending orders
SELECT 
    m.medication_name,
    COALESCE(moi_total.total_quantity, 0) AS current_stock
FROM 
    MEDICATION m
LEFT JOIN (
    -- Get the total quantity for each medication across all order items
    SELECT 
        medication_id,
        SUM(med_quantity) AS total_quantity
    FROM 
        MEDICATION_ORDER_ITEM
    GROUP BY 
        medication_id
) moi_total ON m.medication_id = moi_total.medication_id
LEFT JOIN (
    -- Check if the medication is in any pending orders
    SELECT DISTINCT
        moi.medication_id
    FROM 
        MEDICATION_ORDER_ITEM moi
    JOIN 
        MEDICATION_ORDER mo ON moi.med_order_id = mo.med_order_id
    WHERE 
        mo.order_status = 'pending'
) pending_orders ON m.medication_id = pending_orders.medication_id
WHERE 
    (COALESCE(moi_total.total_quantity, 0) < 10)
    AND pending_orders.medication_id IS NULL;

-- 6. Multi-Branch Doctors
-- List doctors who worked in more than one hospital branch in past six months with branch names
-- Functional
-- Fix Data: Need to check doctors with only one branch
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
JOIN
    APPOINTMENT a ON d.doctor_id = a.doctor_id
WHERE 
    a.appointment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
GROUP BY 
    d.doctor_id
HAVING 
    COUNT(DISTINCT hb.branch_id) > 1;

-- 7. Patient Medical History
-- Question: Retrieve the medical history of patients who have had allergic reactions to medications prescribed in the hospital.
-- FUnctional - Need Fix
-- Duplicates result
-- Data - Check patients without reaction
SELECT 
    p.first_name,
    p.last_name,
    m.medication_name,
    ar.symptoms,
    ar.reaction_date,
    mh.diagnosis_date,
    i.illness_name
FROM 
    PATIENT p
JOIN 
    ALLERGIC_REACTION ar ON p.patient_id = ar.patient_id
JOIN 
    MEDICATION m ON ar.medication_id = m.medication_id
JOIN 
    PRESCRIPTION pr ON m.medication_id = pr.medication_id AND p.patient_id = pr.patient_id
JOIN
    MEDICAL_HISTORY mh ON p.patient_id = mh.patient_id
JOIN
    ILLNESS i ON mh.illness_id = i.illness_id
WHERE 
    ar.symptoms IS NOT NULL;

-- 8. Billing Discrepancies
-- Question: Find all instances where the billed amount for a patient differs from the sum of the prices of services they have received.
-- Show the patient name, billed amount, and calculated sum.
-- Possibly Functional
-- Fix Data: More patients with this setup
SELECT 
    p.first_name,
    p.last_name,
    b.bill_id,
    b.total_bill AS billed_amount,
    SUM(s.price * sb.quantity) AS calculated_total
FROM 
    BILL b
JOIN 
    PATIENT p ON b.patient_id = p.patient_id
JOIN 
    SERVICE_BILL sb ON b.bill_id = sb.bill_id
JOIN 
    SERVICE s ON sb.service_id = s.service_id
GROUP BY 
    b.bill_id, p.first_name, p.last_name, b.total_bill
HAVING 
    billed_amount <> calculated_total;
 

-- 9. Staff Workload
-- List nurses who have assisted in surgeries and have worked more than 40 hours in the past week.
-- Appears to be functional
-- Check result: We may want to get rid of surgery ID and just say appeared in surgery Y N
SELECT DISTINCT 
    NURSE.nurse_id,  -- selects the unique nurse_id
    NURSE.first_name,  -- selects the nurse's first name
    NURSE.last_name,   -- selects the nurse's last name
    NURSE_ASSIGNMENT.surgery_id,  -- selects the surgery_id the nurse was assigned to
    SUM(NURSE_WORKLOG.hours) AS total_hours_worked  -- sums the total hours worked by the nurse

FROM NURSE_ASSIGNMENT  -- starts from the NURSE_ASSIGNMENT table (records of nurse-surgery assignments)

JOIN NURSE  -- joins the NURSE table to get nurse details
    ON NURSE_ASSIGNMENT.nurse_id = NURSE.nurse_id  -- matches nurse_id between NURSE_ASSIGNMENT and NURSE

JOIN NURSE_WORKLOG  -- joins the NURSE_WORKLOG table to get work hours
    ON NURSE.nurse_id = NURSE_WORKLOG.nurse_id  -- matches nurse_id between NURSE and NURSE_WORKLOG

WHERE NURSE_ASSIGNMENT.surgery_id IS NOT NULL  -- filters to include only nurses that were assigned to surgeries

    -- filters work logs to only include the last 7 days
    AND NURSE_WORKLOG.log_date >= (
        SELECT MAX(log_date) - INTERVAL 7 DAY FROM NURSE_WORKLOG
    )
    AND NURSE_WORKLOG.log_date <= (
        SELECT MAX(log_date) FROM NURSE_WORKLOG
    )

GROUP BY NURSE.nurse_id, NURSE_ASSIGNMENT.surgery_id  -- groups the results by nurse and surgery assignment

HAVING SUM(NURSE_WORKLOG.hours) >= 40;  -- includes only nurses who worked 40 or more hours in the last 7 available days


-- 10. Lab Test Specialization
-- Identify lab technicians who have performed more than 10 specialized lab tests (e.g., MRI, blood culture) in the past month.
-- Likely Functional
-- Fix Data: More case examples - only 1 right now
SELECT 
    lt.technician_id,
    lt.first_name,
    lt.last_name,
    COUNT(*) AS specialized_test_count
FROM 
    LAB l
JOIN 
    TEST t ON l.test_id = t.test_id
JOIN 
    LAB_TECHNICIAN lt ON l.technician_id = lt.technician_id
WHERE 
    t.is_specialized = TRUE
    AND l.lab_test_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY 
    lt.technician_id, lt.first_name, lt.last_name
HAVING 
    COUNT(*) > 10;

-- 11. Patient Follow-Up
-- List patients who have had surgeries in the past month but have no future appointments scheduled for follow-up.
-- Functional
-- Fix Data: check bc only 2 cases rn
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
    AND s.surgery_date <= CURRENT_DATE()
    AND a.appointment_id IS NULL;

-- 12. Patient Visit Frequency
-- Identify all patients who have visited the hospital more than five times in the past six months.
-- Show the patient's name, the number of visits, and the department most frequently visited.
-- FUNCTIONAL !EDIT
SELECT 
    p.first_name,
    p.last_name,
    COUNT(a.appointment_id) AS visit_count,
    (
        SELECT dept.department_name 
        FROM DEPARTMENT dept
        JOIN DOCTOR d ON d.department_id = dept.department_id
        JOIN APPOINTMENT a2 ON a2.doctor_id = d.doctor_id
        WHERE a2.patient_id = p.patient_id
        AND a2.appointment_date >= DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
        GROUP BY dept.department_id
        ORDER BY COUNT(a2.appointment_id) DESC
        LIMIT 1
    ) AS most_visited_department
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
