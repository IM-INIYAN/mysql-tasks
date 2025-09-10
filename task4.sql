use practice;
select * from emp3;
delimiter $$
create procedure updatedepartment(in empid int,in newdepartment varchar(50),out message varchar(50))
begin
    declare currentdepartment varchar(30);
    select department into currentdepartment from emp3 where empid = emp_id;
    if newdepartment != currentdepartment then
    update emp3 set department=newdepartment where empid = emp_id;
    set message ='department changed successfully';
    else
    set message ='no changes in the department';
    end if;
    end $$
delimiter ;

set @msg='';
call updatedepartment(3,'test',@msg);
select @msg as department_update_status;
select * from emp3;