docker compose -f docker-compose-server.yml build &&
echo "imagem buildada para execução" &&
docker stack rm postgres &&
echo "removido qualquer stack de postgres no ambiente docker" &&
docker stack deploy --compose-file=docker-compose-server.yml nginx &&
echo "realizado deploy da stack docker swarm"