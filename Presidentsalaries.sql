select * 
from job j
join employee e
on e.jobid = j.id
where j.Description = 'President';