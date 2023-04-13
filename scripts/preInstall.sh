#set env vars
set -o allexport; source .env; set +o allexport;

SECRET_KEY=${SECRET_KEY:-`openssl rand -hex 16`}
API_TOKEN=${API_TOKEN:-`openssl rand -hex 32`}

sed -i "s~\SECRET_KEY=~SECRET_KEY=${SECRET_KEY}~g" ./mailu.env
sed -i "s~\API_TOKEN=~API_TOKEN=${API_TOKEN}~g" ./mailu.env
sed -i "s~\${DOMAIN}~${DOMAIN}~g" ./mailu.env

