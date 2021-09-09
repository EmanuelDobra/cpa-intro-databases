-- from vendors;

-- Concat function
select vendor_city, vendor_state,
		CONCAT (vendor_city, ', ', vendor_state) AS 'City and State'
from vendors;

-- using date in WHERE clause

select * 
from invoices
where invoice_date <= '2018-07-31';

select *
from invoices
where payment_total < 500
order by -payment_total;

-- use fitness database to create a query using two tables 
select memberFName, memberCity, programDesc
from members, program; -- this will give incorrect output

select memberFName, memberCity, programDesc
from program
	join members
	on program.programID = members.programID;
    
-- switch back to AP database
-- display vendor's name, phone, invoice date, invoice total
-- sort by vendor's name

select vendor_name, vendor_phone, invoice_date, invoice_total
from vendors
	join invoices
    on vendors.vendor_id = invoices.vendor_id
order by vendor_name;

