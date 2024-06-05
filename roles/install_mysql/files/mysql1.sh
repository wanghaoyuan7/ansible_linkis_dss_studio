#!/bin/bash
mysql --connect-expired-password -u root -pAdmin_123 <<EOF
alter user 'root'@'localhost' identified by 'Admin_123';
flush privileges;
grant all privileges on *.* to 'root'@'%' IDENTIFIED BY 'Admin_123';
flush privileges;
EOF
