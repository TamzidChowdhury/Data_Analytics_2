DROP TABLE IF EXISTS customer_info;
CREATE TABLE customer_info
(
    customer_id serial PRIMARY KEY,
    customerName character varying,
    city character varying,
    email character varying,
    address character varying,
    postalCode character varying,
    country character varying 
); 
select *from customer_info
--Insert 3 rows of data into these columns using INSERT.

INSERT INTO
customer_info (
    customername,
	city,
	email,
	address,
	postalCode,
	country
)
VALUES
    (
        'Jonathan Dermer',
		'Omaha',
		'Jdermer@hotmail.com',
		'454 Jr Stree',
		'113435',
		'US'
    ),
    (
        'Henry Wang',
		'New York City',
		'Hwang@yahoo.com',
		'737 Bernon Stree',
		'12134',
		'US'
		
		
    ),
    (
        'David Warner',
		'Sydney',
		'Dwarner@gmail.com',
		'Warren Street',
		'113422',
		'Australia'
    );
	
-- Use an UPDATE to modify any portion of the data
update customer_info 
set city = 'Osaka' 
where customername = 'Henry Wang'

-- Finally, write a statement to delete one row of data.

delete from customer_info
where customername = 'David Warner'
