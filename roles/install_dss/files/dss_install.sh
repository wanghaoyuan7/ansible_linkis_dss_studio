#!/bin/bash
expect  << EOF
  set timeout -1;
  spawn sh /usr/hdp/3.1.5.0-152/dssInstall/bin/install.sh
  expect "*Please input the choice*"
  send "2\n"
  expect "*cp: overwrite ‘/usr/hdp/3.1.5.0-152/dssInstall/db/dss_dml_real.sql*"
  send "Y\n"
  expect eof
EOF
