FROM tomcat:10.1.15-jdk17-temurin-jammy

WORKDIR /app

# Baixar o driver JDBC do PostgreSQL
RUN wget https://jdbc.postgresql.org/download/postgresql-42.7.1.jar -O /usr/local/tomcat/lib/postgresql-42.7.1.jar

COPY api.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]