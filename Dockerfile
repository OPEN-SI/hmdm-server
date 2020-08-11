FROM tomcat:jdk8

RUN apt update && apt install -y postgresql
USER root
WORKDIR /app
COPY . /app
RUN chmod +x /app/hmdm_install.sh
RUN chmod +x /app/entrypoint.sh
CMD [ "sh","/app/entrypoint.sh" ]
