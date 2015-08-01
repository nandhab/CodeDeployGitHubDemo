#!/bin/bash
mysql -h practice.cd5vru9wzyku.us-west-2.rds.amazonaws.com -u root << EOF
UPDATE mysql.user SET Password=PASSWORD('root') WHERE User='comverse';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';
FLUSH PRIVILEGES;
CREATE DATABASE practice;
EOF
