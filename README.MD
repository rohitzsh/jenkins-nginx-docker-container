# Introduction
This is a Jenkins with Nginx docker compose.

## Explain Structure
Two containers are created and combined together with docker compose.

Jenkins listens to 8080 port which is exposed using jenkins.Dockerfile and binded to guest os using docker-compose port "8080:8080".
Nginx runs as reverse proxy and tunnels 8080 to port 80 which is exposed through the dockerfile and binded using compose as above.

docker-compose yml directive uses links and networks to accomplish this environment.
links directive adds hostname "jenkins" to "web" container. And networks places both containers on same network using driver "bridge".

This is useful in linking and working with mutiple containers who want to communicate in same private network.

## How to run ?
First you should build and up the contianers.
### Build
```docker-compose build```
### Up
```docker-compose up```

Then an installation password will be generated on the console. You need to open localhost on your browser and paste this to jenkins form to start registration procedure.

After that you can start the same contianr using start argument.
### start
```docker-compose start```