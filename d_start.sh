#/bin/bash

docker rm $(docker ps -aq) &&
docker image build -t patryk/nginx-website . && 
docker run -p 8080:80 patryk/nginx-website

echo "patryk/nginx-website localhost:8080 stopped"
