FROM giovanniguarino/tomcat-maven
RUN apt-get install -y git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd /opt/tomcat/boxfuse-sample-java-war-hello && mvn package && cp /opt/tomcat/boxfuse-sample-java-war-hello/target/hello-1.0.war /opt/tomcat/webapps/host-manager
EXPOSE 8080
EXPOSE 8009
CMD ["catalina.sh", "run"]
                              
