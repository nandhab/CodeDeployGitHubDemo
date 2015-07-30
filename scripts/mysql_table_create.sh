#!/bin/bash
mysql -u localhost -u root -proot -D test << EOD1
CREATE TABLE contact
(
contactID INT(9) NOT NULL auto_increment,
contactName VARCHAR(40) NOT NULL,
contactEmail VARCHAR(40) NOT NULL,
message VARCHAR(250) NOT NULL,
PRIMARY KEY(contactID)
);

EOD1
