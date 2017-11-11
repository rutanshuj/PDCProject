g = LOAD '/user/dir4/hive_bundle/employee.csv' USING PigStorage (',') as (eid:chararray,fname:chararray,lname:chararray,department:chararray);

f = group g by department;
f_sample = limit f 2;
dump f_sample;