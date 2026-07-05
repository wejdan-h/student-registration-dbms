CREATE OR REPLACE PROCEDURE student_insert
    (
    P_stu_id    student.stu_id%TYPE,
    P_stu_name  student.stu_name%TYPE,
    P_gender    student.gender%TYPE,
    P_phone_No  student.phone_No%TYPE
    )
    AS
    BEGIN 
    INSERT INTO student (
        stu_id,
		stu_name,
		gender,
		phone_No)
    VALUES(
        P_stu_id,
    	P_stu_name,
    	P_gender,
    	P_phone_No);
	COMMIT;
    DBMS_OUTPUT.PUT_LINE('RECORD OF ' ||P_stu_name||' 
    '||'INSERTED SUCCESSFULLY ....!');
    EXCEPTION 
    WHEN OTHERS THEN 
    DBMS_OUTPUT.PUT_LINE('UNEXPECTED ERRORS HAPPENED '||' 
    '||SQLERRM); 
END;
/

EXEC student_insert (1,'WIJDAN', 2, 0555436789);
EXEC student_insert (2,'RAGHAD', 2, 0554398789);


CREATE OR REPLACE PROCEDURE major_INSERT 
(
P_m_name      major.m_name%TYPE, 
P_years     major.years%TYPE,
P_levels    major.levels%TYPE 
    )   
AS 
BEGIN 
INSERT INTO major (m_name,years,levels) 
VALUES (P_m_name,P_years,P_levels);
COMMIT;
DBMS_OUTPUT.PUT_LINE('RECORD OF ' ||P_m_name||' 
'||'INSERTED SUCCESSFULLY ....!');
EXCEPTION 
WHEN OTHERS THEN 
DBMS_OUTPUT.PUT_LINE('UNEXPECTED ERRORS HAPPENED '||' 
'||SQLERRM); 
END;
/
         
EXEC major_INSERT  ('computer Science',5,15);
EXEC major_INSERT  ('Physics',4,12);
EXEC major_INSERT  ('Mathematic',4,12);


CREATE OR REPLACE PROCEDURE subject_INSERT   (  
P_sub_code      subject.sub_code%TYPE,  
P_sub_name      subject.sub_name%TYPE,  
P_grade         subject.grade %TYPE,  
P_class         subject.class%TYPE,  
P_times         subject.times %TYPE   )  
AS   
BEGIN   
INSERT INTO subject
    (   sub_code,   sub_name,    grade,    class,    times   )  
VALUES (  
 P_sub_code,   
 P_sub_name,   
 P_grade,   
 P_class,   
 P_times   );  
COMMIT;  
DBMS_OUTPUT.PUT_LINE('RECORD OF ' ||P_sub_name||'   
'||'INSERTED SUCCESSFULLY ....!');  
EXCEPTION   
WHEN OTHERS THEN   
DBMS_OUTPUT.PUT_LINE('UNEXPECTED ERRORS HAPPENED '||'   
'||SQLERRM);   
END;  
/

EXEC subject_INSERT('Math','Algebra',90,'ES-15','12:00');
EXEC subject_INSERT('DB','DBMS',99,'BS-05','9:00');


CREATE OR REPLACE PROCEDURE academic_advisor_INSERT 
(
P_A_id       academic_advisor.A_id%TYPE,
P_A_name      academic_advisor.A_name%TYPE,
P_phone_No    academic_advisor.phone_No %TYPE
)
AS 
BEGIN 
INSERT INTO academic_advisor(
A_id,      
A_name,    
phone_No 
 )
VALUES (
P_A_id,    
P_A_name,    
P_phone_No
);
COMMIT;
DBMS_OUTPUT.PUT_LINE('RECORD OF ' ||P_A_name||' 
'||'INSERTED SUCCESSFULLY ....!');
EXCEPTION 
WHEN OTHERS THEN 
DBMS_OUTPUT.PUT_LINE('UNEXPECTED ERRORS HAPPENED '||' 
'||SQLERRM); 
END;
/

EXEC academic_advisor_INSERT(1,'HIND', 0566677754);
EXEC academic_advisor_INSERT(2,'LOJIAN', 0566337754);


CREATE OR REPLACE PROCEDURE professor_INSERT 
(
P_Prof_id professor.Prof_id%TYPE, 
P_Prof_name professor.Prof_name%TYPE,
P_phone_No professor.phone_No%TYPE,
P_sub_code professor.sub_code%TYPE)
AS 
BEGIN 
INSERT INTO professor (Prof_id, Prof_name,phone_No,sub_code)
VALUES (P_Prof_id,P_Prof_name,P_phone_No,P_sub_code);
COMMIT;
DBMS_OUTPUT.PUT_LINE('RECORD OF ' ||P_Prof_name||' 
'||'INSERTED SUCCESSFULLY ....!');
EXCEPTION 
WHEN OTHERS THEN 
DBMS_OUTPUT.PUT_LINE('UNEXPECTED ERRORS HAPPENED '||' 
'||SQLERRM); 
END;
/

EXEC professor_INSERT(124567535,'Aisha ALQahtani',0554433221,'DB');
EXEC professor_INSERT(864987535,'Aisha Muhammad',0987433221,'Math');


CREATE OR REPLACE PROCEDURE Registration_INSERT(
P_R_ID Registration.R_ID%TYPE,
P_stu_id Registration.stu_id%TYPE,
P_m_name Registration.m_name%TYPE,
P_A_id  Registration.A_id %TYPE,
P_sub_code Registration.sub_code%TYPE)
AS 
BEGIN 
INSERT INTO Registration(
R_ID,
stu_id,
m_name,
A_id,
sub_code)
VALUES(
 P_R_ID,
 P_stu_id,
 P_m_name,
 P_A_id, 
 P_sub_code);
 COMMIT;
DBMS_OUTPUT.PUT_LINE('RECORD OF R_ID ' ||P_R_ID||' 
'||'INSERTED SUCCESSFULLY ....!');
EXCEPTION 
WHEN OTHERS THEN 
DBMS_OUTPUT.PUT_LINE('UNEXPECTED ERRORS HAPPENED '||' '||SQLERRM); 
END;
/

EXEC Registration_INSERT(1, 1, 'computer Science', 1,'DB');
EXEC Registration_INSERT(2, 2, 'Mathematic', 2,'Math');
