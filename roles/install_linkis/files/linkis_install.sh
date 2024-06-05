#!/bin/bash


echo $(hostname)
expect  << EOF
  set timeout -1;
  spawn su - hadoop -c "sh /usr/hdp/3.1.5.0-152/linkis/sbin/install.sh"
  expect "*Please input your choice*"
  send "2\n"
#  expect "*Please input your choice*"
#  send "2\n"
  expect eof


EOF
