FROM jenkins/jenkins:lts
ENV JAVA_OPTS=-Dhudson.footerURL=http://local.dev
EXPOSE 8080
