FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

LABEL maintainer="Sharelison <sharelison@hotmail.com>"

RUN curl -o /tmp/app.jar "https://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.25.1/wiremock-standalone-2.25.1.jar"

USER 1001

ENTRYPOINT ["java", "-jar", "/tmp/app.jar"]
