

imageName="test:latest"

docker_result=$(docker container ls -a | grep ${imageName} |wc -l)
#docker_result=$(docker container ls -a | grep test:latest |wc -l)

echo "anzahl der vorhandenen Containern" $docker_result

if [ $docker_result -eq 1 ]
then

echo Contaienr gefunden mit dem namen .

container_id=$(docker container ls -aq --filter name=test*)


echo "container id die zu löschen ist $container_id"

docker stop $container_id

echo Contaienr mit dem namen "container namen wurde beendet"



docker rm  $container_id

docker_image_id=$(docker images 'test:latest' -a -q)

docker image rm -f $docker_image_id

else

echo keine container gefunden

fi

docker build -t test:latest .


docker run -v /var/run/docker.sock:/var/run/docker.sock -d --name test test:latest # -it sh