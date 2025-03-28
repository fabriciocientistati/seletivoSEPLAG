FROM tomcat:10.1.15-jdk17-temurin-jammy

WORKDIR /app

# Baixar o driver JDBC do PostgreSQL
RUN wget https://jdbc.postgresql.org/download/postgresql-42.7.1.jar -O /usr/local/tomcat/lib/postgresql-42.7.1.jar

# Verificação do download
RUN ls -l /usr/local/tomcat/lib/postgresql-42.7.1.jar

COPY api.war /usr/local/tomcat/webapps/ROOT.war

# Script para verificar o classpath
COPY check-classpath.sh /usr/local/tomcat/bin/check-classpath.sh
RUN chmod +x /usr/local/tomcat/bin/check-classpath.sh

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/check-classpath.sh", "&&", "catalina.sh", "run"]