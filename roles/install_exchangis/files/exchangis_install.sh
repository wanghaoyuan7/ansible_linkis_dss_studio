#!/bin/bash
echo $(hostname)
expect  << EOF
  set timeout -1;
  spawn sh /usr/hdp/3.1.5.0-152/exchangis/sbin/install.sh
  expect "*Do you want to initalize database with sql*"
  send "Y\n"
  expect eof
EOF
