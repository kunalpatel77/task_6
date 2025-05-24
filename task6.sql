CREATE TABLE Departments (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR
)
INSERT INTO Departments (DepartmentName) VALUES
('Science'),
('Mathematics'),
('English'),
('History')

select * from Departments


CREATE TABLE Teachers (
    TeacherID SERIAL PRIMARY KEY,
    FirstName VARCHAR NOT NULL,
    LastName VARCHAR NOT NULL,
    DepartmentID INTEGER REFERENCES Departments(DepartmentID)
)
INSERT INTO Teachers (FirstName, LastName, DepartmentID) VALUES
('Jane', 'Doe', 1),
('John', 'Smith', 2),
('Emily', 'Carter', 3),
('David', 'Wilson', 4);

select * from Teachers


CREATE TABLE Students (
    StudentID SERIAL PRIMARY KEY,
    FirstName VARCHAR NOT NULL,
    LastName VARCHAR NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR,
    Address VARCHAR
)
INSERT INTO Students (FirstName, LastName, DateOfBirth, Email, Address) VALUES
('Alice', 'Smith', '2003-08-15', 'alice.smith@example.com', '123 Main St'),
('Bob', 'Johnson', '2002-11-20', 'bob.johnson@example.com', '456 Oak Ave'),
('Charlie', 'Brown', '2004-05-10', 'charlie.brown@example.com', '789 Pine Ln'),
('Diana', 'Garcia', '2003-12-01', 'diana.garcia@example.com', '101 Elm Rd');

select * from Students


CREATE TABLE Courses (
    CourseID SERIAL PRIMARY KEY,
    CourseName VARCHAR NOT NULL,
    Credits INTEGER,
    DepartmentID INTEGER REFERENCES Departments(DepartmentID)
)
INSERT INTO Courses (CourseName, Credits, DepartmentID) VALUES
('Biology 101', 3, 1),
('Calculus I', 4, 2),
('American Literature', 3, 3),
('World History', 3, 4),
('Chemistry 101', 4, 1),
('Linear Algebra', 3, 2);

select * from Courses


CREATE TABLE Classes (
    ClassID SERIAL PRIMARY KEY,
    CourseID INTEGER REFERENCES Courses(CourseID),
    TeacherID INTEGER REFERENCES Teachers(TeacherID),
    Semester VARCHAR NOT NULL,
    ClassTime TIME,
    Classroom VARCHAR
)
INSERT INTO Classes (CourseID, TeacherID, Semester, ClassTime, Classroom) VALUES
(1, 1, 'Fall 2025', '09:00:00', 'Science Hall 101'),
(2, 2, 'Fall 2025', '11:00:00', 'Math Bldg 205'),
(3, 3, 'Fall 2025', '14:00:00', 'Arts Center 112'),
(4, 4, 'Fall 2025', '10:00:00', 'History Hall 301'),
(5, 1, 'Fall 2025', '13:00:00', 'Science Hall 102'),
(6, 2, 'Fall 2025', '15:00:00', 'Math Bldg 206');

select * from Classes

CREATE TABLE Enrollments (
    EnrollmentID SERIAL PRIMARY KEY,
    StudentID INTEGER REFERENCES Students(StudentID),
    ClassID INTEGER REFERENCES Classes(ClassID),
    EnrollmentDate DATE NOT NULL,
    Grade VARCHAR
)
INSERT INTO Enrollments (StudentID, ClassID, EnrollmentDate, Grade) VALUES
(1, 1, '2025-09-01', 'A'),
(2, 2, '2025-09-01', 'B'),
(1, 3, '2025-09-01', 'C'),
(3, 1, '2025-09-01', 'A'),
(4, 4, '2025-09-01', 'B+'),
(2, 3, '2025-09-01', 'A-');

select * from  Enrollments

CREATE TABLE Assignments (
    AssignmentID SERIAL PRIMARY KEY,
    ClassID INTEGER REFERENCES Classes(ClassID),
    AssignmentName VARCHAR NOT NULL,
    DueDate DATE
)
INSERT INTO Assignments (ClassID, AssignmentName, DueDate) VALUES
(1, 'Cell Structure Lab', '2025-09-15'),
(2, 'Limits Worksheet', '2025-09-20'),
(3, 'Essay on Hawthorne', '2025-09-25'),
(4, 'Chapter 1-3 Quiz', '2025-09-18');

select * from  Assignments


CREATE TABLE Grades (
    GradeID SERIAL PRIMARY KEY,
    EnrollmentID INTEGER REFERENCES Enrollments(EnrollmentID),
    AssignmentID INTEGER REFERENCES Assignments(AssignmentID),
    Score DECIMAL(5, 2)
)
INSERT INTO Grades (EnrollmentID, AssignmentID, Score) VALUES
(1, 1, 92.5),
(2, 2, 85.0),
(3, 3, 78.0),
(4, 1, 95.0),
(5, 4, 88.0),
(6, 3, 91.0);

select * from Grades

