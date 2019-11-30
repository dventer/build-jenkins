# build-jenkins

mkdir -p /var/docker/jenkins

docker run -itd -p 8080:8080 -v /var/docker/jenkins:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /etc/localtime:/etc/localtime \
  -p 50000:50000 jenkinsci/blueocean
  
  
