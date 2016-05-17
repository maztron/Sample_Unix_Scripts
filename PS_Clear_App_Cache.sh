Shell script to clear PeopleSoft Application Server Cache
PeopleTools 8.52

#!/bin/bash
echo "PeopleSoft App Server shutting down domain DEV01"
psadmin -c shutdown! -d DEV01
sleep 20
rm -rf /psoft/pt852/fin91/appserv/DEV01/CACHE/*
echo "Cache deleted for DEV01"
sleep 20
echo "PeopleSoft App Server booting domain DEV01"
psadmin -c boot -d DEV01
