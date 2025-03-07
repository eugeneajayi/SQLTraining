--how to check data in a table

select *
from noble

--show the year 1962
select *
from noble
where year = '1962'

--show where the subject is medicine
select *
from noble
where subject = 'Medicine'

--show the latest year
select MAX (year) as "latest year"
from noble 

--show number of records in the table
select count (*) as number_of_records
from noble