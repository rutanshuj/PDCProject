d = LOAD '/user/dir4/hive_bundle/salary.csv' USING PigStorage (',') as (salary_id:chararray,employ_id:chararray,payment:double,p_date:datetime);
d_sample = limit d 10;
dump d_sample;
