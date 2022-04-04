# execute the build command, ensure all snmp files include in the current path 
docker build -t static-page .

#search build image
docker images | grep static-page
copi ImageID and replace

# dockerps para validar el id y ponerlo en la imagen (only for publish dockerhub)
docker tag ff921a5c236e jhohandx/static-page:da39a3ee5e6b4b0d3255bfef95601890afd80710

# publicar la imagen a dockerhub (only for publish dockerhub)
sudo docker push jhohandx/static-page

# run web page exposing 8085 port mapping host network 
sudo docker run -it -p 127.0.0.1:8084:8084 --network host jhohandx/static-page:tag


