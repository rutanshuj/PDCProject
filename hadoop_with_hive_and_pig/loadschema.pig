
e = LOAD '/user/dir4/hive_bundle/employee.csv' USING PigStorage (',') 
as (eid:chararray,fname:chararray,lname:chararray,department:chararray);

e_sample = limit e 10;
dump e_sample;