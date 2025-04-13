
INSERT INTO SURGERY (surgery_id, patient_id, doctor_id, bed_id, surgery_date, surgery_type, surgery_status, start_time, end_time) VALUES
('900001', '100001', '200001', '3001', '2025-01-15 08:00:00', 'Coronary Artery Bypass', 'completed', '2025-01-15 08:00:00', '2025-01-15 12:00:00'),
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
