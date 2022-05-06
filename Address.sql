create database AddressBookService;
use AddressBookService;
CREATE TABLE addressBook (
		id int not null auto_increment primary key,
		firstname varchar(20) NOT NULL, 
        lastname varchar(20) NOT NULL,
        address varchar(100),
        city varchar(20) NOT NULL,
        state varchar(20) NOT NULL,
        zip integer(6),
        phonenumber varchar(10) NOT NULL,
        email varchar(20) NOT NULL UNIQUE
);
desc addressBook;

INSERT INTO addressbook VALUES
(1,'sirisha','kopparaju','TS','HYD','Telangana','424112','1234567890', 'sirisha@gmail.com'),
(2,'sowjanya','vadlamani','TS','HYD','Telangana','420166','9191919291', 'sowjanya@gmail.com'),
(3,'kittu','Krishna','TS','HYD','Telangana','487879','4567890125', 'kittu@yahoo.com'),
(4,'arun','banti','TS','MB','Telangana','43342','6577567890', 'arun@gmail.com');
SELECT * FROM addressbook;
UPDATE addressbook SET firstname = 'siri'
WHERE id = 1; 

SELECT * from addressbook where firstname = 'siri';
SELECT firstname from addressbook where firstname = 'siri';
select * from addressbook;
DELETE from addressbook WHERE id = 1;
SELECT * FROM addressbook WHERE firstname = 'siri';
SELECT * from addressbook where city = 'HYD' OR state = 'TS';
SELECT  city, state, COUNT(*) from addressbook where city = 'HYD' AND state = 'Telangana';
SELECT * FROM addressbook WHERE state = 'Telangana' ORDER BY firstname ASC;
SELECT * FROM addressbook WHERE state = 'Telangana' ORDER BY firstname DESC;
ALTER  TABLE addressbook add ab_name varchar(20);
alter table addressbook add ab_type char(20);

update addressbook set ab_name = 'AddressBook1' where id = 2;
update addressbook set ab_name = 'AddressBook2' where id = 1;
update addressbook set ab_name = 'AddressBook3' where id IN (3,4);

update addressbook set ab_type = 'family' where id = 1;
update addressbook set ab_type = 'friends' where id = 2;
update addressbook set ab_type = 'profession' where id IN(3,4);
SELECT ab_type, COUNT(*) FROM addressbook GROUP BY ab_type;