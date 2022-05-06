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
