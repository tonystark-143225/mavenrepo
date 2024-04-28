# Use the official Tomcat image as the base image
FROM tomcat:latest

# Remove the default ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into the webapps directory of Tomcat
COPY /harness/target/dependency/javax.servlet-api-3.0.1.jar /usr/local/tomcat/webapps/ROOT.war

# Optionally, you can expose the default Tomcat port (8080)
EXPOSE 8080
