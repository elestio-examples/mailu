#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 120s;

docker-compose exec -T admin flask mailu admin admin ${DOMAIN} ${ADMIN_PASSWORD}