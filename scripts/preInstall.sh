#set env vars
set -o allexport; source .env; set +o allexport;

sed -i "s~\${DOMAIN}~${DOMAIN}~g" ./mailu.env

# apt install jq -y

# mkdir -p ./data
# chown -R 1000:1000 ./data
