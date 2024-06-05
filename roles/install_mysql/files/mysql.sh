#!/bin/bash
mysql -u root -pAdmin_123 <<EOF
use mysql;
update mysql.user set authentication_string=password('Admin_123') where user='root';
EOF
