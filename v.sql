CREATE TABLE patients (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(20),
  address VARCHAR(255)
);

CREATE TABLE doctors (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  specialty VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(20)
);

CREATE TABLE appointments (
  id INT PRIMARY KEY,
  patient_id INT,
  doctor_id INT,
  date DATE,
  time TIME,
  FOREIGN KEY (patient_id) REFERENCES patients(id),
  FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);

CREATE TABLE rooms (
  id INT PRIMARY KEY,
  room_number INT,
  bed_count INT
);

CREATE TABLE medications (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255)
);

CREATE TABLE billing (
  id INT PRIMARY KEY,
  patient_id INT,
  appointment_id INT,
  amount DECIMAL(10, 2),
  FOREIGN KEY (patient_id) REFERENCES patients(id),
  FOREIGN KEY (appointment_id) REFERENCES appointments(id)
);
