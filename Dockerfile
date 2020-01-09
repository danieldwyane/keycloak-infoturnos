FROM openjdk:8-jdk-alpine

#ENV KEYCLOAK_VERSION 8.0.0
#ENV JDBC_POSTGRES_VERSION 42.2.5

#ENV LAUNCH_JBOSS_IN_BACKGROUND 1
#ENV PROXY_ADDRESS_FORWARDING false
#ENV JBOSS_HOME /opt/jboss/keycloak
#ENV LANG en_US.UTF-8

VOLUME /tmp
COPY . .

#USER root

#RUN microdnf update -y && microdnf install -y gzip hostname java-11-openjdk-headless openssl tar which && microdnf clean all

#ADD tools /opt/jboss/tools
#RUN /opt/jboss/tools/build-keycloak.sh

#USER 1000

EXPOSE 8080
EXPOSE 8443

ENTRYPOINT [ "/bin/standalone.sh" ]
#ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

#CMD ["sh","/bin/standalone.sh"]
CMD ["-b", "0.0.0.0"]
