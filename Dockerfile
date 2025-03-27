# Base: Tomcat 10 + Java 17
FROM tomcat:10.1.15-jdk17-temurin-jammy

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia o WAR gerado pelo GeneXus para o Tomcat
COPY api.war /usr/local/tomcat/webapps/ROOT.war

# Expõe a porta do Tomcat
EXPOSE 8080

# Comando de inicialização do Tomcat
CMD ["catalina.sh", "run"]
