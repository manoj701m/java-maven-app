# Use the official Tomcat image as a base
FROM tomcat:9-jdk11

# Optionally, you can add additional configurations or copy your application WAR file
# For example, if you have a local "amazon.war" file, you can copy it to the webapps directory
# COPY ./amazon.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080
