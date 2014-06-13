#!/bin/bash
#------------------------------------------------
# Setting the productions password for sql 
# deploy projects.
#
#------------------------------------------------

# dansi.se
#------------------------------------------------
user='dansi'
pass='erytuHJH673ye1'

echo 'Setting dansi.se passwords.'
sed -i 's/<user>/'"$user"'/g' deploy.sh 
sed -i 's/<passwd>/'"$pass"'/g' deploy.sh
