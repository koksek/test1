FROM mcneilco/tomcat-maven
RUN apt-get update && apt-get install -y git && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && mvn package /boxfuse/boxfuse-sample-java-war-hello && cp hello-1.0.war /usr/local/tomcat
EXPOSE 8080
CMD ["catalina.sh", "run"]
