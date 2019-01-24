select * from job j
join Employee e
on e.JobId = j.id
where salary >= 100000;
