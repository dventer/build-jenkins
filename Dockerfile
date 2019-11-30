FROM jenkinsci/blueocean:1.21.0
VOLUME /var/jenkins_home
RUN apk add tzdata \
  && cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
EXPOSE 8080
EXPOSE 50000
