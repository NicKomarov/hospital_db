CREATE PROCEDURE GetPatientMedicalRecords
@patient_id INT
AS
SELECT * FROM Medical_Records WHERE patient_id = @patient_id


CREATE PROCEDURE GetWorkerShifts
@worker_id INT
AS
SELECT * FROM Workers_Shifts WHERE worker_id = @worker_id


CREATE PROCEDURE GetWorkerShifts
@worker_id INT
AS
SELECT * FROM Workers_Shifts WHERE worker_id = @worker_id


CREATE PROCEDURE GetSymptomsForMedicalRecord
@record_id INT
AS
SELECT s.name, sr.start_date, sr.end_date
FROM Symptoms_Records sr
JOIN Symptoms s ON sr.symptom_id = s.id
WHERE sr.record_id = @record_id
