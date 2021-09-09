-- table sys.optimize

USE ap;

SELECT *
FROM vendors;

SELECT *
FROM invoices;

SELECT invoice_number, invoice_date, invoice_total
FROM invoices;

SELECT invoice_number AS 'Invoice Number', -- AS keyword to create alias for column
	   invoice_total AS Total
FROM invoices;

SELECT invoice_number, invoice_total, payment_total,
	   invoice_total - payment_total AS amount_owe
FROM invoices;

SELECT *
FROM vendors;

select *
from vendors
where vendor_state = 'ca';

select *
from vendors
where vendor_state = 'nj' AND vendor_city = 'fairfield';

select *
from invoices
where invoice_total between 1000 and 1500; -- includes values from x >= 1000 and x <= 1500

select *
from vendors
where vendor_state in('ca', 'nv', 'or');

select *
from vendors 
where vendor_city like 'san%';

select *
from vendors 
where vendor_city like 'san%' or where vendor_city like 'cor%';

select vendor_name, vendor_city
from vendors
order by vendor_city, vendor_name;

select vendor_name, vendor_city AS city 
from vendors
order by city, vendor_name; -- can sort by alias if it is not in quotes ('city' woudn't work)