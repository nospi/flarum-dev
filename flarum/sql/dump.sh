#!/bin/bash

NAME=${MYSQL_DATABASE}_$(date +"%Y%m%d_%H%M%S").sql
mysqldump -uroot -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} > /sql/$NAME
cp /sql/$NAME /sql/latest.sql
