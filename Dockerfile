FROM tomcat:jdk8

RUN apt update && apt install -y postgresql
USER postgres
RUN psql -U postgres -c "CREATE USER hmdm WITH PASSWORD 'topsecret';CREATE DATABASE hmdm WITH OWNER=hmdm;" postgres

USER root
WORKDIR /app
COPY . /app
RUN chmod +x /app/hmdm_install.sh
CMD [ "sh","/app/hmdm_install.sh" ]
