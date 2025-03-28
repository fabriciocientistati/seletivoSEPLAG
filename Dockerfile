FROM tomcat:10.1.15-jdk17-temurin-jammy

WORKDIR /app

COPY api.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
