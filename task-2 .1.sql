CREATE TABLE zenclass (coordinator_id INT,
 FOREIGN KEY (coordinator_id) REFERENCES coordinator(coordinator_id),
 coordinator_name VARCHAR(30),batch_id INT PRIMARY KEY );
 
 
CREATE TABLE coordinator (coordinator_id INT PRIMARY KEY,
mentor_name VARCHAR(30),
mentor_id INT,FOREIGN KEY(mentor_id) REFERENCES mentor(mentor_id),
batch_name VARCHAR(30),batch_id INT,
FOREIGN KEY(batch_id) REFERENCES zenclass(batch_id),
student_id INT,FOREIGN KEY(student_id) REFERENCES student(student_id),
student_name VARCHAR(30),task_id VARCHAR(30) );


CREATE TABLE mentor(mentor_id INT PRIMARY KEY,
mentor_name VARCHAR(30),batch_name VARCHAR(30),
student_id INT,FOREIGN KEY(student_id) REFERENCES student(student_id),
student_name VARCHAR(30),
task_id VARCHAR(30),batch_id INT,
FOREIGN KEY(batch_id)REFERENCES zenclass(batch_id));


CREATE TABLE students(student_id INT PRIMARY KEY,
student_name VARCHAR(30),
batch_name VARCHAR(30),
batch_id INT,FOREIGN KEY(batch_id)REFERENCES zenclass(batch_id),
task_id VARCHAR(30));


CREATE TABLE queries(query_id INT PRIMARY KEY,
batch_id INT,FOREIGN KEY(batch_id) REFERENCES zenclass(batch_id),
student_id INT,FOREIGN KEY(student_id) REFERENCES student(student_id));