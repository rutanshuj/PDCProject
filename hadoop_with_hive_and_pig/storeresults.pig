emp = LOAD '/user/dir4/hive_bundle/employee.csv' USING PigStorage (',') 
as (emp_id:chararray,fname:chararray,lname:chararray,dept_id:chararray);

dep = LOAD '/user/dir4/hive_bundle/department.csv' USING PigStorage (',') 
as (dept_id:chararray,dept_name:chararray);

dep_emp_join = JOIN emp by (dept_id), dep by (dept_id);

grouped = group dep_emp_join by dept_name;

group_by_count = foreach grouped {

                        uniq_emp = DISTINCT dep_emp_join.emp_id;
                        
                        generate group, COUNT(uniq_emp) as emp_count;
                        };

store group_by_count into '/user/dir4/hive_bundle/pig_output';