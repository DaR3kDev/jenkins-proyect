FROM jenkins/jenkins:lts

# Desactiva el wizard de instalación
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Copiar script Groovy para crear usuario admin automáticamente
COPY default-user.groovy /usr/share/jenkins/ref/init.groovy.d/
