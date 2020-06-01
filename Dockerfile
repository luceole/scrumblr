# Conteneur Scrumblr 
FROM mhart/alpine-node:8
WORKDIR /usr/src/app
COPY .  /usr/src/app/
RUN npm install 
ENTRYPOINT node server.js \
           --port ${SCRUMBLR_PORT:-8080} \
           --baseurl ${SCRUMBLR_BASEURL:-/} \
           --redis ${SCRUMBLR_REDIS_URL:-localhost}:${SCRUMBLR_REDIS_PORT:-6379}

