pg_ctlcluster 11 main start
psql -U postgres -c "CREATE USER hmdm WITH PASSWORD 'topsecret';CREATE DATABASE hmdm WITH OWNER=hmdm;" postgres
bash hmdm_install.sh
