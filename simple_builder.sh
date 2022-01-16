
imagename="imagename"


#docker build --tag $imagename ./builder
docker build --tag imagename ./builder


# Setup

#docker socket
socket="//var/run/docker.sock:"

docker run -d \
-v /var/run/docker.sock:/var/run/docker.sock  \
-v /home/revilo/.m2/:/root/.m2/  \
 --name imagename_container imagename tail -f /dev/null

#docker start -ai imagename_container