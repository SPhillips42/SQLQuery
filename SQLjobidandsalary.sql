--select * from employee;
--select * from job;
select * from employee e
join job j on j.id = e.jobid;