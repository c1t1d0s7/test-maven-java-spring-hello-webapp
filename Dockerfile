FROM tomcat:9-jre8
COPY target/hello-world.war /usr/local/tomcat/webapps/
