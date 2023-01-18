FROM ubuntu
WORKDIR /app
COPY scripts/hello_world.sh .
CMD bash hello_world.sh
