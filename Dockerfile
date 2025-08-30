FROM jenkins/jenkins:lts

# Copiar script Groovy para crear usuario admin automáticamente
COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/
