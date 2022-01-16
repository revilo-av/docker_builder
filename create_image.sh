

imageName="sonar"

docker_result=$(docker container ls -a | grep ${imageName}* |wc -l)
#docker_result=$(docker container ls -a | grep test:latest |wc -l)

echo $docker_result

if [ $docker_result -eq 1 ]
then

echo Contaienr gefunden mit dem namen .

container_id=$(docker container ls -aq --filter name=test*)

docker stop $container_id

echo Contaienr mit dem namen "container namen wurde beendet"


docker rm  $container_id

else

echo keine container gefunden

fi

#docker build -t test:latest .


#docker run -d --name test test:latest