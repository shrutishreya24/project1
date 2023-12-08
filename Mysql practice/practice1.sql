use thescholar;
select * from employee;
select * from departments;
insert into departments values(50,"Finance"),(60,"Retail");
select * from employee e left outer join departments d
on e.deptid=d.deptid;
insert into employee (eid,ename,esalary,email) values (7,'F',7600,'i@gmail');
desc employee;
select * from departments d right outer join employee e
on e.deptid=d.deptid;
select * from departments d right outer join employee e
on e.deptid=d.deptid;
select * from employee e right outer join departments d
on e.deptid=d.deptid
union
select * from employee e left outer join departments d
on e.deptid=d.deptid;
select * from employee e left outer join departments d
on e.deptid=d.deptid
union
select * from employee e right outer join departments d
on e.deptid=d.deptid;

select * from employee;
use thescholar;
select * from employee;
select * from departments;
select dname,char_length(dname) from departments;
select dname,instr(dname,'a') from departments;
select ename,email,concat(ename,' ',email) from employee;
select ename,email,concat_ws('*',ename,email) from employee;

select insert('shruti shreya',8,6,'sinha');

select insert("Rupesh sinha",8,5,"ji");

select instr("www.thescholar.com","s");

select left(dname,1) from departments;

select dname,left(dname,3),right(dname,2),
concat(left(dname,3),' ',right(dname,2)) from departments;

select dname,lpad(dname,5,'*'),rpad(dname,6,'*') from departments;

select ltrim(lpad(dname,5,'*')) from departments;
select upper(dname),ucase(dname),lower(dname),lcase(dname) from departments;

select dname,mid(dname,2,4),position('e' in dname) from departments;

select dname,repeat(dname,3),reverse(dname) ,replace(dname,'HR','RH') from departments;

select * from employee;

select email,left(email,1),lpad(email,10,'&'),substr(email,1,2),
substr(email,3),substr(email,3,2),substring(email,2),
substring_index(email,'a',2) from employee; 

select substring_index('w.ws.ed.e.rf.tg.a','.',4);

select ename,email,substr(email,1,1),strcmp(ename,substr(email,1,1)) from employee;
update employee
set email = 'bd@gmail'
where ename='f';
set sql_safe_updates =0;

select * from employee;
