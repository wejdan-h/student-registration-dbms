CREATE TABLE student(
    stu_id number(9),
	stu_name varchar2(30) NOT NULL,
	gender char(1) NOT NULL,
	phone_No number(10)
);
COMMENT ON COLUMN student.gender IS '1 = MALE , 
2 = FEMALE';
ALTER TABLE student ADD(
 CONSTRAINT student_C01
 CHECK(gender IN (1, 2)),  
 CONSTRAINT student_PK
 PRIMARY KEY (stu_id));

CREATE TABLE major
(
m_name     varchar2(30),
years      number(1),
levels     number(2)
);
ALTER TABLE major ADD (
CONSTRAINT major_PK
PRIMARY KEY (m_name));

CREATE TABLE subject
(
sub_code   varchar2(10),
sub_name   varchar2(30)NOT NULL,
grade      number(10),
class      varchar2(10),
times      varchar2(11)
);
ALTER TABLE subject ADD (
 CONSTRAINT subject_PK
 PRIMARY KEY (sub_code));

CREATE TABLE academic_advisor 
(
 A_id     number(9),
phone_No  number(10) NOT NULL,
A_name    varchar2(30)
);
ALTER TABLE academic_advisor ADD (
CONSTRAINT academic_dvisor_PK
PRIMARY KEY ( A_id ));

CREATE TABLE professor
(
Prof_id   NUMBER(9) NOT NULL,
Prof_name  varchar2(30),
phone_No   NUMBER(10),
sub_code   varchar2(10)
);

ALTER TABLE professor ADD (
 CONSTRAINT professor_PK
 PRIMARY KEY (Prof_id));

ALTER TABLE professor ADD( 
 CONSTRAINT professor_R01  
 FOREIGN KEY(sub_code) 
 REFERENCES subject (sub_code));

CREATE TABLE Registration(
    R_id  number(10),
	stu_id  number(9),
	m_name varchar2(30),
	A_id number(9),
	sub_code varchar2(10));

ALTER TABLE Registration ADD(
 CONSTRAINT Registration_PK
 PRIMARY KEY (R_id));

ALTER TABLE Registration ADD(
    CONSTRAINT Registration_R01 
 FOREIGN KEY(stu_id)
 REFERENCES student (stu_id),
    CONSTRAINT Registration_R02 
 FOREIGN KEY(m_name)
 REFERENCES major (m_name),
    CONSTRAINT Registration_R03 
 FOREIGN KEY(A_id)
 REFERENCES academic_advisor  (A_id),
    CONSTRAINT Registration_R04 
 FOREIGN KEY(sub_code)
 REFERENCES subject (sub_code));
