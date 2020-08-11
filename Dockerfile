FROM tomcat:jdk8

RUN apt update && apt install -y postgresql aapt
USER root
COPY . .
RUN chmod +x hmdm_install.sh
RUN chmod +x entrypoint.sh
CMD [ "bash", "entrypoint.sh" ]
