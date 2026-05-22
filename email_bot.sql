CREATE DATABASE IF NOT EXISTS email_bot;
USE email_bot;

/*
The code below is used to save incoming emails
*/
CREATE TABLE IF NOT EXISTS emails(
id INT  AUTO_INCREMENT PRIMARY KEY,
sender_email VARCHAR(50),
subject VARCHAR(50),
body TEXT,
category VARCHAR(50),
status VARCHAR(50),
received_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 ALTER TABLE emails
 ADD COLUMN forwarded_to VARCHAR(100);


/*
The code below is for receivers
*/
CREATE TABLE IF NOT EXISTS receivers(
id INT AUTO_INCREMENT PRIMARY KEY,
category VARCHAR(50),
receiver_email VARCHAR(100)
);
ALTER TABLE emails
ADD COLUMN forwarded_to VARCHAR(255);

/*
This code below is used to insert data in columns
*/
INSERT INTO receivers (category, receiver_email)
VALUES
('billing', 'billing123@gmail.com'),
('sales', 'sales479@gmail.com'),
('support', 'sangitamok89@gmail.com');

SELECT * FROM emails;
SELECT * FROM receivers;

DELETE FROM emails WHERE id=1; 
