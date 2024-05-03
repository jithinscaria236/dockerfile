FROM anapsix/alpine-java
VOLUME /tmp
ADD target/petclinic.war app.war
EXPOSE 8081
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
