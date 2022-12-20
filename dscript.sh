git clone https://github.com/SShaheeda/docker_repo.git
cd docker_repo
existing_docker_comainter=`docker ps -a |grep a1 |wc -l`
if [[ $existing_docker_comainter == 1 ]]; then 
 docker rm -f a1
fi
docker build -t besant .
docker run -itd -p 80:80 --name a1  besant
