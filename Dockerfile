FROM harisekhon/ubuntu-java:jdk8

RUN apt update && apt install -y postgresql aapt tomcat8
USER root
COPY . .
RUN chmod +x hmdm_install.sh
RUN chmod +x entrypoint.sh
USER postgres
CMD [ "bash", "entrypoint.sh" ]
