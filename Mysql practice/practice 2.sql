use thescholar;
select * from employee;
select abs(-456);
select deptid,avg(esalary) from employee
group by deptid;
alter table employee
drop column commission;
desc employee;

insert into employee (commission) values(10),(20),(5),(8),(9),(7),(2);
select * from employee;

select deptid,esalary,esalary*12 yearly_salary from employee;

select e.deptid,dname,avg(esalary) from employee e inner join departments d
on e.deptid=d.deptid
group by deptid;

select * from(
select ename,esalary,(esalary+(esalary*0.5))*12 yearly_salary,
case
	when (esalary+(esalary*0.5))*12 >= 15000 and
    (esalary+(esalary*0.5))*12 <= 30000 then 'low salary'
    when (esalary+(esalary*0.5))*12 >= 30000 and
    (esalary+(esalary*0.5))*12 <= 60000 then 'avg salary'
    else 'high salary'
end salary_category
from employee) tbl
where salary_category='low salary';

select * from employee;


select * from(
select ename,deptid,dname,esalary,yearly_salary,
case
	when yearly_salary >=15000 and yearly_salary <=30000 then 'Low salary'
    when yearly_salary >=30000 and yearly_salary <=60000 then 'Avg salary'
    else 'High salary'
end salary_category
from(
select ename,e.deptid,dname,esalary,(esalary+(esalary*0.5))*12 yearly_salary 
from employee e inner join departments d 
on e.deptid=d.deptid) tbl)tbl1
where salary_category ='High salary';
