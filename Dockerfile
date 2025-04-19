FROM    node:18
RUN     mkdir /app
RUN     useradd -m roboshop
USER    roboshop
WORKDIR /app
COPY    node_modules/ /app/node_modules/
COPY    package.json server.js /app/
ENV     CATALOGUE_HOST="catalogue"
ENV     CATALOGUE_PORT="80"
ENV     REDIS_HOST="prod-elasticache-cluster.gsownz.0001.use1.cache.amazonaws.com"
CMD     ["node", "/app/server.js"]