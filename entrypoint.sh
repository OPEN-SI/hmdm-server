pg_ctlcluster 11 main start
sudo -Hu postgres psql -U postgres -c "CREATE USER hmdm WITH PASSWORD 'topsecret';CREATE DATABASE hmdm WITH OWNER=hmdm;" postgres
cd /app/ && sh /app/hmdm_install.sh
sh $CATALINA_HOME/catalina.sh run 

