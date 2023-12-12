#!/bin/bash

NAME=$1
mysql -uroot -p${MYSQL_ROOT_PASSWORD} -d${MYSQL_DATABASE} < /sql/$NAME.sql

