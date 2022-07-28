FROM tomcat:8.0.20-jre8
### Good stuff
COPY target/web-app.war /usr/local/tomcat/webapps/ebay.war
