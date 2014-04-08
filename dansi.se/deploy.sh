#!/bin/bash
#------------------------------------------------
# Deploy script for wapi sql scripts
#
#------------------------------------------------
db='dansidb'
user='<user>'
pass='<passwd>'


#------------------------------------------------
# Table deploy scripts
#
# echo '<SQL_SCRIPT>'
# mysql -u <USER> -p<PASS> <DATABASE> < <SQL_SCRIPT>
#------------------------------------------------
echo 'Products.sql'
"$mysql_path"mysql -u "$user" -p"$pass" "$db" < tbl_products.sql


#------------------------------------------------
# Stored Procedure deploy scripts
#
# echo '<SQL_SCRIPT>'
# mysql -u <USER> -p<PASS> <DATABASE> < <SQL_SCRIPT>
#------------------------------------------------
echo 'Get_all_products.sql'
"$mysql_path"mysql -u "$user" -p"$pass" "$db" < pro_get_all_products.sql

echo 'New_order.sql'
"$mysql_path"mysql -u "$user" -p"$pass" "$db" < pro_new_order.sql
