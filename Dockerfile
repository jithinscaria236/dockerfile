# Use official Tomcat image as base
FROM tomcat:latest

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY /var/lib/jenkins/workspace/sonar-maven/target/petclinic.war  /usr/local/tomcat/webapps/your-application.war

# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]

