FROM openjdk:8-jdk-alpine

VOLUME /tmp
COPY . .

EXPOSE 8080
EXPOSE 8443

ENTRYPOINT [ "/bin/standalone.sh" ]

CMD ["-b", "0.0.0.0"]