SELECT
    s.StudentID,
    s.FirstName AS StudentFirstName,
    s.LastName AS StudentLastName,
    s.DateOfBirth,
    s.Email,
    s.Address,
    e.EnrollmentID,
    e.EnrollmentDate,
    e.Grade,
    c.ClassID,
    c.Semester,
    c.ClassTime,
    c.Classroom,
    co.CourseID,
    co.CourseName,
    co.Credits,
    d.DepartmentID,
    d.DepartmentName,
    t.TeacherID,
    t.FirstName AS TeacherFirstName,
    t.LastName AS TeacherLastName,
    a.AssignmentID,
    a.AssignmentName,
    a.DueDate,
    g.GradeID,
    g.Score AS GradeScore
FROM
    Students AS s
INNER JOIN
    Enrollments AS e ON s.StudentID = e.StudentID
INNER JOIN
    Classes AS c ON e.ClassID = c.ClassID
INNER JOIN
    Courses AS co ON c.CourseID = co.CourseID
INNER JOIN
    Departments AS d ON co.DepartmentID = d.DepartmentID
INNER JOIN
    Teachers AS t ON c.TeacherID = t.TeacherID
    INNER JOIN
    Grades AS g ON e.EnrollmentID = g.EnrollmentID
INNER JOIN
    Assignments AS a ON g.AssignmentID = a.AssignmentID;



-- 1. List students and the courses they are enrolled in.
SELECT
    s.FirstName,
    s.LastName,
    c.CourseName
FROM
    Students AS s
INNER JOIN
    Enrollments AS e ON s.StudentID = e.StudentID
INNER JOIN
    Classes AS cl ON e.ClassID = cl.ClassID
INNER JOIN
    Courses AS c ON cl.CourseID = c.CourseID;

-- 2. Show teachers and the departments they belong to.
SELECT
    t.FirstName,
    t.LastName,
    d.DepartmentName
FROM
    Teachers AS t
INNER JOIN
    Departments AS d ON t.DepartmentID = d.DepartmentID;

-- 3. Find courses and the departments offering them.
SELECT
    c.CourseName,
    d.DepartmentName
FROM
    Courses AS c
INNER JOIN
    Departments AS d ON c.DepartmentID = d.DepartmentID;

-- 4. List classes and the teachers teaching them.
SELECT
    cl.ClassID,
    c.CourseName,
    t.FirstName,
    t.LastName
FROM
    Classes AS cl
INNER JOIN
    Courses AS c ON cl.CourseID = c.CourseID
INNER JOIN
    Teachers AS t ON cl.TeacherID = t.TeacherID;

-- 5. Show student names and their grades in a specific course.
SELECT
    s.FirstName,
    s.LastName,
    c.CourseName,
    e.Grade
FROM
    Students AS s
INNER JOIN
    Enrollments AS e ON s.StudentID = e.StudentID
INNER JOIN
    Classes AS cl ON e.ClassID = cl.ClassID
INNER JOIN
    Courses AS c ON cl.CourseID = c.CourseID
WHERE
    c.CourseName = 'Biology 101'; 

-- 6. List assignments for each class
SELECT
    c.CourseName,
    cl.ClassID,
    a.AssignmentName,
    a.DueDate
FROM
    Classes AS cl
INNER JOIN
    Courses AS c ON cl.CourseID = c.CourseID
INNER JOIN
    Assignments AS a ON cl.ClassID = a.ClassID;

-- 7. Show the grades a student received for each assignment in a class.
SELECT
    s.FirstName,
    s.LastName,
    c.CourseName,
    a.AssignmentName,
    g.Score
FROM
    Students AS s
INNER JOIN
    Enrollments AS e ON s.StudentID = e.StudentID
INNER JOIN
    Classes AS cl ON e.ClassID = cl.ClassID
INNER JOIN
    Courses AS c ON cl.CourseID = c.CourseID
INNER JOIN
    Assignments AS a ON cl.ClassID = a.ClassID
INNER JOIN
    Grades AS g ON e.EnrollmentID = g.EnrollmentID AND a.AssignmentID = g.AssignmentID
WHERE s.FirstName = 'Alice';

-- 8. List all the students in a specific class.
SELECT
    s.FirstName,
    s.LastName
FROM
    Students s
INNER JOIN
    Enrollments e ON s.StudentID = e.StudentID
INNER JOIN
    Classes c ON e.ClassID = c.ClassID
WHERE
    c.ClassID = 1;

-- 9. Show courses taught by each teacher.
SELECT
    t.FirstName,
    t.LastName,
    c.CourseName
FROM
    Teachers t
INNER JOIN
    Classes cl ON t.TeacherID = cl.TeacherID
INNER JOIN
    Courses c ON cl.CourseID = c.CourseID;

-- 10. Show the department of each teacher
SELECT t.FirstName, t.LastName, d.DepartmentName
FROM Teachers t
INNER JOIN Departments d ON t.DepartmentID = d.DepartmentID;


-- 1.  Count the number of students in each class.
SELECT
    c.CourseID,
    COUNT(e.StudentID) AS NumberOfStudents
FROM
    Classes AS c
JOIN
    Enrollments AS e ON c.ClassID = e.ClassID
GROUP BY
    c.CourseID
ORDER BY
    c.CourseID;

