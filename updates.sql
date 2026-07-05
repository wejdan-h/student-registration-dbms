DECLARE
total_rows number (2);
BEGIN
UPDATE major SET levels = (levels / 3) *2 ;
IF sql%notfound THEN
 	dbms_output.put_line('no levels selected');
ELSIF sql%found THEN
    	total_rows:= sql%rowcount;
    	dbms_output.put_line(total_rows || ' major selected ');
END IF;
END;
/

  
DECLARE
total_rows number (2);
BEGIN
UPDATE professor SET Prof_name = 'Prof.' || Prof_name ;
IF sql%notfound THEN
	dbms_output.put_line('no professor are selected');
ELSIF sql%found THEN
	total_rows:= sql%rowcount;
	dbms_output.put_line(total_rows || ' professor  selected ');
END IF;
END;
/
