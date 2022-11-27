FROM jenkins/jenkins:2.361.4

ARG USER=jenkins
ARG PLUGIN_FILE=/etc/jenkins/plugins.txt

USER ${USER}
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt ${PLUGIN_FILE}
RUN jenkins-plugin-cli --verbose --latest false --plugin-file ${PLUGIN_FILE}