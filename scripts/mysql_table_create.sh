#!/bin/bash
mysql -u practice.cd5vru9wzyku.us-west-2.rds.amazonaws.com -u root -proot -D practice << EOD1
CREATE TABLE contact
(
contactID INT(9) NOT NULL auto_increment,
contactName VARCHAR(40) NOT NULL,
contactEmail VARCHAR(40) NOT NULL,
message VARCHAR(250) NOT NULL,
PRIMARY KEY(contactID)
);

EOD1
