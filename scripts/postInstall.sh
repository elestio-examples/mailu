#set env vars
set -o allexport; source .env; set +o allexport;

#wait until the server is ready
echo "Waiting for software to be ready ..."
sleep 60s;

docker-compose -p mailu exec admin flask mailu admin admin ${DOMAIN} ${ADMIN_PASSWORD}