**Sebelum build Dockerfile**
```
mkdir -p /var/docker/jenkins \
  && chown 1000:1000 /var/docker/jenkins

docker run -itd -p 8080:8080 -v /var/docker/jenkins:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /etc/localtime:/etc/localtime \
  -p 50000:50000 jenkinsci/blueocean
 
docker run -itd -p 8080:8080 \
  -v /var/docker/jenkins:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 50000:50000 --name jenkins_master jenkinsci/blueocean
 ```
 
 Setelah selesai lihat initial password
 `cat /var/docker/jenkins/secrets/initialAdminPassword`
  