-- 2.  Find the average grade for each student.
SELECT
    s.FirstName,
    s.LastName,
    AVG(g.Score) AS AverageGrade
FROM
    Students AS s
JOIN
    Enrollments AS e ON s.StudentID = e.StudentID
JOIN
    Grades AS g ON e.EnrollmentID = g.EnrollmentID
GROUP BY
    s.StudentID, s.FirstName, s.LastName
ORDER BY
    AverageGrade DESC;

-- 3.  Calculate the total credits for each department.
SELECT
    d.DepartmentName,
    SUM(c.Credits) AS TotalCredits
FROM
    Departments AS d
JOIN
    Courses AS c ON d.DepartmentID = c.DepartmentID
GROUP BY
    d.DepartmentName
ORDER BY
    TotalCredits DESC;

-- 4.  Find the highest score for each assignment.
SELECT
    a.AssignmentName,
    MAX(g.Score) AS HighestScore
FROM
    Assignments AS a
JOIN
    Grades AS g ON a.AssignmentID = g.AssignmentID
GROUP BY
    a.AssignmentName
ORDER BY
    HighestScore DESC;

-- 5.  List classes with more than 5 students.
SELECT
    c.CourseID,
    COUNT(e.StudentID) AS NumberOfStudents
FROM
    Classes AS c
JOIN
    Enrollments AS e ON c.ClassID = e.ClassID
GROUP BY
    c.CourseID
HAVING
    COUNT(e.StudentID) > 2  
ORDER BY
    c.CourseID;

-- 6.  Find departments with an average course credit greater than 3.
SELECT
    d.DepartmentName,
    AVG(c.Credits) AS AverageCredits
FROM
    Departments AS d
JOIN
    Courses AS c ON d.DepartmentID = c.DepartmentID
GROUP BY
    d.DepartmentName
HAVING
    AVG(c.Credits) > 3
ORDER BY
    AverageCredits DESC;



-- 7.  Find the average score for each student in each class.
SELECT
    s.FirstName,
    s.LastName,
    cl.ClassID,
    AVG(g.Score) AS AverageScore
FROM
    Students AS s
JOIN
    Enrollments AS e ON s.StudentID = e.StudentID
JOIN
    Classes AS cl ON e.ClassID = cl.ClassID
JOIN
    Grades AS g ON e.EnrollmentID = g.EnrollmentID
GROUP BY
    s.StudentID, s.FirstName, s.LastName, cl.ClassID
ORDER BY
    s.LastName, cl.ClassID;

-- 8.  List courses with more than 2 classes.
SELECT
    c.CourseName,
    COUNT(cl.ClassID) AS NumberOfClasses
FROM
    Courses AS c
JOIN
    Classes AS cl ON c.CourseID = cl.CourseID
GROUP BY
    c.CourseName
HAVING
    COUNT(cl.ClassID) > 1
ORDER BY
    NumberOfClasses DESC;

-- 10. Show the total number of students enrolled in each department
SELECT
    d.DepartmentName,
    COUNT(e.StudentID) AS TotalStudentsEnrolled
FROM
    Departments d
JOIN    Courses c ON d.DepartmentID = c.DepartmentID
JOIN    Classes cl ON c.CourseID = cl.CourseID
JOIN    Enrollments e ON cl.ClassID = e.ClassID
GROUP BY d.DepartmentName
ORDER BY TotalStudentsEnrolled;



----Normalization 


CREATE TABLE Departments_data (
    DepartmentID SERIAL PRIMARY KEY,
    DepartmentName VARCHAR NOT NULL
);

select * from Departments_data


CREATE TABLE Students_data (
    StudentID SERIAL PRIMARY KEY,
    FirstName VARCHAR NOT NULL,
    LastName VARCHAR NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR ,
    Address VARCHAR
);

select * from Students_data
 
CREATE TABLE Courses_data (
    CourseID SERIAL PRIMARY KEY,
    CourseName VARCHAR NOT NULL,
    Credits INTEGER NOT NULL,
    DepartmentID INTEGER REFERENCES Departments(DepartmentID)
);
select * from Courses_data 


CREATE TABLE Teachers_data (
    TeacherID SERIAL PRIMARY KEY,
    FirstName VARCHAR NOT NULL,
    LastName VARCHAR NOT NULL,
    DepartmentID INTEGER REFERENCES Departments(DepartmentID)
);
select * from Teachers_data

CREATE TABLE Classes_data (
    ClassID SERIAL PRIMARY KEY,
    CourseID INTEGER REFERENCES Courses(CourseID),
    TeacherID INTEGER REFERENCES Teachers(TeacherID),
    Semester VARCHAR NOT NULL,
    ClassTime TIME,
    Classroom VARCHAR
);
select * from Classes_data 

CREATE TABLE Enrollments_data (
    EnrollmentID SERIAL PRIMARY KEY,
    StudentID INTEGER REFERENCES Students(StudentID),
    ClassID INTEGER REFERENCES Classes(ClassID),
    EnrollmentDate DATE NOT NULL,
    Grade VARCHAR,
    Score DECIMAL(5,2)
);
select * from Enrollments_data