FROM jenkins/jenkins:lts-jdk21
USER root

# Instalar Docker CLI dentro del contenedor
RUN apt-get update && apt-get install -y docker.io

# Copiar script Groovy para crear usuario admin automáticamente
COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/

USER jenkins
