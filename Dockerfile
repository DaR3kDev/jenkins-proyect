FROM jenkins/jenkins:lts-jdk21
USER root

# Instalar Docker CLI
RUN apt-get update && \
    apt-get install -y docker.io && \
    rm -rf /var/lib/apt/lists/*

# Agregar usuario jenkins al grupo docker
RUN groupadd -f docker && usermod -aG docker jenkins

# Copiar script Groovy para crear usuario admin automáticamente
COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/

USER jenkins
