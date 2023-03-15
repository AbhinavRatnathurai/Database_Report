DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS One_off_payments;

CREATE TABLE Customers
(
	custNo          INTEGER not null,
	custName	    VARCHAR(20) not null,
	custSurname		VARCHAR(20) not null,
	custEmail	    VARCHAR(50) not null unique,
	custMobileNo	VARCHAR(15) not null,
	constraint 		c_cid_pk PRIMARY KEY (custNo)
	      
);

CREATE TABLE One_off_payments
(
	paymentRefNo	INTEGER not null,
	paymentDate 	DATE  not null,
	paymentAmount  	INTEGER not null,
	custNo 	        INTEGER not null,
	constraint 		off_payid_pk PRIMARY KEY (paymentRefNo),
	constraint 		c_offid_fk FOREIGN KEY (custNo)
	references      Customers(custNo)
);
INSERT INTO 
Customers (custNo,custName,custSurname,custEmail,custMobileNo)
VALUES 
(341, 'Albert', 'Pattek', 'albert.p@gmail.com', '209-200-3739'),
(342, 'Freddie', 'Patterson', 'freddie.p@gmail.com', '209-202-8997'),
(343, 'Sharon', 'Williams', 'sharon.w@gmail.com', '209-205-3634'),
(344, 'Robert', 'Patrick', 'robert.p@gmail.com', '209-206-4949'),
(345, 'Daniel', 'Mac', 'danielmac@gmail.com', '209-210-9776');

INSERT INTO 
One_off_payments (paymentRefNo,paymentDate,paymentAmount,custNo)
VALUES
(098765, '2022-06-20', 75, 341),
(098812, '2022-08-22', 80, 342),
(098340, '2022-04-08', 120, 343),
(098915, '2022-09-17', 70, 344),
(098657, '2022-05-23', 80, 345);


