# Use official Tomcat image as base
FROM tomcat:latest

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

ADD target/petclinic.war  /usr/local/tomcat/webapps/


# Expose the default Tomcat port
EXPOSE 8081

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]

