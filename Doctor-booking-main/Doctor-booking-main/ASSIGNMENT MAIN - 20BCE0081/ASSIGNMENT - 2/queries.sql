-- CREATING A TABLE;

CREATE TABLE student (
    name VARCHAR(20) NOT NULL,
    regno VARCHAR(9) NOT NULL,
    branch VARCHAR(15) NOT NULL,
    phonenumber VARCHAR(10) NOT NULL,
    proctorId INT(5) NOT NULL,
    email VARCHAR(25) NOT NULL,
    cgpa DECIMAL(3, 2) NOT NULL,
    PRIMARY KEY(regno)
);

-- CREATING A PROTOR TABLE

CREATE TABLE proctor (
    proctorName VARCHAR(15) NOT NULL,
    employeeId INT(5) NOT NULL,
    email VARCHAR(25) NOT NULL,
    courseTaken VARCHAR(10) NOT NULL,
    PRIMARY KEY (employeeId)
);

-- Adding a FOREIGN KEY
ALTER TABLE student
ADD FOREIGN KEY (proctorId) REFERENCES proctor(employeeId);

ALTER TABLE student
ADD COLUMN branch VARCHAR(15) NOT NULL;

-- Inserting  RECORDS to proctor
INSERT INTO proctor (proctorName, employeeId, email, courseTaken)
VALUES ('ARUN', '10001', 'arun.proctor@vit.ac.in', 'Java Course');

INSERT INTO proctor (proctorName, employeeId, email, courseTaken)
VALUES ('BABU', '10011', 'babu.proctor@vit.ac.in', 'AI Course');

INSERT INTO proctor (proctorName, employeeId, email, courseTaken)
VALUES ('AKILA VICTOR', '10022', 'akila.proctor@vit.ac.in', 'SE Course');


INSERT INTO proctor (proctorName, employeeId, email, courseTaken)
VALUES ('ANISHA', '10033', 'anisha.proctor@vit.ac.in', 'IP Course');

INSERT INTO proctor (proctorName, employeeId, email, courseTaken)
VALUES ('SARAVANAN', '10044', 'saravanan.proctor@vit.ac.in', 'DBMS Course');


INSERT INTO student (name, regno, branch, phonenumber, proctorId, email, cgpa)
VALUES ('Kumar', '20BCE0001', 'CSE', '9988774455', '10011', 'kumar@vitstudent.ac.in', 8.06);

INSERT INTO student (name, regno, branch, phonenumber, proctorId, email, cgpa)
VALUES ('Arun', '20BCE0294', 'CSE', '9988776655', '10022', 'arun@vitstudent.ac.in', 9.06);

INSERT INTO student (name, regno, branch, phonenumber, proctorId, email, cgpa)
VALUES ('hariharn', '20BCT0296', 'BCT', '2288774455', '10033', 'hariharan@vitstudent.ac.in', 7.56);

INSERT INTO student (name, regno, branch, phonenumber, proctorId, email, cgpa)
VALUES ('Anesh', '20BCE2278', 'CSE', '9988774355', '10044', 'kumar@vitstudent.ac.in', 8.11);

INSERT INTO student (name, regno, branch, phonenumber, proctorId, email, cgpa)
VALUES ('Sundar', '20BCT0394', 'BCT', '9788774455', '10044', 'kumar@vitstudent.ac.in', 6.75);




UPDATE student SET phonenumber = '9876543210' WHERE regno = '20BCE0001';

UPDATE proctor SET email = 'saravanan@vit.ac.in' WHERE employeeId = '10044';

-- To get the students along with their email and their proctor email
SELECT student.regno, student.name, student.email, proctor.email
FROM student
JOIN proctor ON student.proctorId = proctor.employeeId;

-- To get the proctor and student details in BCE branch
SELECT student.regno, student.name, proctor.employeeId, proctor.proctorname
FROM student
JOIN proctor ON student.proctorId = proctor.employeeId
WHERE student.branch = 'CSE';


-- For NOSQL - MongoDB
db.students.insertOne({
  "name": "Arun",
  "age": 20,
  "grade": "A"
})

db.students.insertOne({
  "name": "Sundar",
  "age": 19,
  "grade": "B"
})

db.students.updateOne(
  { "name": "Arun" }, 
  { $set: { "grade": "A+" } } 
)

db.students.deleteOne({ "name": "Sundar" }) 

db.students.find().pretty();
