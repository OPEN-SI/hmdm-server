psql -U postgres -c "CREATE USER hmdm WITH PASSWORD 'topsecret';CREATE DATABASE hmdm WITH OWNER=hmdm;" postgres
./app/hmdm_install.sh
sh $CATALINA_HOME/catalina.sh run
