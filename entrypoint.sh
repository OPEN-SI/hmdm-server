service postgresql start 
psql -U postgres -c "CREATE USER hmdm WITH PASSWORD 'topsecret';" postgres
psql -U postgres -c "CREATE DATABASE hmdm WITH OWNER=hmdm;" postgres
bash hmdm_install.sh
