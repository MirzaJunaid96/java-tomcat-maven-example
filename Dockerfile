# tis is sample docker file
FROM maven As build
COPY . /app
WORKDIR /app
RUN mvn clean package
# deployment 
FROM tomcat:latest
MAINTAINER Bharat
COPY --from=build /app/target/java-tomcat-maven-example.war /usr/local/tomcat/webapps/java-tomcat-maven-example.war

