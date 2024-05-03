FROM openjdk:8
EXPOSE 8082
ADD target/petclinic.war /petclinic.war
ENTRYPOINT ["java","-Dloader.main=org.springframework.boot.loader.JarLauncher","-jar","/petclinic.war"]
