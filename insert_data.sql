-- Patients Table
INSERT INTO Patients (first_name, last_name, phone, address, status)
VALUES
  ('Alice', 'Johnson', '555-987-6543', '456 Elm St', 'Active'),
  ('Bob', 'Smith', '555-456-7890', '789 Oak St', 'Inactive');

-- Medical_Records Table
INSERT INTO Medical_Records (patient_id, diagnose, admitting_date, leaving_date, updated_date)
VALUES
  (2, 'Influenza', '2023-09-01', '2023-09-10', '2023-09-11 10:30:00'),
  (1, 'Fractured Arm', '2023-08-15', '2023-08-20', '2023-08-21 09:15:00');

-- Medical_Workers Table
INSERT INTO Medical_Workers (first_name, last_name, specialization, salary, department_id)
VALUES
  ('Dr. Michael', 'Brown', 'Surgeon', 90000, 2),
  ('Nurse Emily', 'Clark', 'Pediatrics', 60000, 1);

-- Workers_Shifts Table
INSERT INTO Workers_Shifts (worker_id, start_time, end_time)
VALUES
  (2, '2023-09-11 08:00:00', '2023-09-11 16:00:00'),
  (1, '2023-08-21 07:30:00', '2023-08-21 15:30:00');

-- Workers_Records Table
INSERT INTO Workers_Records (record_id, worker_id)
VALUES
  (2, 2),
  (1, 1);

-- Symptoms Table
INSERT INTO Symptoms (name, description)
VALUES
  ('Headache', 'Pain in the head'),
  ('Cough', 'Persistent coughing');

-- Symptoms_Records Table
INSERT INTO Symptoms_Records (record_id, symptom_id, start_date, end_date)
VALUES
  (2, 1, '2023-09-01', '2023-09-07'),
  (1, 2, '2023-08-15', '2023-08-20');

-- Testing Table
INSERT INTO Testing (name, description)
VALUES
  ('X-ray', 'Radiographic imaging'),
  ('MRI', 'Magnetic Resonance Imaging');

-- Patients_Records_Testing Table
INSERT INTO Patients_Records_Testing (record_id, testing_id, testing_date, results)
VALUES
  (2, 1, '2023-09-05 13:00:00', 'Fracture detected'),
  (1, 2, '2023-08-18 11:30:00', 'Normal results');

-- Workers_Patients_Testing Table
INSERT INTO Workers_Patients_Testing (testing_record_id, worker_id)
VALUES
  (1, 2),
  (2, 1);

-- Treatments Table
INSERT INTO Treatments (name, description)
VALUES
  ('Painkillers', 'Prescribed for headache'),
  ('Rest', 'Recommended for cough relief');

-- Treatments_Records Table
INSERT INTO Treatments_Records (record_id, treatment_id, worker_id, start_date, end_date)
VALUES
  (1, 1, 2, '2023-08-16', '2023-08-18'),
  (2, 2, 1, '2023-09-02', '2023-09-09');

-- Patients_Accommodation Table
INSERT INTO Patients_Accommodation (patient_record_id, department_id, floor, room, settlement_date)
VALUES
  (2, 1, 3, 305, '2023-09-01 16:00:00'),
  (1, 2, 4, 412, '2023-08-15 14:30:00');

-- Patients_Accommodation_History Table
INSERT INTO Patients_Accommodation_History (accommodation_id, department_id, floor, room, settlement_date)
VALUES
  (1, 2, 4, 412, '2023-08-21 12:00:00'),
  (2, 1, 3, 305, '2023-09-10 08:00:00');

-- Departments Table
INSERT INTO Departments (name, description)
VALUES
  ('Orthopedics', 'Specializing in musculoskeletal issues'),
  ('Radiology', 'Imaging and diagnostic services');

-- Medical_Records_History Table
INSERT INTO Medical_Records_History (record_id, diagnose, updated_date)
VALUES
  (2, 'Influenza', '2023-09-11 10:30:00'),
  (1, 'Fractured Arm', '2023-08-21 09:15:00');
