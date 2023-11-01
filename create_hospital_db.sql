CREATE TABLE [Patients] (
  [id] integer PRIMARY KEY,
  [first_name] varchar(50),
  [last_name] varchar(50),
  [phone] varchar(50),
  [address] varchar(50),
  [status] varchar(50)
)
GO

CREATE TABLE [Medical_Records] (
  [id] integer PRIMARY KEY,
  [patient_id] integer,
  [diagnose] varchar(50),
  [admitting_date] date,
  [leaving_date] date,
  [updated_date] datetime
)
GO

CREATE TABLE [Medical_Workers] (
  [id] integer PRIMARY KEY,
  [first_name] varchar(50),
  [last_name] varchar(50),
  [specialization] varchar(50),
  [salary] integer,
  [department_id] integer
)
GO

CREATE TABLE [Workers_Shifts] (
  [id] integer PRIMARY KEY,
  [worker_id] integer,
  [start_time] datetime,
  [end_time] datetime
)
GO

CREATE TABLE [Workers_Records] (
  [id] integer PRIMARY KEY,
  [record_id] integer,
  [worker_id] integer
)
GO

CREATE TABLE [Symptoms] (
  [id] integer PRIMARY KEY,
  [name] varchar(50),
  [description] text
)
GO

CREATE TABLE [Symptoms_Records] (
  [id] integer PRIMARY KEY,
  [record_id] integer,
  [symptom_id] integer,
  [start_date] date,
  [end_date] date
)
GO

CREATE TABLE [Testing] (
  [id] integer PRIMARY KEY,
  [name] varchar(50),
  [description] text
)
GO

CREATE TABLE [Patients_Records_Testing] (
  [id] integer PRIMARY KEY,
  [record_id] integer,
  [testing_id] integer,
  [testing_date] datetime,
  [results] text
)
GO

CREATE TABLE [Workers_Patients_Testing] (
  [id] integer PRIMARY KEY,
  [testing_record_id] integer,
  [worker_id] integer
)
GO

CREATE TABLE [Treatments] (
  [id] integer PRIMARY KEY,
  [name] varchar(50),
  [description] text
)
GO

CREATE TABLE [Treatments_Records] (
  [id] integer PRIMARY KEY,
  [record_id] integer,
  [treatment_id] integer,
  [worker_id] integer,
  [start_date] date,
  [end_date] date
)
GO

CREATE TABLE [Patients_Accommodation] (
  [id] integer PRIMARY KEY,
  [patient_record_id] integer,
  [department_id] integer,
  [floor] integer,
  [room] integer,
  [settlement_date] datetime
)
GO

CREATE TABLE [Patients_Accommodation_History] (
  [id] integer PRIMARY KEY,
  [accommodation_id] integer,
  [department_id] integer,
  [floor] integer,
  [room] integer,
  [settlement_date] datetime
)
GO

CREATE TABLE [Departments] (
  [id] integer PRIMARY KEY,
  [name] varchar(50),
  [description] text
)
GO

CREATE TABLE [Medical_Records_History] (
  [id] integer PRIMARY KEY,
  [record_id] integer,
  [diagnose] varchar(50),
  [updated_date] datetime
)
GO

ALTER TABLE [Medical_Records] ADD FOREIGN KEY ([patient_id]) REFERENCES [Patients] ([id])
GO

ALTER TABLE [Workers_Records] ADD FOREIGN KEY ([record_id]) REFERENCES [Medical_Records] ([id])
GO

ALTER TABLE [Workers_Records] ADD FOREIGN KEY ([worker_id]) REFERENCES [Medical_Workers] ([id])
GO

ALTER TABLE [Symptoms_Records] ADD FOREIGN KEY ([record_id]) REFERENCES [Medical_Records] ([id])
GO

ALTER TABLE [Patients_Records_Testing] ADD FOREIGN KEY ([record_id]) REFERENCES [Medical_Records] ([id])
GO

ALTER TABLE [Treatments_Records] ADD FOREIGN KEY ([record_id]) REFERENCES [Medical_Records] ([id])
GO

ALTER TABLE [Patients_Accommodation] ADD FOREIGN KEY ([patient_record_id]) REFERENCES [Medical_Records] ([id])
GO

ALTER TABLE [Medical_Records_History] ADD FOREIGN KEY ([record_id]) REFERENCES [Medical_Records] ([id])
GO

ALTER TABLE [Workers_Shifts] ADD FOREIGN KEY ([worker_id]) REFERENCES [Medical_Workers] ([id])
GO

ALTER TABLE [Treatments_Records] ADD FOREIGN KEY ([treatment_id]) REFERENCES [Treatments] ([id])
GO

ALTER TABLE [Treatments_Records] ADD FOREIGN KEY ([worker_id]) REFERENCES [Medical_Workers] ([id])
GO

ALTER TABLE [Patients_Accommodation_History] ADD FOREIGN KEY ([accommodation_id]) REFERENCES [Patients_Accommodation] ([id])
GO

ALTER TABLE [Departments] ADD FOREIGN KEY ([id]) REFERENCES [Patients_Accommodation] ([department_id])
GO

ALTER TABLE [Departments] ADD FOREIGN KEY ([id]) REFERENCES [Patients_Accommodation_History] ([department_id])
GO

ALTER TABLE [Symptoms_Records] ADD FOREIGN KEY ([symptom_id]) REFERENCES [Symptoms] ([id])
GO

ALTER TABLE [Patients_Records_Testing] ADD FOREIGN KEY ([testing_id]) REFERENCES [Testing] ([id])
GO

ALTER TABLE [Workers_Patients_Testing] ADD FOREIGN KEY ([testing_record_id]) REFERENCES [Patients_Records_Testing] ([id])
GO

ALTER TABLE [Workers_Patients_Testing] ADD FOREIGN KEY ([worker_id]) REFERENCES [Medical_Workers] ([id])
GO

ALTER TABLE [Departments] ADD FOREIGN KEY ([id]) REFERENCES [Medical_Workers] ([department_id])
GO
