FROM node:19.4.0
WORKDIR /app
COPY scripts/hello_world.js .
CMD node hello_world.js
