# Conteneur Scrumblr 
FROM mhart/alpine-node:6
WORKDIR /usr/src/app
COPY .  /usr/src/app/
RUN npm install 
ENV SCRUMBLR_PORT="8080" \
 SCRUMBLR_BASEURL="/" \
 SCRUMBLR_REDIS_URL="redis" \
 SCRUMBLR_REDIS_PORT="6379"
ENTRYPOINT node server.js \
           --port ${SCRUMBLR_PORT} \
           --baseurl ${SCRUMBLR_BASEURL} \
           --redis ${SCRUMBLR_REDIS_URL}:${SCRUMBLR_REDIS_PORT}

